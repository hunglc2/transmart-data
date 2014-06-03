--
-- Type: TABLE; Owner: TM_WZ; Name: WT_SUBJECT_RNA_MED
--
 CREATE TABLE "TM_WZ"."WT_SUBJECT_RNA_MED" 
  (	"PROBESET_ID" VARCHAR2(200 BYTE), 
"INTENSITY_VALUE" NUMBER, 
"LOG_INTENSITY" NUMBER, 
"ASSAY_ID" NUMBER(18,0), 
"PATIENT_ID" NUMBER(18,0), 
"SAMPLE_ID" NUMBER(18,0), 
"SUBJECT_ID" VARCHAR2(50 BYTE), 
"TRIAL_NAME" VARCHAR2(50 BYTE), 
"TIMEPOINT" VARCHAR2(100 BYTE), 
"PVALUE" FLOAT(126), 
"NUM_CALLS" NUMBER, 
"MEAN_INTENSITY" NUMBER, 
"STDDEV_INTENSITY" NUMBER, 
"MEDIAN_INTENSITY" NUMBER, 
"ZSCORE" NUMBER
  ) TABLESPACE "TRANSMART" ;
