# netifi-r2dbc-example
An example of accessing a database using [R2DBC](https://r2dbc.io) in a [Netifi](https://www.netifi.com) RSocket application.

## Building the Example
Run the following command to build the example:

    ./gradlew clean buildImage

## Running the Example
Follow the steps below to run the example application:

1. Start a Netifi Broker and the example services using the following commands:

        cd docker
        docker-compose up
        
2. In a web browser, access the store front at [http://localhost:8080/product/001](http://localhost:8080/product/001).

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