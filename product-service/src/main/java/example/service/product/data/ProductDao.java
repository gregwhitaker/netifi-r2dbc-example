/**
 * Copyright 2019 Greg Whitaker
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package example.service.product.data;

import example.service.product.protobuf.PriceInfo;
import example.service.product.protobuf.ProductInfoResponse;
import example.service.product.protobuf.SkuInfo;
import io.r2dbc.client.R2dbc;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import reactor.core.publisher.Mono;

import java.math.BigDecimal;
import java.util.List;

@Component
public class ProductDao {
    private static final Logger LOG = LoggerFactory.getLogger(ProductDao.class);

    @Autowired
    private R2dbc r2dbc;

    /**
     * Retrieves product information for a single product id.
     *
     * @param productId product identifier
     * @return
     */
    public Mono<ProductInfoResponse> getProduct(long productId) {
        return Mono.defer(() -> r2dbc.withHandle(handle -> {
            final String productSql = "SELECT * FROM products WHERE id = $1";
            final String skuSql = "SELECT * FROM skus WHERE product_id = $1";

            // Get product data
            Mono<ProductInfoResponse.Builder> product = handle.select(productSql, productId)
                    .mapRow((row, rowMetadata) -> ProductInfoResponse.newBuilder()
                            .setProductId(row.get("id", Long.class))
                            .setActive(row.get("active", Boolean.class))
                            .setShortName(row.get("short_name", String.class))
                            .setLongName(row.get("long_name", String.class))
                            .setDescription(row.get("description", String.class)))
                    .next();

            // Get SKU data
            Mono<List<SkuInfo.Builder>> skus = handle.select(skuSql, productId)
                    .mapRow((row, rowMetadata) -> {
                        PriceInfo priceInfo = PriceInfo.newBuilder()
                                .setList(row.get("price_list", BigDecimal.class).doubleValue())
                                .setMsrp(row.get("price_msrp", BigDecimal.class).doubleValue())
                                .setSale(row.get("price_sale", BigDecimal.class).doubleValue())
                                .build();

                        return SkuInfo.newBuilder()
                                .setSku(row.get("id", String.class))
                                .setActive(row.get("active", Boolean.class))
                                .setSize(row.get("size", String.class))
                                .setColorway(row.get("colorway", String.class))
                                .setPrices(priceInfo);
                    })
                    .collectList();

            // Combine product data with SKU data
            return product.zipWith(skus)
                    .map(objects -> {
                        ProductInfoResponse.Builder pBuilder = objects.getT1();
                        List<SkuInfo.Builder> sBuilders = objects.getT2();

                        sBuilders.forEach(pBuilder::addSkus);

                        return pBuilder.build();
                    });
        })
        .next()); // withHandle is a Flux, need to convert to Mono
    }
}

