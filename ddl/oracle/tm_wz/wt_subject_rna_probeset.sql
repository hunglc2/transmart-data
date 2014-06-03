--
-- Type: TABLE; Owner: TM_WZ; Name: WT_SUBJECT_RNA_PROBESET
--
 CREATE TABLE "TM_WZ"."WT_SUBJECT_RNA_PROBESET" 
  (	"PROBESET_ID" VARCHAR2(200 BYTE), 
"EXPR_ID" VARCHAR2(500 BYTE), 
"INTENSITY_VALUE" NUMBER, 
"NUM_CALLS" NUMBER, 
"PVALUE" NUMBER, 
"ASSAY_ID" NUMBER(18,0), 
"PATIENT_ID" NUMBER(22,0), 
"SAMPLE_ID" NUMBER(18,0), 
"SUBJECT_ID" VARCHAR2(100 BYTE), 
"TRIAL_NAME" VARCHAR2(200 BYTE), 
"TIMEPOINT" VARCHAR2(200 BYTE), 
"SAMPLE_TYPE" VARCHAR2(200 BYTE), 
"PLATFORM" VARCHAR2(200 BYTE), 
"TISSUE_TYPE" VARCHAR2(200 BYTE)
  ) TABLESPACE "TRANSMART" ;
