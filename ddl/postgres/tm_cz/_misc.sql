--
-- Name: median(anyelement); Type: AGGREGATE; Schema: tm_cz; Owner: -
--
CREATE AGGREGATE median(anyelement) (
    SFUNC = array_append,
    STYPE = anyarray,
    INITCOND = '{}',
    FINALFUNC = _final_median
);


SET default_with_oids = false;

--
-- Name: emt_temp_seq; Type: SEQUENCE; Schema: tm_cz; Owner: -
--
CREATE SEQUENCE emt_temp_seq
    START WITH 11621
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;

--
-- Name: rtqalimits_testid_seq; Type: SEQUENCE; Schema: tm_cz; Owner: -
--
CREATE SEQUENCE rtqalimits_testid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;

--
-- Name: rtqastatslist_testid_seq; Type: SEQUENCE; Schema: tm_cz; Owner: -
--
CREATE SEQUENCE rtqastatslist_testid_seq
    START WITH 80000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;

--
-- Name: seq_child_rollup_id; Type: SEQUENCE; Schema: tm_cz; Owner: -
--
CREATE SEQUENCE seq_child_rollup_id
    START WITH 1681
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;

--
-- Name: seq_cz_data; Type: SEQUENCE; Schema: tm_cz; Owner: -
--
CREATE SEQUENCE seq_cz_data
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 2;

--
-- Name: seq_cz_data_file; Type: SEQUENCE; Schema: tm_cz; Owner: -
--
CREATE SEQUENCE seq_cz_data_file
    START WITH 6
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 2;

--
-- Name: seq_cz_dw_version_id; Type: SEQUENCE; Schema: tm_cz; Owner: -
--
CREATE SEQUENCE seq_cz_dw_version_id
    START WITH 41
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 2;

--
-- Name: seq_cz_job_id; Type: SEQUENCE; Schema: tm_cz; Owner: -
--
CREATE SEQUENCE seq_cz_job_id
    START WITH 413
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;

--
-- Name: seq_cz_job_message; Type: SEQUENCE; Schema: tm_cz; Owner: -
--
CREATE SEQUENCE seq_cz_job_message
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 2;

--
-- Name: seq_cz_test; Type: SEQUENCE; Schema: tm_cz; Owner: -
--
CREATE SEQUENCE seq_cz_test
    START WITH 8259
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 2;

--
-- Name: seq_cz_test_category; Type: SEQUENCE; Schema: tm_cz; Owner: -
--
CREATE SEQUENCE seq_cz_test_category
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 2;

--
-- Name: seq_region_id; Type: SEQUENCE; Schema: tm_cz; Owner: -
--
CREATE SEQUENCE seq_region_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

