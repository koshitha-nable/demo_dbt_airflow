

SELECT
    GENRE,
    COUNT(ID) as total
FROM yt_data
GROUP BY GENRE