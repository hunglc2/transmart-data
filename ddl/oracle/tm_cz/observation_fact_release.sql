--
-- Type: TABLE; Owner: TM_CZ; Name: OBSERVATION_FACT_RELEASE
--
 CREATE TABLE "TM_CZ"."OBSERVATION_FACT_RELEASE" 
  (	"ENCOUNTER_NUM" NUMBER(38,0), 
"PATIENT_NUM" NUMBER(38,0), 
"CONCEPT_CD" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"PROVIDER_ID" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"START_DATE" DATE, 
"MODIFIER_CD" VARCHAR2(100 BYTE), 
"VALTYPE_CD" VARCHAR2(50 BYTE), 
"TVAL_CHAR" VARCHAR2(255 BYTE), 
"NVAL_NUM" NUMBER(18,5), 
"VALUEFLAG_CD" VARCHAR2(50 BYTE), 
"QUANTITY_NUM" NUMBER(18,5), 
"UNITS_CD" VARCHAR2(50 BYTE), 
"END_DATE" DATE, 
"LOCATION_CD" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"CONFIDENCE_NUM" NUMBER(18,0), 
"UPDATE_DATE" DATE, 
"DOWNLOAD_DATE" DATE, 
"IMPORT_DATE" DATE, 
"SOURCESYSTEM_CD" VARCHAR2(50 BYTE), 
"UPLOAD_ID" NUMBER(38,0), 
"OBSERVATION_BLOB" CLOB, 
"RELEASE_STUDY" VARCHAR2(100 BYTE)
  ) TABLESPACE "TRANSMART" 
LOB ("OBSERVATION_BLOB") STORE AS BASICFILE (
 TABLESPACE "TRANSMART" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
 NOCACHE LOGGING ) ;
