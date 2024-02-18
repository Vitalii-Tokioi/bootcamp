-- Create our three tables and import the data from S3

CREATE SCHEMA raw;


------------------------------------
--raw_listings
------------------------------------
CREATE OR REPLACE TABLE raw.raw_listings
                    (id integer,
                     listing_url varchar(1000),
                     "name" varchar(1000),
                     room_type varchar(1000),
                     minimum_nights integer,
                     host_id integer,
                     price string,
                     created_at datetime,
                     updated_at datetime);

insert into raw.raw_listings
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



------------------------------------
--raw_listings
------------------------------------
CREATE OR REPLACE TABLE raw.raw_reviews
                    (listing_id integer,
                     "date" datetime,
                     reviewer_name varchar(1000),
                     comments varchar(1000),
                     sentiment varchar(1000));


insert into raw.raw_reviews
select *
from read_csv_auto('s3://dbtlearn/reviews.csv',
    delim = ',',
    header = true,
    columns = { 
        'listing_id': 'integer', 
        'date': 'datetime', 
        'reviewer_name': 'varchar(1000)', 
        'comments': 'varchar(1000)', 
        'sentiment': 'varchar(1000)' 
        }
    );


------------------------------------
--raw_hosts
------------------------------------
CREATE OR REPLACE TABLE raw.raw_hosts
                    (id integer,
                     "name" varchar(1000),
                     is_superhost varchar(100),
                     created_at datetime,
                     updated_at datetime);

insert into raw.raw_hosts
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
);
