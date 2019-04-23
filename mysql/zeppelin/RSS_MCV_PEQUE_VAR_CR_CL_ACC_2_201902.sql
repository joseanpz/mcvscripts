%hive
DROP TABLE IF EXISTS RSS_MCV_PEQUE_VAR_CR_CL_ACC_2_201902;

CREATE TABLE  RSS_MCV_PEQUE_VAR_CR_CL_ACC_2_201902
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_VAR_CR_CL_ACC_2_201902' AS
SELECT  a.fecha, a.rfc as rfc_unv, b.* 
FROM JEA_MCV_UNIVERSO_RFC a
LEFT JOIN dbriskdatamart.MZM_MCV_VAR_CR_CL_ACC_2_201902 b
on a.folio_respuesta_bc = b.folio and a.rfc=b.rfc
where a.fecha >=201607 ;