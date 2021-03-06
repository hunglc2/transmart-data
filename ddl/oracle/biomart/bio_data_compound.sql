--
-- Type: TABLE; Owner: BIOMART; Name: BIO_DATA_COMPOUND
--
 CREATE TABLE "BIOMART"."BIO_DATA_COMPOUND" 
  (	"BIO_DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"BIO_COMPOUND_ID" NUMBER(18,0) NOT NULL ENABLE, 
"ETL_SOURCE" VARCHAR2(100 BYTE), 
 CONSTRAINT "BIO_DATA_COMPOUND_PK" PRIMARY KEY ("BIO_DATA_ID", "BIO_COMPOUND_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "BIOMART" ;
--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_DF_CMP_FK
--
ALTER TABLE "BIOMART"."BIO_DATA_COMPOUND" ADD CONSTRAINT "BIO_DF_CMP_FK" FOREIGN KEY ("BIO_COMPOUND_ID")
 REFERENCES "BIOMART"."BIO_COMPOUND" ("BIO_COMPOUND_ID") ENABLE;
