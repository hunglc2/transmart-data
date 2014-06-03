--
-- Type: SEQUENCE; Owner: I2B2DEMODATA; Name: QT_SQ_QXR_XRID
--
CREATE SEQUENCE  "I2B2DEMODATA"."QT_SQ_QXR_XRID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 655 CACHE 20 NOORDER  NOCYCLE ;

--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: QT_XML_RESULT
--
 CREATE TABLE "I2B2DEMODATA"."QT_XML_RESULT" 
  (	"XML_RESULT_ID" NUMBER(5,0) NOT NULL ENABLE, 
"RESULT_INSTANCE_ID" NUMBER(5,0), 
"XML_VALUE" VARCHAR2(4000 BYTE), 
 CONSTRAINT "QT_XML_RESULT_PKEY" PRIMARY KEY ("XML_RESULT_ID")
 USING INDEX
 TABLESPACE "I2B2_DATA"  ENABLE
  ) TABLESPACE "I2B2_DATA" ;

--
-- Type: TRIGGER; Owner: I2B2DEMODATA; Name: TRG_QT_XR_XR_ID
--
  CREATE OR REPLACE TRIGGER "I2B2DEMODATA"."TRG_QT_XR_XR_ID" 
   before insert on "I2B2DEMODATA"."QT_XML_RESULT" 
   for each row 
begin  
   if inserting then 
      if :NEW."XML_RESULT_ID" is null then 
         select QT_SQ_QXR_XRID.nextval into :NEW."XML_RESULT_ID" from dual; 
      end if; 
   end if; 
end;
/
ALTER TRIGGER "I2B2DEMODATA"."TRG_QT_XR_XR_ID" ENABLE;
 
--
-- Type: REF_CONSTRAINT; Owner: I2B2DEMODATA; Name: QT_FK_XMLR_RIID
--
ALTER TABLE "I2B2DEMODATA"."QT_XML_RESULT" ADD CONSTRAINT "QT_FK_XMLR_RIID" FOREIGN KEY ("RESULT_INSTANCE_ID")
 REFERENCES "I2B2DEMODATA"."QT_QUERY_RESULT_INSTANCE" ("RESULT_INSTANCE_ID") ENABLE;

