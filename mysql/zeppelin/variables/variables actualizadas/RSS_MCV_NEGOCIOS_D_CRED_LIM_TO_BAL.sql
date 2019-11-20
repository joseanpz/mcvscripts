%hive
DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_D_CRED_LIM_TO_BAL;

CREATE TABLE  RSS_MCV_NEGOCIOS_D_CRED_LIM_TO_BAL
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/RSS_MCV_NEGOCIOS_D_CRED_LIM_TO_BAL' AS
SELECT   
'fecha' AS fecha,
'rfc' as rfc ,
'd_cred_lim_to_bal' AS d_cred_lim_to_bal,
'max_d_cred_lim_to_bal_03m' AS max_d_cred_lim_to_bal_03m,
'min_d_cred_lim_to_bal_03m' AS min_d_cred_lim_to_bal_03m,
'avg_d_cred_lim_to_bal_03m' AS avg_d_cred_lim_to_bal_03m,
'avg_pnd_menos_d_cred_lim_to_bal_03m' AS avg_pnd_menos_d_cred_lim_to_bal_03m,
'avg_pnd_mas_d_cred_lim_to_bal_03m' AS avg_pnd_mas_d_cred_lim_to_bal_03m,
'max_d_cred_lim_to_bal_06m' AS max_d_cred_lim_to_bal_06m,
'min_d_cred_lim_to_bal_06m' AS min_d_cred_lim_to_bal_06m,
'avg_d_cred_lim_to_bal_06m' AS avg_d_cred_lim_to_bal_06m,
'avg_pnd_menos_d_cred_lim_to_bal_06m' AS avg_pnd_menos_d_cred_lim_to_bal_06m,
'avg_pnd_mas_d_cred_lim_to_bal_06m' AS avg_pnd_mas_d_cred_lim_to_bal_06m,
'max_d_cred_lim_to_bal_12m' AS max_d_cred_lim_to_bal_12m,
'min_d_cred_lim_to_bal_12m' AS min_d_cred_lim_to_bal_12m,
'avg_d_cred_lim_to_bal_12m' AS avg_d_cred_lim_to_bal_12m,
'avg_pnd_menos_d_cred_lim_to_bal_12m' AS avg_pnd_menos_d_cred_lim_to_bal_12m,
'avg_pnd_mas_d_cred_lim_to_bal_12m' AS avg_pnd_mas_d_cred_lim_to_bal_12m;
INSERT INTO RSS_MCV_NEGOCIOS_D_CRED_LIM_TO_BAL
SELECT distinct
a.fecha,
a.rfc ,
b.d_cred_lim_to_bal,
b.max_d_cred_lim_to_bal_03m,
b.min_d_cred_lim_to_bal_03m,
b.avg_d_cred_lim_to_bal_03m,
b.avg_pnd_menos_d_cred_lim_to_bal_03m,
b.avg_pnd_mas_d_cred_lim_to_bal_03m,
b.max_d_cred_lim_to_bal_06m,
b.min_d_cred_lim_to_bal_06m,
b.avg_d_cred_lim_to_bal_06m,
b.avg_pnd_menos_d_cred_lim_to_bal_06m,
b.avg_pnd_mas_d_cred_lim_to_bal_06m,
b.max_d_cred_lim_to_bal_12m,
b.min_d_cred_lim_to_bal_12m,
b.avg_d_cred_lim_to_bal_12m,
b.avg_pnd_menos_d_cred_lim_to_bal_12m,
b.avg_pnd_mas_d_cred_lim_to_bal_12m
FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOS a
LEFT JOIN dbriskdatamart.MZM_MCV_D_CRED_LIM_TO_BAL_201906 b
on a.fecha = b.fecha and a.rfc=b.rfc
 ;
