drop table orders;


CREATE TABLE orders (
    order_id BIGINT,
    customer_id BIGINT,
    order_amount DECIMAL(10, 2),
    order_ts TIMESTAMP
    )
PARTITIONED BY (hour(order_ts))
location 's3://rusichv-dev/iceberg_dev_warehouse/orders'
tblproperties(
    'table_type' = 'ICEBERG',
    'format' ='PARQUET'
)
;

insert into orders
values (18, 10018, 123.25, TIMESTAMP '2024-04-18 01:00:00');
insert into orders
values (18, 10018, 123.25, TIMESTAMP '2024-04-18 01:15:00');
insert into orders
values (19, 10018, 123.25, TIMESTAMP '2024-04-19 05:00:00');


select * from orders;

SELECT * FROM "orders$history";

select * from orders FOR VERSION AS OF 3594568319242476797;
SELECT * FROM orders FOR TIMESTAMP AS OF TIMESTAMP '2025-01-18 16:04:13.011 UTC';



