--
-- Type: TABLE; Owner: TM_CZ; Name: DE_SUBJ_SAMPLE_MAP_RELEASE
--
 CREATE TABLE "TM_CZ"."DE_SUBJ_SAMPLE_MAP_RELEASE" 
  (	"PATIENT_ID" NUMBER(18,0), 
"SITE_ID" NVARCHAR2(100), 
"SUBJECT_ID" NVARCHAR2(100), 
"SUBJECT_TYPE" NVARCHAR2(100), 
"CONCEPT_CODE" VARCHAR2(1000 CHAR), 
"ASSAY_ID" NUMBER(18,0), 
"PATIENT_UID" VARCHAR2(50 BYTE), 
"SAMPLE_TYPE" VARCHAR2(100 BYTE), 
"ASSAY_UID" NVARCHAR2(100), 
"TRIAL_NAME" VARCHAR2(30 BYTE), 
"TIMEPOINT" VARCHAR2(100 BYTE), 
"TIMEPOINT_CD" VARCHAR2(50 BYTE), 
"SAMPLE_TYPE_CD" VARCHAR2(50 BYTE), 
"TISSUE_TYPE_CD" VARCHAR2(50 BYTE), 
"PLATFORM" VARCHAR2(50 BYTE), 
"PLATFORM_CD" VARCHAR2(50 BYTE), 
"TISSUE_TYPE" VARCHAR2(100 BYTE), 
"DATA_UID" VARCHAR2(100 BYTE), 
"GPL_ID" VARCHAR2(20 BYTE), 
"RBM_PANEL" VARCHAR2(50 BYTE), 
"SAMPLE_ID" NUMBER(18,0),
"SAMPLE_CD" VARCHAR2(200 BYTE),
"CATEGORY_CD" VARCHAR2(1000 BYTE),
"RELEASE_STUDY" VARCHAR2(30 BYTE)
  ) TABLESPACE "TRANSMART" ;
