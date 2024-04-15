WITH fct_reviews as (
    select * from {{ ref('fct_reviews') }}
),
dim_listings_cleansed as (
    select * from {{ ref('dim_listings_cleansed') }}
)
select *
from fct_reviews fct
	JOIN dim_listings_cleansed lc ON fct.listing_id = lc.listing_id  
WHERE fct.review_date < lc.created_at 
LIMIT 10
