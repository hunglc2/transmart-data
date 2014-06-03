--
-- Type: TABLE; Owner: SEARCHAPP; Name: SEARCH_USER_SETTINGS
--
 CREATE TABLE "SEARCHAPP"."SEARCH_USER_SETTINGS" 
  (	"ID" NUMBER NOT NULL ENABLE, 
"USER_ID" NUMBER NOT NULL ENABLE, 
"SETTING_NAME" VARCHAR2(255 BYTE) NOT NULL ENABLE, 
"SETTING_VALUE" VARCHAR2(1024 BYTE) NOT NULL ENABLE, 
CONSTRAINT "SEARCH_USER_SETTINGS_PKEY" PRIMARY KEY ("ID"),
 CONSTRAINT "SEARCH_USER_SETTINGS_UK" UNIQUE ("USER_ID", "SETTING_NAME", "SETTING_VALUE")
 USING INDEX
 TABLESPACE "BIOMART"  ENABLE
  ) TABLESPACE "BIOMART" ;
