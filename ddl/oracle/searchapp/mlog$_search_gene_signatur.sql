--
-- Type: TABLE; Owner: SEARCHAPP; Name: MLOG$_SEARCH_GENE_SIGNATUR
--
 CREATE TABLE "SEARCHAPP"."MLOG$_SEARCH_GENE_SIGNATUR" 
  (	"DELETED_FLAG" NUMBER(1,0), 
"PUBLIC_FLAG" NUMBER(1,0), 
"M_ROW$$" VARCHAR2(255 BYTE), 
"SEQUENCE$$" NUMBER, 
"SNAPTIME$$" DATE, 
"DMLTYPE$$" VARCHAR2(1 BYTE), 
"OLD_NEW$$" VARCHAR2(1 BYTE), 
"CHANGE_VECTOR$$" RAW(255)
  ) TABLESPACE "BIOMART" ;
