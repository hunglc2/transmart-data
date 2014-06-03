--
-- Type: TABLE; Owner: TM_LZ; Name: RWG_ANALYSIS
--
 CREATE TABLE "TM_LZ"."RWG_ANALYSIS" 
  (	"STUDY_ID" VARCHAR2(500 BYTE), 
"COHORTS" VARCHAR2(500 BYTE), 
"ANALYSIS_ID" VARCHAR2(500 BYTE), 
"PVALUE_CUTOFF" FLOAT(126), 
"FOLDCHANGE_CUTOFF" FLOAT(126), 
"LSMEAN_CUTOFF" FLOAT(126), 
"ANALYSIS_TYPE" VARCHAR2(500 BYTE), 
"DATA_TYPE" VARCHAR2(500 BYTE), 
"PLATFORM" VARCHAR2(500 BYTE), 
"LONG_DESC" VARCHAR2(500 BYTE), 
"SHORT_DESC" VARCHAR2(500 BYTE), 
"IMPORT_DATE" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
"BIO_ASSAY_ANALYSIS_ID" NUMBER
  ) TABLESPACE "TRANSMART" ;

