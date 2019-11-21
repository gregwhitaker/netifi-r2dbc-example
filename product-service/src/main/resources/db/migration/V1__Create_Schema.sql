--
-- Copyright 2019 Greg Whitaker
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--    http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

CREATE TABLE products (
    id              BIGSERIAL       PRIMARY KEY,
    active          BOOLEAN         DEFAULT TRUE NOT NULL,
    short_name      VARCHAR(50)     NOT NULL,
    long_name       VARCHAR(100)    NOT NULL,
    description     VARCHAR(255)    NOT NULL
);

CREATE TABLE skus (
    id          VARCHAR(50)     PRIMARY KEY,
    product_id  BIGINT          REFERENCES products(id) NOT NULL,
    active      BOOLEAN         DEFAULT TRUE NOT NULL,
    size        VARCHAR(50)     NOT NULL,
    colorway    VARCHAR(100)    NOT NULL,
    price_list  DOUBLE          NOT NULL,
    price_msrp  DOUBLE          NOT NULL,
    price_sale  DOUBLE          NOT NULL
);
