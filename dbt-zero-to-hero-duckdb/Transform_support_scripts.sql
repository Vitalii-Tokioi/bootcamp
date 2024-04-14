------------------------------------------
-- 11. Snapshots
------------------------------------------

select * from RAW.RAW_LISTINGS WHERE ID=3176;

UPDATE RAW.RAW_LISTINGS 
SET MINIMUM_NIGHTS=30,
    updated_at=GET_CURRENT_TIMESTAMP() 
WHERE ID=3176;

SELECT * FROM AIRBNB.DEV.SCD_RAW_LISTINGS WHERE ID=3176;


------------------------------------------
-- 
------------------------------------------
