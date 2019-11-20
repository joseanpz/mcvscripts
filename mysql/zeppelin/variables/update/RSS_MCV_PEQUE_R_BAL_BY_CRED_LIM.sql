%hive
insert into RSS_MCV_PEQUE_R_BAL_BY_CRED_LIM

ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_R_BAL_BY_CRED_LIM' AS
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
FROM JEA_MCV_UNIVERSO_RFC a
LEFT JOIN dbriskdatamart.MZM_MCV_R_BAL_BY_CRED_LIM_201902 b
on a.rfc=b.rfc and a.fecha=b.fechacartera
where a.fecha >=201607 ;
