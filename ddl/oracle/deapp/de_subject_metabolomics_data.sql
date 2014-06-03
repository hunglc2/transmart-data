--
-- Type: TABLE; Owner: DEAPP; Name: DE_SUBJECT_METABOLOMICS_DATA
--
 CREATE TABLE "DEAPP"."DE_SUBJECT_METABOLOMICS_DATA" 
  (	"TRIAL_SOURCE" VARCHAR2(200 BYTE), 
"TRIAL_NAME" VARCHAR2(200 BYTE), 
"METABOLITE_ANNOTATION_ID" NUMBER(*,0), 
"ASSAY_ID" NUMBER(*,0), 
"SUBJECT_ID" VARCHAR2(100 BYTE), 
"PATIENT_ID" NUMBER(*,0), 
"RAW_INTENSITY" NUMBER, 
"LOG_INTENSITY" NUMBER, 
"ZSCORE" NUMBER NOT NULL ENABLE
  ) TABLESPACE "DEAPP" ;
--
-- Type: REF_CONSTRAINT; Owner: DEAPP; Name: DE_SJ_MET_DATA_MET_ANN_ID_FK
--
ALTER TABLE "DEAPP"."DE_SUBJECT_METABOLOMICS_DATA" ADD CONSTRAINT "DE_SJ_MET_DATA_MET_ANN_ID_FK" FOREIGN KEY ("METABOLITE_ANNOTATION_ID")
 REFERENCES "DEAPP"."DE_METABOLITE_ANNOTATION" ("ID") ENABLE;
