use ARALUEN_DATAVAULT;
use schema LOAD_NDIS;
use warehouse ARALUEN;
CREATE OR REPLACE STAGE Business Unit CSM Snowflake FILE_FORMAT=LOAD_CSM.CSVFORMAT;
put file://D:\BI_and_Data_Analytics\Workflows\Source_Systems\Client Management\CSM\Business Unit CSM Snowflake\Business Unit CSM Snowflake.csv  @Business Unit CSM Snowflake;
COPY INTO "ARALUEN_DATAVAULT"."LOAD_CSM"."Business Unit CSM Snowflake" FROM @Business Unit CSM Snowflake file_format='LOAD_CSM.CSVFORMAT';
remove @STAGE_NDIS pattern='.*.csv.gz';
