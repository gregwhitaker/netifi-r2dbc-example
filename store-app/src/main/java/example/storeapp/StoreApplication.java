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
package example.storeapp;

import com.netifi.spring.core.annotation.Group;
import example.service.product.protobuf.ProductInfoRequest;
import example.service.product.protobuf.ProductInfoResponse;
import example.service.product.protobuf.ProductServiceClient;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class StoreApplication {

    public static void main(String... args) {
        SpringApplication.run(StoreApplication.class, args);
    }

    @Component
    public class Runner implements CommandLineRunner {

        @Group("example.service.product")
        private ProductServiceClient productClient;

        @Override
        public void run(String... args) throws Exception {
            ProductInfoRequest request = ProductInfoRequest.newBuilder()
                    .setProductId(1_000)
                    .build();

            ProductInfoResponse response = productClient.getProduct(request)
                    .block();

            System.out.println(response);
        }
    }
}
