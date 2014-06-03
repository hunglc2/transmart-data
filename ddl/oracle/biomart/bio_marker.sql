--
-- Type: TABLE; Owner: BIOMART; Name: BIO_MARKER
--
 CREATE TABLE "BIOMART"."BIO_MARKER" 
  (	"BIO_MARKER_ID" NUMBER(18,0) NOT NULL ENABLE, 
"BIO_MARKER_NAME" NVARCHAR2(200), 
"BIO_MARKER_DESCRIPTION" NVARCHAR2(1000), 
"ORGANISM" NVARCHAR2(200), 
"PRIMARY_SOURCE_CODE" NVARCHAR2(200), 
"PRIMARY_EXTERNAL_ID" NVARCHAR2(200), 
"BIO_MARKER_TYPE" NVARCHAR2(200) NOT NULL ENABLE, 
 CONSTRAINT "BIOMARKER_PK" PRIMARY KEY ("BIO_MARKER_ID"),
 CONSTRAINT "BIOMARKER_UK" UNIQUE ("ORGANISM","PRIMARY_EXTERNAL_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) TABLESPACE "BIOMART" ;
--
-- Type: INDEX; Owner: BIOMART; Name: BIO_MKR_TYPE_IDX
--
CREATE INDEX "BIOMART"."BIO_MKR_TYPE_IDX" ON "BIOMART"."BIO_MARKER" ("BIO_MARKER_TYPE")
TABLESPACE "INDX" 
PARALLEL 4 ;
--
-- Type: INDEX; Owner: BIOMART; Name: BIO_MKR_EXT_ID
--
CREATE INDEX "BIOMART"."BIO_MKR_EXT_ID" ON "BIOMART"."BIO_MARKER" ("PRIMARY_EXTERNAL_ID")
TABLESPACE "INDX" 
PARALLEL 4 ;
--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_MARKER_ID
--
  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_BIO_MARKER_ID" before insert on "BIO_MARKER"    for each row begin     if inserting then       if :NEW."BIO_MARKER_ID" is null then          select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_MARKER_ID" from dual;       end if;    end if; end;













/
ALTER TRIGGER "BIOMART"."TRG_BIO_MARKER_ID" ENABLE;
