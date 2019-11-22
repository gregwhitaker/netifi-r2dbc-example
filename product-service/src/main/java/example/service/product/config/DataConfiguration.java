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
package example.service.product.config;

import example.service.product.config.settings.DatabaseSettings;
import io.r2dbc.pool.ConnectionPool;
import io.r2dbc.pool.ConnectionPoolConfiguration;
import io.r2dbc.postgresql.PostgresqlConnectionConfiguration;
import io.r2dbc.postgresql.PostgresqlConnectionFactory;
import io.r2dbc.spi.ConnectionFactory;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.time.Duration;

@Configuration
@EnableConfigurationProperties({
        DatabaseSettings.class
})
public class DataConfiguration {

    @Bean
    public ConnectionFactory connectionFactory(DatabaseSettings settings) {
        PostgresqlConnectionConfiguration config = PostgresqlConnectionConfiguration.builder()
                .host(settings.getHostname())
                .port(settings.getPort())
                .database(settings.getName())
                .username(settings.getUsername())
                .password(settings.getPassword())
                .applicationName("product-service")
                .build();

        return new PostgresqlConnectionFactory(config);
    }

    @Bean
    public ConnectionPool connectionPool(ConnectionFactory connectionFactory, DatabaseSettings settings) {
        ConnectionPoolConfiguration configuration = ConnectionPoolConfiguration.builder(connectionFactory)
                .maxIdleTime(Duration.ofMillis(1000))
                .maxSize(settings.getPoolSize())
                .build();

        return new ConnectionPool(configuration);
    }
}
