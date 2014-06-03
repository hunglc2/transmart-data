--
-- Type: TABLE; Owner: TM_WZ; Name: WT_SUBJECT_ACGH_REGION
--
 CREATE TABLE "TM_WZ"."WT_SUBJECT_ACGH_REGION" 
  (	"REGION_ID" NUMBER, 
"EXPR_ID" VARCHAR2(500 BYTE), 
"CHIP" FLOAT(126), 
"SEGMENTED" FLOAT(126), 
"FLAG" NUMBER(*,0), 
"PROBLOSS" FLOAT(126), 
"PROBNORM" FLOAT(126), 
"PROBGAIN" FLOAT(126), 
"PROBAMP" FLOAT(126), 
"NUM_CALLS" NUMBER, 
"PVALUE" FLOAT(126), 
"ASSAY_ID" NUMBER, 
"PATIENT_ID" NUMBER, 
"SAMPLE_ID" NUMBER, 
"SUBJECT_ID" VARCHAR2(100 BYTE), 
"TRIAL_NAME" VARCHAR2(200 BYTE), 
"TIMEPOINT" VARCHAR2(200 BYTE), 
"SAMPLE_TYPE" VARCHAR2(200 BYTE), 
"PLATFORM" VARCHAR2(200 BYTE), 
"TISSUE_TYPE" VARCHAR2(200 BYTE)
  ) TABLESPACE "TRANSMART" ;

