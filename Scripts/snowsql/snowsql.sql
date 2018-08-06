use ARALUEN_DATAVAULT;
use schema LOAD_NDIS;
use warehouse ARALUEN;
CREATE OR REPLACE STAGE Business_Unit_CSM_Snowflake FILE_FORMAT=LOAD_CSM.CSVFORMAT;
put file://C:\BI_and_Data_Analytics\Workflows\Source_Systems\Client_Management\CSM\Business_Unit_CSM_Snowflake\Business_Unit_CSM_Snowflake.csv  @Business_Unit_CSM_Snowflake;
COPY INTO "ARALUEN_DATAVAULT"."LOAD_CSM"."Business_Unit_CSM_Snowflake" FROM @Business_Unit_CSM_Snowflake file_format='LOAD_CSM.CSVFORMAT';
remove @STAGE_NDIS pattern='.*.csv.gz';
