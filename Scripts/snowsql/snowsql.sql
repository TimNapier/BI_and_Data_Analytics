use ARALUEN_DATAVAULT;
use schema LOAD_NDIS;
use warehouse ARALUEN;
<<<<<<< HEAD
put file://D:\BI\DATA\input_file.csv @STAGE_NDIS;
COPY INTO ARALUEN_DATAVAULT.DATAVAULT."ATTRIBUTED_PROFIT_AND_LOSS" FROM @STAGE_NDIS file_format='LOAD_CSM.CSVFORMAT';
=======
CREATE OR REPLACE STAGE Business_Unit_CSM_Snowflake FILE_FORMAT=LOAD_CSM.CSVFORMAT;
put file://C:\BI_and_Data_Analytics\Workflows\Source_Systems\Client_Management\CSM\Business_Unit_CSM_Snowflake\Business_Unit_CSM_Snowflake.csv  @Business_Unit_CSM_Snowflake;
COPY INTO "ARALUEN_DATAVAULT"."LOAD_CSM"."Business_Unit_CSM_Snowflake" FROM @Business_Unit_CSM_Snowflake file_format='LOAD_CSM.CSVFORMAT';
>>>>>>> 6d694566dd6582b693b71308b5b8acde8bee19be
remove @STAGE_NDIS pattern='.*.csv.gz';
