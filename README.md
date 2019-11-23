# netifi-r2dbc-example
An example of accessing a database using [R2DBC](https://r2dbc.io) in a [Netifi](https://www.netifi.com) RSocket application.

## Project Structure
This example contains the following projects / directories:

- [client](client) - Client application that calls the `product-service` to retrieve product information.
- [product-service-idl](product-service-idl) - Defines the API contract exposed by the `product-service`.
- [product-service](product-service) - Service that retrieves product information from the database.
- [docker](docker) - Docker Compose configuration for running the example. 

## Building the Example
Run the following command to build the example:

    ./gradlew clean buildImage

## Running the Example
Follow the steps below to run the example application:

1. Run the following commands to start a Netifi Broker, the product service and its database:

        cd docker
        docker-compose up
        
2. In a new terminal, run the following command to start a client instance and retrieve product information for product `3`:

        docker run -e SPRING_PROFILES_ACTIVE='localdocker' netifi-r2dbc-example/client 3
        
    If successful, you will see the following in the console:

        productId: 3
        shortName: "bwauemjynyssyovuggqyc"
        longName: "tsmgdvspbsitghphqacpzormjgeqrchepuusnuirbl"
        description: "xvwgacykdzjahkatkhobqpspvdafsnuiuiffdxblkixbkuxpgeujjviyncjmoccdyxnqkwbhqjqmtbyglqzgxciukuyowryvyruxgxgmbpyafcscxulexkmdwilpwf"
        active: true
        skus {
          sku: "737-674"
          size: "S"
          colorway: "Red"
          prices {
            list: 14.67
            msrp: 62.61
            sale: 65.96
          }
        }
        skus {
          sku: "302-014"
          active: true
          size: "L"
          colorway: "Blue"
          prices {
            list: 69.05
            msrp: 78.24
            sale: 34.65
          }
        }

## Bugs and Feedback
For bugs, questions, and discussions please use the [Github Issues](https://github.com/gregwhitaker/netifi-r2dbc-example/issues).

## License
Copyright 2019 Greg Whitaker

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.