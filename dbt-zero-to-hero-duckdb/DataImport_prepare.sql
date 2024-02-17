show tables;


INSTALL httpfs;
load httpfs;
set s3_region = 'eu-north-1';

describe raw_listings;

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

-- Create our three tables and import the data from S3
CREATE OR REPLACE TABLE raw_listings
                    (id integer,
                     listing_url varchar(1000),
                     "name" varchar(1000),
                     room_type varchar(1000),
                     minimum_nights integer,
                     host_id integer,
                     price string,
                     created_at datetime,
                     updated_at datetime);

insert into raw_listings
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
  );


select * from raw_listings limit 1;
select count(*) from raw_listings;



--------------------------------------------------------------------
CREATE OR REPLACE TABLE raw_reviews
                    (listing_id integer,
                     "date" datetime,
                     reviewer_name varchar(1000),
                     comments varchar(1000),
                     sentiment varchar(1000));

select *
from read_csv_auto('s3://dbtlearn/reviews.csv',
    delim = ',',
    header = true,
    columns = { 
        'listing_id': 'integer', 
        'date': 'datetime', 
        'reviewer_name': 'varchar(1000)', 
        'comments': 'varchar(1000)', 
        'sentiment': 'varchar(1000)' })
limit 1;


select count(*) from raw_reviews;

--------------------------------------------------------------------

CREATE OR REPLACE TABLE raw_hosts
                    (id integer,
                     "name" varchar(1000),
                     is_superhost varchar(100),
                     created_at datetime,
                     updated_at datetime);

select *
from read_csv_auto('s3://dbtlearn/hosts.csv',
    delim = ',',
    header = true,
    columns = { 'id': 'integer',
                'name': 'varchar(1000)',
                'is_superhost': 'varchar(1000)',
                'created_at': 'datetime',
                'updated_at': 'datetime'
    }
)
limit 1;


select count(*) from raw_hosts;

