%hive
DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_CRED_LIM;

CREATE TABLE  RSS_MCV_NEGOCIOS_CRED_LIM
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Diciembre/Variables/RSS_MCV_NEGOCIOS_CRED_LIM' AS
SELECT 
'fecha' AS fecha,
'rfc' as rfc ,
'max_cred_lim_03m' AS max_cred_lim_03m,
'min_cred_lim_03m' AS min_cred_lim_03m,
'avg_cred_lim_03m' AS avg_cred_lim_03m,
'avg_pnd_menos_cred_lim_03m' AS avg_pnd_menos_cred_lim_03m,
'avg_pnd_mas_cred_lim_03m' AS avg_pnd_mas_cred_lim_03m,
'max_cred_lim_06m' AS max_cred_lim_06m,
'min_cred_lim_06m' AS min_cred_lim_06m,
'avg_cred_lim_06m' AS avg_cred_lim_06m,
'avg_pnd_menos_cred_lim_06m' AS avg_pnd_menos_cred_lim_06m,
'avg_pnd_mas_cred_lim_06m' AS avg_pnd_mas_cred_lim_06m,
'max_cred_lim_12m' AS max_cred_lim_12m,
'min_cred_lim_12m' AS min_cred_lim_12m,
'avg_cred_lim_12m' AS avg_cred_lim_12m,
'avg_pnd_menos_cred_lim_12m' AS avg_pnd_menos_cred_lim_12m,
'avg_pnd_mas_cred_lim_12m' AS avg_pnd_mas_cred_lim_12m;
INSERT INTO  RSS_MCV_NEGOCIOS_CRED_LIM 
SELECT
distinct
a.fecha,
a.rfc ,
b.max_cred_lim_03m,
b.min_cred_lim_03m,
b.avg_cred_lim_03m,
b.avg_pnd_menos_cred_lim_03m,
b.avg_pnd_mas_cred_lim_03m,
b.max_cred_lim_06m,
b.min_cred_lim_06m,
b.avg_cred_lim_06m,
b.avg_pnd_menos_cred_lim_06m,
b.avg_pnd_mas_cred_lim_06m,
b.max_cred_lim_12m,
b.min_cred_lim_12m,
b.avg_cred_lim_12m,
b.avg_pnd_menos_cred_lim_12m,
b.avg_pnd_mas_cred_lim_12m
FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOS a
LEFT JOIN dbriskdatamart.MZM_MCV_CRED_LIM_201912 b
on a.fecha = b.fecha and a.rfc=b.rfc
where a.fecha = '201912' ;
