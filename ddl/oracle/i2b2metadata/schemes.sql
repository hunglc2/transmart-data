--
-- Type: TABLE; Owner: I2B2METADATA; Name: SCHEMES
--
 CREATE TABLE "I2B2METADATA"."SCHEMES" 
  (	"C_KEY" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"C_NAME" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"C_DESCRIPTION" VARCHAR2(100 BYTE),
CONSTRAINT "SCHEMES_PK" PRIMARY KEY ("C_KEY")
  ) TABLESPACE "I2B2_DATA" ;
