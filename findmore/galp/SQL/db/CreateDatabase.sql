USE refinery;

CREATE TABLE new_york_products(
    timestamp TIMESTAMP,
    product_id VARCHAR(200),
    product_name VARCHAR(200),
    product_price DOUBLE,
    cliente_id LONG,
)

INSERT INTO new_york_products('2020-01-01 00:00:01' , 'product_id_0', 'product_name_0', 42.42, 12344321)
INSERT INTO new_york_products('2020-01-01 00:00:01' , 'product_id_1', 'product_name_1', 1234.33, 12344321)
INSERT INTO new_york_products('2020-01-01 00:00:01' , 'product_id_2', 'product_name_2', 999.99, 12344321)

CREATE TABLE sensors (
    name VARCHAR(200), -- Sensor name
    ts TIMESTAMP,-- Sensor reading timestamp
    value DOUBLE,-- Sensor reading value
    status INT,-- Sensor status
    year INT, -- Sensor reading year
    month INT, -- Sensor reading month
    day INT, -- Sensor reading day
)

