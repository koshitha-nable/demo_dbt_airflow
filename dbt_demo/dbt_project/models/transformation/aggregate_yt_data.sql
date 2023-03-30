{{config(materialized = 'table', table_name = 'aggregate_yt_data')}}

SELECT
    GENRE,
    COUNT(ID) as total
FROM yt_data
GROUP BY GENRE