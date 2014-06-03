--
-- Type: TABLE; Owner: TM_CZ; Name: CZ_JOB_AUDIT
--
 CREATE TABLE "TM_CZ"."CZ_JOB_AUDIT" 
  (	"SEQ_ID" NUMBER(18,0) NOT NULL ENABLE, 
"JOB_ID" NUMBER(18,0) NOT NULL ENABLE, 
"DATABASE_NAME" NVARCHAR2(50), 
"PROCEDURE_NAME" NVARCHAR2(100), 
"STEP_DESC" NVARCHAR2(1000), 
"STEP_STATUS" NVARCHAR2(50), 
"RECORDS_MANIPULATED" NUMBER(18,0), 
"STEP_NUMBER" NUMBER(18,0), 
"JOB_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
"TIME_ELAPSED_SECS" NUMBER(18,4) DEFAULT 0, 
 CONSTRAINT "CZ_JOB_AUDIT_PK" PRIMARY KEY ("SEQ_ID")
 USING INDEX
 TABLESPACE "TRANSMART"  ENABLE
  ) TABLESPACE "TRANSMART" ;
--
-- Type: SEQUENCE; Owner: TM_CZ; Name: SEQ_CZ_JOB_AUDIT
--
CREATE SEQUENCE  "TM_CZ"."SEQ_CZ_JOB_AUDIT"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 1686336 CACHE 2 NOORDER  NOCYCLE ;
--
-- Type: TRIGGER; Owner: TM_CZ; Name: TRG_CZ_SEQ_ID
--
  CREATE OR REPLACE TRIGGER "TM_CZ"."TRG_CZ_SEQ_ID" 
  before insert on CZ_JOB_AUDIT    for each row
  begin
    if inserting then
      if :NEW.SEQ_ID is null then
        select SEQ_CZ_JOB_AUDIT.nextval into :NEW.SEQ_ID from dual;
      end if;
    end if;
  end;





/
ALTER TRIGGER "TM_CZ"."TRG_CZ_SEQ_ID" ENABLE;
