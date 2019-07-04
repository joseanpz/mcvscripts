%hive

INSERT INTO  RSS_MCV_PEQUE_CRED_LIM 

ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_CRED_LIM' AS
SELECT distinct
a.fecha , 
a.rfc,
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