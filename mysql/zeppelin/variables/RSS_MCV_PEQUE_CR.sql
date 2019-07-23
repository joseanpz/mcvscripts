%hive
DROP TABLE IF EXISTS RSS_MCV_PEQUE_CR;

CREATE TABLE  RSS_MCV_PEQUE_CR
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_CR' AS
SELECT   b.* 
FROM JEA_MCV_UNIVERSO a
LEFT JOIN dbriskdatamart.MZM_MCV_CR_201906 b
on a.folio_respuesta_bc = b.folio and a.rfc=b.rfc
where a.fecha >=201607 ;

