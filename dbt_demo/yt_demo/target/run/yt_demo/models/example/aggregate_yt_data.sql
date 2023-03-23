
  
    

        create or replace transient table DEMO.DEMO_03142023.aggregate_yt_data  as
        (

SELECT
    GENRE,
    COUNT(ID) as total
FROM yt_data
GROUP BY GENRE
        );
      
  