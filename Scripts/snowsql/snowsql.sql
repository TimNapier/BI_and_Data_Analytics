use ARALUEN_DATAVAULT;
use schema LOAD_NDIS;
use warehouse ARALUEN;
CREATE OR REPLACE STAGE Funder FILE_FORMAT=LOAD_CSM.CSVFORMAT;
put file://C:\BI\\DATA\CSM\Funder.CSV  @Funder;
COPY INTO "ARALUEN_DATAVAULT"."LOAD_CSM"."Funder" FROM @Funder file_format='LOAD_CSM.CSVFORMAT';
remove @STAGE_NDIS pattern='.*.csv.gz';
