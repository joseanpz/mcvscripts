%hive

INSERT INTO RSS_MCV_PEQUE_D_CRED_LIM_TO_BAL

ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_D_CRED_LIM_TO_BAL' AS
SELECT distinct
a.fecha , 
a.rfc,
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
FROM JEA_MCV_UNIVERSO_RFC a
LEFT JOIN dbriskdatamart.MZM_MCV_D_CRED_LIM_TO_BAL_201902 b
on a.fecha = b.fecha and a.rfc=b.rfc
where a.fecha >=201607 ;