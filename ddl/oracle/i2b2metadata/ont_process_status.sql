--
-- Type: TABLE; Owner: I2B2METADATA; Name: ONT_PROCESS_STATUS
--
 CREATE TABLE "I2B2METADATA"."ONT_PROCESS_STATUS" 
  (	"PROCESS_ID" NUMBER(5,0) NOT NULL ENABLE,
"PROCESS_TYPE_CD" VARCHAR2(50 BYTE), 
"START_DATE" DATE, 
"END_DATE" DATE, 
"PROCESS_STEP_CD" VARCHAR2(50 BYTE), 
"PROCESS_STATUS_CD" VARCHAR2(50 BYTE), 
"CRC_UPLOAD_ID" VARCHAR2(5 BYTE), 
"STATUS_CD" VARCHAR2(50 BYTE), 
"MESSAGE" VARCHAR2(2000 BYTE), 
"ENTRY_DATE" DATE, 
"CHANGE_DATE" DATE, 
"CHANGEDBY_CHAR" CHAR(50 BYTE), 
 PRIMARY KEY ("PROCESS_ID")
 USING INDEX
 TABLESPACE "I2B2_DATA"  ENABLE
  ) TABLESPACE "I2B2_DATA" ;
--
-- Type: TRIGGER; Owner: I2B2METADATA; Name: TRG_ONT_PS_PROCESS_ID
--
  CREATE OR REPLACE TRIGGER "I2B2METADATA"."TRG_ONT_PS_PROCESS_ID" 
   before insert on "I2B2METADATA"."ONT_PROCESS_STATUS" 
   for each row 
begin  
   if inserting then 
      if :NEW."PROCESS_ID" is null then 
         select ONT_SQ_PS_PRID.nextval into :NEW."PROCESS_ID" from dual; 
      end if; 
   end if; 
end;
/
ALTER TRIGGER "I2B2METADATA"."TRG_ONT_PS_PROCESS_ID" ENABLE;
