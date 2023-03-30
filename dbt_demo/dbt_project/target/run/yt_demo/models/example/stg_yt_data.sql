
  
    

        create or replace transient table DEMO.DEMO_03142023_DEMO_03142023.stage_yt  as
        (

-- Load the data into the staged table
SELECT *
FROM DEMO.DEMO_03142023.yt_data
;
        );
      
  