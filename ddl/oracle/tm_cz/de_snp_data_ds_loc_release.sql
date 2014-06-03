--
-- Type: TABLE; Owner: TM_CZ; Name: DE_SNP_DATA_DS_LOC_RELEASE
--
 CREATE TABLE "TM_CZ"."DE_SNP_DATA_DS_LOC_RELEASE" 
  (	"SNP_DATA_DATASET_LOC_ID" NUMBER(22,0), 
"TRIAL_NAME" VARCHAR2(255 BYTE), 
"SNP_DATASET_ID" NUMBER(22,0), 
"LOCATION" NUMBER, 
"RELEASE_STUDY" VARCHAR2(200 BYTE)
  ) TABLESPACE "TRANSMART" ;
