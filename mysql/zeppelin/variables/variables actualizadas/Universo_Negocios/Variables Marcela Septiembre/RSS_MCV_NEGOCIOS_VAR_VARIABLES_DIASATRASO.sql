%hive
DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_VAR_VARIABLES_DIASATRASO;

CREATE TABLE  RSS_MCV_NEGOCIOS_VAR_VARIABLES_DIASATRASO
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Septiembre/Variables/RSS_MCV_NEGOCIOS_VAR_VARIABLES_DIASATRASO' AS
SELECT 
'fecha' AS fecha,
'rfc' as rfc , 
'dias_atraso' AS dias_atraso,
'dpcv_cap' AS dpcv_cap;

INSERT INTO RSS_MCV_NEGOCIOS_VAR_VARIABLES_DIASATRASO
SELECT
a.fecha,
a.rfc , 
b.dias_atraso,
b.dpcv_cap
FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOS a
LEFT JOIN dbriskdatamart.MZM_MCV_VAR_VARIABLES_DIASATRASO_201909 b
on a.rfc=b.rfc and a.fecha=b.fecha
where a.fecha = '201909';
