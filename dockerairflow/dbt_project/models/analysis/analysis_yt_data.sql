{{ config( materialized='table' ) }}

SELECT
    "Genre",
    COUNT(id) as total,
    MAX(id) as maximum,
    MIN(id) as minimum, 
    AVG(id) as average
    
FROM {{ref('yt_model')}}
GROUP BY "Genre"
