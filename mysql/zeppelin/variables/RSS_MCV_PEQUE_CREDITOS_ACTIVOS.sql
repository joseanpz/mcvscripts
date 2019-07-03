%hive
DROP TABLE IF EXISTS RSS_MCV_PEQUE_CREDITOS_ACTIVOS;

CREATE TABLE  RSS_MCV_PEQUE_CREDITOS_ACTIVOS
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_CREDITOS_ACTIVOS' AS

SELECT  a.fecha, a.llave_universal_20, b.* 
FROM JEA_MCV_UNIVERSO a
LEFT JOIN dbriskdatamart.MZM_MCV_CREDITOS_ACTIVOS_201902 b
on a.folio_respuesta_bc = b.folio and a.rfc=b.rfc
where a.fecha >=201607 ;