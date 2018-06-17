use ARALUEN_DATAVAULT;
use schema LOAD_NDIS;
use warehouse ARALUEN;
put file://C:\BI_and_Data_Analytics\Data\input_file.csv @STAGE_NDIS;
COPY INTO "ARALUEN_DATAVAULT"."LOAD_NDIS"."Participant" FROM @STAGE_NDIS file_format='LOAD_CSM.CSVFORMAT';
remove @STAGE_NDIS pattern='.*.csv.gz';
