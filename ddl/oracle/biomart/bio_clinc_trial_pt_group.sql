--
-- Type: TABLE; Owner: BIOMART; Name: BIO_CLINC_TRIAL_PT_GROUP
--
 CREATE TABLE "BIOMART"."BIO_CLINC_TRIAL_PT_GROUP" 
  (	"BIO_EXPERIMENT_ID" NUMBER(18,0) NOT NULL ENABLE, 
"BIO_CLINICAL_TRIAL_P_GROUP_ID" NUMBER(18,0) NOT NULL ENABLE, 
"NAME" NVARCHAR2(510), 
"DESCRIPTION" NVARCHAR2(1000), 
"NUMBER_OF_PATIENTS" NUMBER(10,0), 
"PATIENT_GROUP_TYPE_CODE" NVARCHAR2(200), 
 CONSTRAINT "BIO_CLINICAL_TRIAL_PT_GROUP" PRIMARY KEY ("BIO_CLINICAL_TRIAL_P_GROUP_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) TABLESPACE "BIOMART" ;
--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_CLINC_TRL_PT_GRP_EXP_FK
--
ALTER TABLE "BIOMART"."BIO_CLINC_TRIAL_PT_GROUP" ADD CONSTRAINT "BIO_CLINC_TRL_PT_GRP_EXP_FK" FOREIGN KEY ("BIO_EXPERIMENT_ID")
 REFERENCES "BIOMART"."BIO_CLINICAL_TRIAL" ("BIO_EXPERIMENT_ID") ENABLE;
--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_CLIN_TRL_PT_GRP_ID
--
  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_BIO_CLIN_TRL_PT_GRP_ID" before insert on "BIO_CLINC_TRIAL_PT_GROUP"    for each row begin     if inserting then       if :NEW."BIO_CLINICAL_TRIAL_P_GROUP_ID" is null then          select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_CLINICAL_TRIAL_P_GROUP_ID" from dual;       end if;    end if; end;













/
ALTER TRIGGER "BIOMART"."TRG_BIO_CLIN_TRL_PT_GRP_ID" ENABLE;
