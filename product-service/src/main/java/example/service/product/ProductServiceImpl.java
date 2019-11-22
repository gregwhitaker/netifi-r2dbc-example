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
package example.service.product;

import example.service.product.data.ProductDao;
import example.service.product.protobuf.ProductInfoRequest;
import example.service.product.protobuf.ProductInfoResponse;
import example.service.product.protobuf.ProductService;
import io.netty.buffer.ByteBuf;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import reactor.core.publisher.Mono;

/**
 * Service that returns product information.
 */
@Component
public class ProductServiceImpl implements ProductService {
    private static final Logger LOG = LoggerFactory.getLogger(ProductServiceImpl.class);

    @Autowired
    private ProductDao productDao;

    @Override
    public Mono<ProductInfoResponse> getProduct(ProductInfoRequest message, ByteBuf metadata) {
        LOG.info("Received getProduct request for: " + message.getProductId());

        return productDao.getProduct(message.getProductId())
                .switchIfEmpty(Mono.error(new ProductNotFoundException(message.getProductId())));
    }
}
