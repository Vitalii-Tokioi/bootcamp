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


select * from dev.src_listings;
select * from dev.src_reviews;

