--
-- Type: TABLE; Owner: SEARCHAPP; Name: SEARCH_SECURE_OBJECT
--
 CREATE TABLE "SEARCHAPP"."SEARCH_SECURE_OBJECT" 
  (	"SEARCH_SECURE_OBJECT_ID" NUMBER(18,0) NOT NULL ENABLE, 
"BIO_DATA_ID" NUMBER(18,0), 
"DISPLAY_NAME" NVARCHAR2(100), 
"DATA_TYPE" NVARCHAR2(200), 
"BIO_DATA_UNIQUE_ID" NVARCHAR2(200), 
 CONSTRAINT "SEARCH_SEC_OBJ_PK" PRIMARY KEY ("SEARCH_SECURE_OBJECT_ID")
 USING INDEX
 TABLESPACE "BIOMART"  ENABLE
  ) TABLESPACE "BIOMART" ;
--
-- Type: TRIGGER; Owner: SEARCHAPP; Name: TRG_SEARCH_SEC_OBJ_ID
--
  CREATE OR REPLACE TRIGGER "SEARCHAPP"."TRG_SEARCH_SEC_OBJ_ID" before insert on "SEARCH_SECURE_OBJECT"    for each row begin     if inserting then       if :NEW."SEARCH_SECURE_OBJECT_ID" is null then          select SEQ_SEARCH_DATA_ID.nextval into :NEW."SEARCH_SECURE_OBJECT_ID" from dual;       end if;    end if; end;










/
ALTER TRIGGER "SEARCHAPP"."TRG_SEARCH_SEC_OBJ_ID" ENABLE;
