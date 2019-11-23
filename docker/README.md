# docker
Docker Compose script that makes it easy to run the example application.

## Running the Example
In the current directory, run the following command to start the example:

    docker-compose up
    
This Docker Compose script will create the following containers:

- `broker1` - An instance of the Netifi Broker.
- `product-service` - The example product information service.
- `product-db` - The product information database. 
    
## Stopping the Example
In the current directory, run the following command to stop the example:

    docker-compose kill
    
## Removing the Example Containers
In the current directory, run the following command to remove the Docker containers created by this example:

    docker-compose rm 