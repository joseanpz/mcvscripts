%hive
DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_R_BAL_BY_MAX_BAL_HIST;

CREATE TABLE  RSS_MCV_NEGOCIOS_R_BAL_BY_MAX_BAL_HIST
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/RSS_MCV_NEGOCIOS_R_BAL_BY_MAX_BAL_HIST' AS
SELECT
'fecha' AS fecha,
'rfc' AS rfc,
'r_bal_by_max_bal' AS r_bal_by_max_bal,
'max_r_bal_by_max_bal_03m' AS max_r_bal_by_max_bal_03m,
'min_r_bal_by_max_bal_03m' AS min_r_bal_by_max_bal_03m,
'avg_r_bal_by_max_bal_03m' AS avg_r_bal_by_max_bal_03m,
'avg_pnd_menos_r_bal_by_max_bal_03m' AS avg_pnd_menos_r_bal_by_max_bal_03m,
'avg_pnd_mas_r_bal_by_max_bal_03m' AS avg_pnd_mas_r_bal_by_max_bal_03m,
'max_r_bal_by_max_bal_06m' AS max_r_bal_by_max_bal_06m,
'min_r_bal_by_max_bal_06m' AS min_r_bal_by_max_bal_06m,
'avg_r_bal_by_max_bal_06m' AS avg_r_bal_by_max_bal_06m,
'avg_pnd_menos_r_bal_by_max_bal_06m' AS avg_pnd_menos_r_bal_by_max_bal_06m,
'avg_pnd_mas_r_bal_by_max_bal_06m' AS avg_pnd_mas_r_bal_by_max_bal_06m,
'max_r_bal_by_max_bal_12m' AS max_r_bal_by_max_bal_12m,
'min_r_bal_by_max_bal_12m' AS min_r_bal_by_max_bal_12m,
'avg_r_bal_by_max_bal_12m' AS avg_r_bal_by_max_bal_12m,
'avg_pnd_menos_r_bal_by_max_bal_12m' AS avg_pnd_menos_r_bal_by_max_bal_12m,
'avg_pnd_mas_r_bal_by_max_bal_12m' AS avg_pnd_mas_r_bal_by_max_bal_12m;
INSERT INTO RSS_MCV_NEGOCIOS_R_BAL_BY_MAX_BAL_HIST
SELECT  distinct a.fecha , a.rfc,
b.r_bal_by_max_bal,
b.max_r_bal_by_max_bal_03m,
b.min_r_bal_by_max_bal_03m,
b.avg_r_bal_by_max_bal_03m,
b.avg_pnd_menos_r_bal_by_max_bal_03m,
b.avg_pnd_mas_r_bal_by_max_bal_03m,
b.max_r_bal_by_max_bal_06m,
b.min_r_bal_by_max_bal_06m,
b.avg_r_bal_by_max_bal_06m,
b.avg_pnd_menos_r_bal_by_max_bal_06m,
b.avg_pnd_mas_r_bal_by_max_bal_06m,
b.max_r_bal_by_max_bal_12m,
b.min_r_bal_by_max_bal_12m,
b.avg_r_bal_by_max_bal_12m,
b.avg_pnd_menos_r_bal_by_max_bal_12m,
b.avg_pnd_mas_r_bal_by_max_bal_12m 
FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOS a
LEFT JOIN dbriskdatamart.MZM_MCV_R_BAL_BY_MAX_BAL_201906 b
on a.rfc=b.rfc and a.fecha=b.fechacartera
where a.fecha >= '201812'
 ;
