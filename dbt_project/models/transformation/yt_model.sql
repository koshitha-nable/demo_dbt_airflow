{{ config( materialized='table' ) }}

SELECT 
    a as id,
    "Genre",    
    COUNT(A) as total
FROM {{source('src','yt')}}
Group BY "Genre", id