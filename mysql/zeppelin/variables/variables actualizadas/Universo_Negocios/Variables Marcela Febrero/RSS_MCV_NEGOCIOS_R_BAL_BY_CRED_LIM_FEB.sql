%hive
DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_R_BAL_BY_CRED_LIM_FEB;

CREATE TABLE  RSS_MCV_NEGOCIOS_R_BAL_BY_CRED_LIM_FEB
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Febrero/RSS_MCV_NEGOCIOS_R_BAL_BY_CRED_LIM_FEB' AS
SELECT
'fecha' AS fecha,
'rfc' as rfc ,
'r_bal_by_cred_lim' AS r_bal_by_cred_lim,
'max_r_bal_by_cred_lim_03m' AS max_r_bal_by_cred_lim_03m,
'min_r_bal_by_cred_lim_03m' AS min_r_bal_by_cred_lim_03m,
'avg_r_bal_by_cred_lim_03m' AS avg_r_bal_by_cred_lim_03m,
'avg_pnd_menos_r_bal_by_cred_lim_03m' AS avg_pnd_menos_r_bal_by_cred_lim_03m,
'avg_pnd_mas_r_bal_by_cred_lim_03m' AS avg_pnd_mas_r_bal_by_cred_lim_03m,
'max_r_bal_by_cred_lim_06m' AS max_r_bal_by_cred_lim_06m,
'min_r_bal_by_cred_lim_06m' AS min_r_bal_by_cred_lim_06m,
'avg_r_bal_by_cred_lim_06m' AS avg_r_bal_by_cred_lim_06m,
'avg_pnd_menos_r_bal_by_cred_lim_06m' AS avg_pnd_menos_r_bal_by_cred_lim_06m,
'avg_pnd_mas_r_bal_by_cred_lim_06m' AS avg_pnd_mas_r_bal_by_cred_lim_06m,
'max_r_bal_by_cred_lim_12m' AS max_r_bal_by_cred_lim_12m,
'min_r_bal_by_cred_lim_12m' AS min_r_bal_by_cred_lim_12m,
'avg_r_bal_by_cred_lim_12m' AS avg_r_bal_by_cred_lim_12m,
'avg_pnd_menos_r_bal_by_cred_lim_12m' AS avg_pnd_menos_r_bal_by_cred_lim_12m,
'avg_pnd_mas_r_bal_by_cred_lim_12m' AS avg_pnd_mas_r_bal_by_cred_lim_12m;
insert into RSS_MCV_NEGOCIOS_R_BAL_BY_CRED_LIM_FEB
select distinct
a.fecha,
a.rfc ,
b.r_bal_by_cred_lim,
b.max_r_bal_by_cred_lim_03m,
b.min_r_bal_by_cred_lim_03m,
b.avg_r_bal_by_cred_lim_03m,
b.avg_pnd_menos_r_bal_by_cred_lim_03m,
b.avg_pnd_mas_r_bal_by_cred_lim_03m,
b.max_r_bal_by_cred_lim_06m,
b.min_r_bal_by_cred_lim_06m,
b.avg_r_bal_by_cred_lim_06m,
b.avg_pnd_menos_r_bal_by_cred_lim_06m,
b.avg_pnd_mas_r_bal_by_cred_lim_06m,
b.max_r_bal_by_cred_lim_12m,
b.min_r_bal_by_cred_lim_12m,
b.avg_r_bal_by_cred_lim_12m,
b.avg_pnd_menos_r_bal_by_cred_lim_12m,
b.avg_pnd_mas_r_bal_by_cred_lim_12m
FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOS a
LEFT JOIN dbriskdatamart.MZM_MCV_R_BAL_BY_CRED_LIM_201907 b
on a.rfc=b.rfc and a.fecha=b.fechacartera
where a.fecha = '201902' ;
