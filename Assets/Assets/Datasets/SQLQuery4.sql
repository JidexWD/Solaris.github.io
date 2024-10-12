/*  remove uncessary column
	extract youtube channel names from the first column
	rename the names of columns with alias
	*/
--SELECT 
--	NOMBRE,
--	total_subscribers,
--	total_views,
--	total_videos
--FROM top_uk_youtubers_2024;


--- CHARINDEX
--SELECT CHARINDEX('@', NOMBRE),
--	NOMBRE 
--FROM top_uk_youtubers_2024;

--- SUBSTRING 

CREATE VIEW view_uk_youtuber_2024 AS 
SELECT 
	CAST(SUBSTRING(NOMBRE,1, CHARINDEX('@', NOMBRE)-1) AS VARCHAR(100)) AS channel_name,
	total_subscribers,
	total_views,
	total_videos
FROM top_uk_youtubers_2024;

