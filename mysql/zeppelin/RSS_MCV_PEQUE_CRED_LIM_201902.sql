%hive
DROP TABLE IF EXISTS RSS_MCV_PEQUE_CRED_LIM_201902;

CREATE TABLE  RSS_MCV_PEQUE_CRED_LIM_201902
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_CRED_LIM_201902' AS
SELECT 

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
INSERT INTO  RSS_MCV_PEQUE_CRED_LIM_201902 
SELECT

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
FROM JEA_MCV_UNIVERSO_RFC a
LEFT JOIN dbriskdatamart.MZM_MCV_CRED_LIM_201902 b
on a.fecha = b.fecha and a.rfc=b.rfc
where a.fecha >=201607 ;