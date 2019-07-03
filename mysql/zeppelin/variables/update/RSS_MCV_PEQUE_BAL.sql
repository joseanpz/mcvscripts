%hive
INSERT INTO RSS_MCV_PEQUE_BAL

ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_BAL' AS
SELECT distinct
a.fecha , 
a.rfc,
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
FROM JEA_MCV_UNIVERSO_RFC a
LEFT JOIN dbriskdatamart.MZM_MCV_BAL_201902 b
on a.fecha = b.fecha and a.rfc=b.rfc
where a.fecha >=201607 ;