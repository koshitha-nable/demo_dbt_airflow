
WITH summary AS (
SELECT
    GENRE,
    COUNT(A) as total,
    MAX(A) as maximum,
    MIN(A) as minimum, 
    AVG(A) as average
    
FROM {{ref('int_yt')}}
GROUP BY GENRE
)

SELECT * FROM summary



