--
-- Type: TABLE; Owner: DEAPP; Name: DE_SUBJECT_MICROARRAY_MED
--
 CREATE TABLE "DEAPP"."DE_SUBJECT_MICROARRAY_MED" 
  (	"PROBESET" VARCHAR2(50 BYTE), 
"RAW_INTENSITY" NUMBER, 
"LOG_INTENSITY" NUMBER, 
"GENE_SYMBOL" VARCHAR2(50 BYTE), 
"ASSAY_ID" NUMBER(18,0), 
"PATIENT_ID" NUMBER(18,0), 
"SUBJECT_ID" VARCHAR2(20 BYTE), 
"TRIAL_NAME" VARCHAR2(15 BYTE), 
"TIMEPOINT" VARCHAR2(30 BYTE), 
"PVALUE" FLOAT(126), 
"REFSEQ" VARCHAR2(50 BYTE), 
"MEAN_INTENSITY" NUMBER, 
"STDDEV_INTENSITY" NUMBER, 
"MEDIAN_INTENSITY" NUMBER, 
"ZSCORE" NUMBER(18,4)
  ) TABLESPACE "DEAPP" ;
