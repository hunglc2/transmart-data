--
-- Name: de_qpcr_mirna_annotation; Type: TABLE; Schema: deapp; Owner: -
--
CREATE TABLE de_qpcr_mirna_annotation (
    id_ref character varying(100),
    probe_id character varying(100),
    mirna_symbol character varying(100),
    mirna_id character varying(100),
    probeset_id numeric(38,0),
    organism character varying(200),
    gpl_id character varying(20)
);

