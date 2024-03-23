show tables;


INSTALL httpfs;
load httpfs;
set s3_region = 'eu-north-1';

describe raw.raw_listings;

select count(*) from read_csv_auto('s3://dbtlear limit 1n/listings.csv');

.mode line
select * 
from read_csv_auto('s3://dbtlearn/listings.csv',
    delim = ',',
    header = true,
    columns = {
        'id': 'integer',
        'listing_url': 'varchar(1000)',
        'name': 'varchar(1000)',
        'room_type': 'varchar(1000)',
        'minimum_nights': 'integer',
        'host_id': 'integer',
        'price': 'string',
        'created_at': 'datetime',
        'updated_at': 'datetime'
    }
  ) limit 1;

.mode duckbox





select * from information_schema.tables;


select * from dev.fct_reviews limit 10;
select * from dev.src_reviews;

.mode line
SELECT * FROM duckdb_tables where table_name = 'raw_reviews' limit 1;
.mode duckbox


---------------------------------
drop table dev.fct_reviews;
select * from dev.fct_reviews;

SELECT * FROM "AIRBNB"."DEV"."FCT_REVIEWS" WHERE listing_id=3176;

INSERT INTO "AIRBNB"."RAW"."RAW_REVIEWS"
VALUES (3176, CURRENT_TIMESTAMP, 'vt_test', 'excellent stay!', 'positive');

SELECT * FROM "AIRBNB"."RAW"."RAW_REVIEWS" WHERE listing_id=3176 order by 2 desc;  -- and reviewer_name = 'vt_test';

SELECT * FROM "AIRBNB"."DEV"."FCT_REVIEWS" WHERE listing_id=3176 order by 2 desc;  -- and reviewer_name = 'vt_test';



