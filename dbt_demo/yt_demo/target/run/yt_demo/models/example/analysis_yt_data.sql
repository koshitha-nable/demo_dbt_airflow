
  
    

        create or replace transient table DEMO.DEMO_03142023.analysis_yt_data  as
        (
SELECT CHANNEL_NAME, SUBSCRIBER_COUNT
FROM yt_data
ORDER BY SUBSCRIBER_COUNT
LIMIT 10
        );
      
  