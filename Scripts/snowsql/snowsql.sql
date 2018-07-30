use ARALUEN_DATAVAULT;
use schema LOAD_NDIS;
use warehouse ARALUEN;
CREATE OR REPLACE STAGE accounts FILE_FORMAT=LOAD_CSM.CSVFORMAT;
put file://D:\BI\DATA\Snowflake_Upload\accounts.csv  @accounts;
COPY INTO "ARALUEN_DATAVAULT"."LOAD_MYOB"."accounts" FROM @accounts file_format='LOAD_CSM.CSVFORMAT';
remove @STAGE_NDIS pattern='.*.csv.gz';
