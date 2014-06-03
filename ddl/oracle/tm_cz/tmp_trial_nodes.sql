--
-- Type: TABLE; Owner: TM_CZ; Name: TMP_TRIAL_NODES
--
 CREATE TABLE "TM_CZ"."TMP_TRIAL_NODES" 
  (	"LEAF_NODE" VARCHAR2(4000 BYTE), 
"CATEGORY_CD" VARCHAR2(200 BYTE), 
"VISIT_NAME" VARCHAR2(100 BYTE), 
"SAMPLE_TYPE" VARCHAR2(100 BYTE), 
"PERIOD" VARCHAR2(100 BYTE), 
"DATA_LABEL" VARCHAR2(500 BYTE), 
"NODE_NAME" VARCHAR2(500 BYTE), 
"DATA_VALUE" VARCHAR2(500 BYTE)
  ) TABLESPACE "TRANSMART" ;
