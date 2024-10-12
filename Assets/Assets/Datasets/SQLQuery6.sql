/*
	#data quality test 
	1. data needs to be 100 record of youtube channels (row count test )
	2. we need to have channel name, total subscribes, total views, total videos in the coolumn( column count test)
	3. data type test (var,int(whole nnumbers))
	4. each record must be  unique  in the data set 
*/


-- row count check 
SELECT 
	COUNT(*) AS no_rows
FROM view_uk_youtuber_2024;


----COLUMN COUNT CHECK
SELECT
	COUNT(*) AS column_count 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'view_uk_youtuber_2024';

--- DATA TYPE CHECK

SELECT
	COLUMN_NAME,
	DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'view_uk_youtuber_2024';

-- DUPLICATE  
SELECT 
	channel_name,
	COUNT(*) AS duplicate_count
FROM view_uk_youtuber_2024
GROUP BY
	channel_name
HAVING COUNT(*) > 1;

