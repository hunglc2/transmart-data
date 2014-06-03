--
-- Type: TABLE; Owner: SEARCHAPP; Name: SEARCH_AUTH_USER_SEC_ACCESS
--
 CREATE TABLE "SEARCHAPP"."SEARCH_AUTH_USER_SEC_ACCESS" 
  (	"SEARCH_AUTH_USER_SEC_ACCESS_ID" NUMBER(18,0) NOT NULL ENABLE, 
"SEARCH_AUTH_USER_ID" NUMBER(18,0), 
"SEARCH_SECURE_OBJECT_ID" NUMBER(18,0), 
"SEARCH_SEC_ACCESS_LEVEL_ID" NUMBER(18,0), 
 CONSTRAINT "SEARCH_SEC_A_U_S_A_PK" PRIMARY KEY ("SEARCH_AUTH_USER_SEC_ACCESS_ID")
 USING INDEX
 TABLESPACE "BIOMART"  ENABLE
  ) TABLESPACE "BIOMART" ;
--
-- Type: REF_CONSTRAINT; Owner: SEARCHAPP; Name: SEARCH_SEC_S_A_L_FK
--
ALTER TABLE "SEARCHAPP"."SEARCH_AUTH_USER_SEC_ACCESS" ADD CONSTRAINT "SEARCH_SEC_S_A_L_FK" FOREIGN KEY ("SEARCH_SEC_ACCESS_LEVEL_ID")
 REFERENCES "SEARCHAPP"."SEARCH_SEC_ACCESS_LEVEL" ("SEARCH_SEC_ACCESS_LEVEL_ID") ENABLE;
--
-- Type: TRIGGER; Owner: SEARCHAPP; Name: TRG_SEARCH_A_U_SEC_ACCESS_ID
--
  CREATE OR REPLACE TRIGGER "SEARCHAPP"."TRG_SEARCH_A_U_SEC_ACCESS_ID" before insert on "SEARCH_AUTH_USER_SEC_ACCESS"    for each row begin     if inserting then       if :NEW."SEARCH_AUTH_USER_SEC_ACCESS_ID" is null then          select SEQ_SEARCH_DATA_ID.nextval into :NEW."SEARCH_AUTH_USER_SEC_ACCESS_ID" from dual;       end if;    end if; end;










/
ALTER TRIGGER "SEARCHAPP"."TRG_SEARCH_A_U_SEC_ACCESS_ID" ENABLE;
--
-- Type: REF_CONSTRAINT; Owner: SEARCHAPP; Name: SEARCH_SEC_S_O_FK
--
ALTER TABLE "SEARCHAPP"."SEARCH_AUTH_USER_SEC_ACCESS" ADD CONSTRAINT "SEARCH_SEC_S_O_FK" FOREIGN KEY ("SEARCH_SECURE_OBJECT_ID")
 REFERENCES "SEARCHAPP"."SEARCH_SECURE_OBJECT" ("SEARCH_SECURE_OBJECT_ID") ENABLE;
--
-- Type: REF_CONSTRAINT; Owner: SEARCHAPP; Name: SEARCH_SEC_A_U_FK
--
ALTER TABLE "SEARCHAPP"."SEARCH_AUTH_USER_SEC_ACCESS" ADD CONSTRAINT "SEARCH_SEC_A_U_FK" FOREIGN KEY ("SEARCH_AUTH_USER_ID")
 REFERENCES "SEARCHAPP"."SEARCH_AUTH_USER" ("ID") ENABLE;
