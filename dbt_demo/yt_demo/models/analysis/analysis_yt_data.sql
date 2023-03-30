
{{ config( materialized='table', table_name='analysis_yt_data' ) }}

SELECT
    GENRE,
    COUNT(A) as total,
    MAX(A) as maximum,
    MIN(A) as minimum, 
    AVG(AD) as average,
    STDDEV(A) as standardDeviation
    
FROM yt_data
GROUP BY GENRE


