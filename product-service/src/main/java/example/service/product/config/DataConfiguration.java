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
import io.r2dbc.client.R2dbc;
import io.r2dbc.spi.ConnectionFactories;
import io.r2dbc.spi.ConnectionFactory;
import io.r2dbc.spi.ConnectionFactoryOptions;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.util.StringUtils;

import javax.sql.DataSource;

import static io.r2dbc.spi.ConnectionFactoryOptions.DATABASE;
import static io.r2dbc.spi.ConnectionFactoryOptions.DRIVER;
import static io.r2dbc.spi.ConnectionFactoryOptions.HOST;
import static io.r2dbc.spi.ConnectionFactoryOptions.PASSWORD;
import static io.r2dbc.spi.ConnectionFactoryOptions.PORT;
import static io.r2dbc.spi.ConnectionFactoryOptions.PROTOCOL;
import static io.r2dbc.spi.ConnectionFactoryOptions.USER;

@Configuration
@EnableConfigurationProperties({
        DatabaseSettings.class
})
public class DataConfiguration {

    // This is needed because R2DBC doesn't use a standard DataSource
    // for connection information which causes Flyway migrations to not
    // happen automatically on startup as it is depending on auto-detecting
    // a DataSource.
    @Bean
    public DataSource dataSource(DatabaseSettings settings) {
        DataSourceBuilder dsBuilder = DataSourceBuilder.create();

        dsBuilder.url(String.format("jdbc:postgresql://%s:%s/%s",
                settings.getHostname(),
                settings.getPort(),
                settings.getName()));

        if (!StringUtils.isEmpty(settings.getUsername())) {
            dsBuilder.username(settings.getUsername());
        }

        if (!StringUtils.isEmpty(settings.getPassword())) {
            dsBuilder.password(settings.getPassword());
        }

        return dsBuilder.build();
    }

    @Bean
    public ConnectionFactory connectionFactory(DatabaseSettings settings) {
        final ConnectionFactoryOptions.Builder cfob = ConnectionFactoryOptions.builder();

        cfob.option(DRIVER, "pool");
        cfob.option(PROTOCOL, "postgresql");
        cfob.option(HOST, settings.getHostname());
        cfob.option(PORT, settings.getPort());
        cfob.option(DATABASE, settings.getName());

        if (!StringUtils.isEmpty(settings.getUsername())) {
            cfob.option(USER, settings.getUsername());
        }

        if (!StringUtils.isEmpty(settings.getPassword())) {
            cfob.option(PASSWORD, settings.getPassword());
        }

        return ConnectionFactories.get(cfob.build());
    }

    @Bean
    public R2dbc r2dbc(ConnectionFactory connectionFactory) {
        return new R2dbc(connectionFactory);
    }
}
