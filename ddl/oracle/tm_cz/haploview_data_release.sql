--
-- Type: TABLE; Owner: TM_CZ; Name: HAPLOVIEW_DATA_RELEASE
--
 CREATE TABLE "TM_CZ"."HAPLOVIEW_DATA_RELEASE" 
  (	"I2B2_ID" NUMBER(20,0), 
"JNJ_ID" VARCHAR2(30 BYTE), 
"FATHER_ID" NUMBER(5,0), 
"MOTHER_ID" NUMBER(5,0), 
"SEX" NUMBER(1,0), 
"AFFECTION_STATUS" NUMBER(1,0), 
"CHROMOSOME" VARCHAR2(10 BYTE), 
"GENE" VARCHAR2(50 BYTE), 
"RELEASE" NUMBER(4,0), 
"RELEASE_DATE" DATE, 
"TRIAL_NAME" VARCHAR2(50 BYTE), 
"SNP_DATA" CLOB, 
"RELEASE_STUDY" VARCHAR2(30 BYTE)
  ) TABLESPACE "TRANSMART" 
LOB ("SNP_DATA") STORE AS BASICFILE (
 TABLESPACE "TRANSMART" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
 NOCACHE LOGGING ) ;
