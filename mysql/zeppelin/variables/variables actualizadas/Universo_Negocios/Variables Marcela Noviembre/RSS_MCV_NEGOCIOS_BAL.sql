%hive
DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_BAL;

CREATE TABLE  RSS_MCV_NEGOCIOS_BAL
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Noviembre/Variables/RSS_MCV_NEGOCIOS_BAL' AS
SELECT   
'fecha' AS fecha,
'rfc' as rfc ,
'cur_bal' AS cur_bal,
'max_bal_03m' AS max_bal_03m,
'min_bal_03m' AS min_bal_03m,
'avg_bal_03m' AS avg_bal_03m,
'avg_pnd_menos_bal_03m' AS avg_pnd_menos_bal_03m,
'avg_pnd_mas_bal_03m' AS avg_pnd_mas_bal_03m,
'max_bal_06m' AS max_bal_06m,
'min_bal_06m' AS min_bal_06m,
'avg_bal_06m' AS avg_bal_06m,
'avg_pnd_menos_bal_06m' AS avg_pnd_menos_bal_06m,
'avg_pnd_mas_bal_06m' AS avg_pnd_mas_bal_06m,
'max_bal_12m' AS max_bal_12m,
'min_bal_12m' AS min_bal_12m,
'avg_bal_12m' AS avg_bal_12m,
'avg_pnd_menos_bal_12m' AS avg_pnd_menos_bal_12m,
'avg_pnd_mas_bal_12m' AS avg_pnd_mas_bal_12m;
INSERT INTO RSS_MCV_NEGOCIOS_BAL
SELECT distinct
a.fecha,
a.rfc ,
b.cur_bal,
b.max_bal_03m,
b.min_bal_03m,
b.avg_bal_03m,
b.avg_pnd_menos_bal_03m,
b.avg_pnd_mas_bal_03m,
b.max_bal_06m,
b.min_bal_06m,
b.avg_bal_06m,
b.avg_pnd_menos_bal_06m,
b.avg_pnd_mas_bal_06m,
b.max_bal_12m,
b.min_bal_12m,
b.avg_bal_12m,
b.avg_pnd_menos_bal_12m,
b.avg_pnd_mas_bal_12m
FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOS a
LEFT JOIN dbriskdatamart.MZM_MCV_BAL_201911 b
on a.fecha = b.fecha and a.rfc=b.rfc
where a.fecha = '201911' ;
