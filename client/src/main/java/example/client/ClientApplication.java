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
package example.client;

import com.netifi.spring.core.annotation.Group;
import example.service.product.protobuf.ProductInfoRequest;
import example.service.product.protobuf.ProductInfoResponse;
import example.service.product.protobuf.ProductServiceClient;
import io.rsocket.exceptions.ApplicationErrorException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class ClientApplication {
    private static final Logger LOG = LoggerFactory.getLogger(ClientApplication.class);

    public static void main(String... args) {
        SpringApplication.run(ClientApplication.class, args);
    }

    /**
     * Runs the client application.
     */
    @Component
    public class Runner implements CommandLineRunner {

        @Group("example.service.product")
        private ProductServiceClient productClient;

        @Override
        public void run(String... args) throws Exception {
            // Build request to send to Product Service
            ProductInfoRequest request = ProductInfoRequest.newBuilder()
                    .setProductId(getProductIdFromArgs(args))
                    .build();

            try {
                LOG.info("Retrieving Product: {}", request.getProductId());

                // Send the request to the product service and block until we get a response
                ProductInfoResponse response = productClient.getProduct(request).block();

                LOG.info("Response: \n" + response.toString());
            } catch (ApplicationErrorException e) {
                // Error handling in RSocket is currently broken as you are not able
                // to set an application specific error code on ApplicationErrorException
                LOG.error(e.getMessage(), e);
            }

            System.exit(1);
        }

        /**
         * Gets the product id to retrieve from the command line arguments.
         *
         * @param args command line arguments
         * @return product identifier
         */
        private int getProductIdFromArgs(String... args) {
            if (args.length != 1) {
                throw new IllegalArgumentException("Invalid number of arguments");
            }

            try {
                return Integer.parseInt(args[0]);
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException("Product id must be an integer");
            }
        }
    }
}
