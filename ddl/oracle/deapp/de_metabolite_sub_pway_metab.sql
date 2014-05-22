--
-- Type: TABLE; Owner: DEAPP; Name: DE_METABOLITE_SUB_PWAY_METAB
--
 CREATE TABLE "DEAPP"."DE_METABOLITE_SUB_PWAY_METAB" 
  (	"METABOLITE_ID" NUMBER(*,0) NOT NULL ENABLE, 
"SUB_PATHWAY_ID" NUMBER(*,0) NOT NULL ENABLE
  ) SEGMENT CREATION IMMEDIATE
NOCOMPRESS NOLOGGING
 TABLESPACE "DEAPP" ;
--
-- Type: REF_CONSTRAINT; Owner: DEAPP; Name: SYS_C0010758
--
ALTER TABLE "DEAPP"."DE_METABOLITE_SUB_PWAY_METAB" ADD FOREIGN KEY ("SUB_PATHWAY_ID")
 REFERENCES "DEAPP"."DE_METABOLITE_SUB_PATHWAYS" ("ID") ENABLE;
--
-- Type: REF_CONSTRAINT; Owner: DEAPP; Name: SYS_C0010759
--
ALTER TABLE "DEAPP"."DE_METABOLITE_SUB_PWAY_METAB" ADD FOREIGN KEY ("METABOLITE_ID")
 REFERENCES "DEAPP"."DE_METABOLITE_ANNOTATION" ("ID") ENABLE;