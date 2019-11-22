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

import example.service.product.protobuf.ProductInfoResponse;
import io.r2dbc.client.R2dbc;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import reactor.core.publisher.Mono;

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
            final String sql = "SELECT * FROM products WHERE id = $1";

            return handle.select(sql, productId)
                    .mapRow((row, rowMetadata) -> ProductInfoResponse.newBuilder()
                            .setProductId(row.get("id", Long.class))
                            .setActive(row.get("active", Boolean.class))
                            .setShortName(row.get("short_name", String.class))
                            .setLongName(row.get("long_name", String.class))
                            .setDescription(row.get("description", String.class))
                            .build())
                    .next();
        })
        .next());
    }
}
