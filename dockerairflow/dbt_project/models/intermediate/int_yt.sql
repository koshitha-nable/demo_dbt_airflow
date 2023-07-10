
WITH get_count AS (
SELECT 
    GENRE,    
    COUNT(A) as total
FROM {{{ref('stg_yt')}}}
GROUP BY GENRE 
)

SELECT * FROM  get_count