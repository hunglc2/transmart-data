--
-- Name: bio_experiment_uid(text); Type: FUNCTION; Schema: biomart; Owner: -
--
CREATE FUNCTION bio_experiment_uid(primary_id text) RETURNS character varying
    LANGUAGE plpgsql
    AS $_$
BEGIN
  -- $Id$
  -- Creates uid for bio_experiment.

  RETURN 'EXP:' || coalesce(PRIMARY_ID, 'ERROR');
END;
$_$;

