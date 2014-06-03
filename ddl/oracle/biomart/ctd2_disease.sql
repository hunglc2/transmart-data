--
-- Type: TABLE; Owner: BIOMART; Name: CTD2_DISEASE
--
 CREATE TABLE "BIOMART"."CTD2_DISEASE" 
  (	"CTD_DISEASE_SEQ" NUMBER, 
"CTD_STUDY_ID" NUMBER, 
"DISEASE_TYPE_NAME" VARCHAR2(500 BYTE), 
"DISEASE_COMMON_NAME" VARCHAR2(500 BYTE), 
"ICD10_NAME" VARCHAR2(250 BYTE), 
"MESH_NAME" VARCHAR2(250 BYTE), 
"STUDY_TYPE_NAME" VARCHAR2(2000 BYTE), 
"PHYSIOLOGY_NAME" VARCHAR2(500 BYTE)
  ) TABLESPACE "BIOMART" ;
--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_CTD2_DISEASE
--
  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_CTD2_DISEASE" 
BEFORE INSERT ON CTD2_DISEASE
 FOR EACH ROW BEGIN     
 IF INSERTING THEN      
	IF :NEW."CTD_DISEASE_SEQ" IS NULL THEN 
		SELECT SEQ_CLINICAL_TRIAL_DESIGN_ID.NEXTVAL INTO :NEW."CTD_DISEASE_SEQ" FROM DUAL;  
	END IF;    
 END IF; 
END;







/
ALTER TRIGGER "BIOMART"."TRG_CTD2_DISEASE" ENABLE;
