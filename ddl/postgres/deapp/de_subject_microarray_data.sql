--
-- Name: de_subject_microarray_data; Type: TABLE; Schema: deapp; Owner: -
--
CREATE TABLE de_subject_microarray_data (
    trial_name character varying(50),
    probeset_id bigint,
    assay_id bigint,
    patient_id bigint,
    raw_intensity double precision,
    log_intensity double precision,
    zscore double precision,
    raw_intensity_4 double precision,
    partition_id numeric
);

--
-- Name: de_microarray_data_idx1; Type: INDEX; Schema: deapp; Owner: -
--
CREATE INDEX de_microarray_data_idx1 ON de_subject_microarray_data USING btree (trial_name, assay_id, probeset_id);

--
-- Name: de_microarray_data_idx2; Type: INDEX; Schema: deapp; Owner: -
--
CREATE INDEX de_microarray_data_idx2 ON de_subject_microarray_data USING btree (assay_id, probeset_id);

--
-- Name: de_microarray_data_idx4; Type: INDEX; Schema: deapp; Owner: -
--
CREATE INDEX de_microarray_data_idx4 ON de_subject_microarray_data USING btree (trial_name);

--
-- Name: de_microarray_data_idx5; Type: INDEX; Schema: deapp; Owner: -
--
CREATE INDEX de_microarray_data_idx5 ON de_subject_microarray_data USING btree (assay_id, patient_id, probeset_id);

