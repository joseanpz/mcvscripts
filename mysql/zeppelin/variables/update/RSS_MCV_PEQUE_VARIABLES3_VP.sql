%hive
INSERT INTO RSS_MCV_PEQUE_VARIABLES3_VP

ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_VARIABLES3_VP' AS
SELECT
a.fecha,
a.rfc , 
b.num_inc_max_vp_per_t01,
b.num_inc_max_vp_per_t02,
b.num_inc_max_vp_per_t03,
b.num_inc_max_vp_per_t04,
b.num_inc_max_vp_per_t05,
b.num_inc_max_vp_per_t06,
b.num_inc_max_vp_per_t07,
b.num_inc_max_vp_per_t08,
b.num_inc_max_vp_per_t09,
b.num_inc_max_vp_per_t10,
b.num_inc_max_vp_per_t11,
b.num_inc_max_vp_per_t12,
b.num_inc_min_vp_per_t01,
b.num_inc_min_vp_per_t02,
b.num_inc_min_vp_per_t03,
b.num_inc_min_vp_per_t04,
b.num_inc_min_vp_per_t05,
b.num_inc_min_vp_per_t06,
b.num_inc_min_vp_per_t07,
b.num_inc_min_vp_per_t08,
b.num_inc_min_vp_per_t09,
b.num_inc_min_vp_per_t10,
b.num_inc_min_vp_per_t11,
b.num_inc_min_vp_per_t12,
b.num_inc_avg1_vp_per_t01,
b.num_inc_avg1_vp_per_t02,
b.num_inc_avg1_vp_per_t03,
b.num_inc_avg1_vp_per_t04,
b.num_inc_avg1_vp_per_t05,
b.num_inc_avg1_vp_per_t06,
b.num_inc_avg1_vp_per_t07,
b.num_inc_avg1_vp_per_t08,
b.num_inc_avg1_vp_per_t09,
b.num_inc_avg1_vp_per_t10,
b.num_inc_avg1_vp_per_t11,
b.num_inc_avg1_vp_per_t12,
b.num_inc_avg2_vp_per_t01,
b.num_inc_avg2_vp_per_t02,
b.num_inc_avg2_vp_per_t03,
b.num_inc_avg2_vp_per_t04,
b.num_inc_avg2_vp_per_t05,
b.num_inc_avg2_vp_per_t06,
b.num_inc_avg2_vp_per_t07,
b.num_inc_avg2_vp_per_t08,
b.num_inc_avg2_vp_per_t09,
b.num_inc_avg2_vp_per_t10,
b.num_inc_avg2_vp_per_t11,
b.num_inc_avg2_vp_per_t12,
b.num_inc_max_vp_mes_t01,
b.num_inc_max_vp_mes_t02,
b.num_inc_max_vp_mes_t03,
b.num_inc_max_vp_mes_t04,
b.num_inc_max_vp_mes_t05,
b.num_inc_max_vp_mes_t06,
b.num_inc_max_vp_mes_t07,
b.num_inc_max_vp_mes_t08,
b.num_inc_max_vp_mes_t09,
b.num_inc_max_vp_mes_t10,
b.num_inc_max_vp_mes_t11,
b.num_inc_max_vp_mes_t12,
b.num_inc_min_vp_mes_t01,
b.num_inc_min_vp_mes_t02,
b.num_inc_min_vp_mes_t03,
b.num_inc_min_vp_mes_t04,
b.num_inc_min_vp_mes_t05,
b.num_inc_min_vp_mes_t06,
b.num_inc_min_vp_mes_t07,
b.num_inc_min_vp_mes_t08,
b.num_inc_min_vp_mes_t09,
b.num_inc_min_vp_mes_t10,
b.num_inc_min_vp_mes_t11,
b.num_inc_min_vp_mes_t12,
b.num_inc_avg1_vp_mes_t01,
b.num_inc_avg1_vp_mes_t02,
b.num_inc_avg1_vp_mes_t03,
b.num_inc_avg1_vp_mes_t04,
b.num_inc_avg1_vp_mes_t05,
b.num_inc_avg1_vp_mes_t06,
b.num_inc_avg1_vp_mes_t07,
b.num_inc_avg1_vp_mes_t08,
b.num_inc_avg1_vp_mes_t09,
b.num_inc_avg1_vp_mes_t10,
b.num_inc_avg1_vp_mes_t11,
b.num_inc_avg1_vp_mes_t12,
b.num_inc_avg2_vp_mes_t01,
b.num_inc_avg2_vp_mes_t02,
b.num_inc_avg2_vp_mes_t03,
b.num_inc_avg2_vp_mes_t04,
b.num_inc_avg2_vp_mes_t05,
b.num_inc_avg2_vp_mes_t06,
b.num_inc_avg2_vp_mes_t07,
b.num_inc_avg2_vp_mes_t08,
b.num_inc_avg2_vp_mes_t09,
b.num_inc_avg2_vp_mes_t10,
b.num_inc_avg2_vp_mes_t11,
b.num_inc_avg2_vp_mes_t12,
b.num_dec_max_vp_per_t01,
b.num_dec_max_vp_per_t02,
b.num_dec_max_vp_per_t03,
b.num_dec_max_vp_per_t04,
b.num_dec_max_vp_per_t05,
b.num_dec_max_vp_per_t06,
b.num_dec_max_vp_per_t07,
b.num_dec_max_vp_per_t08,
b.num_dec_max_vp_per_t09,
b.num_dec_max_vp_per_t10,
b.num_dec_max_vp_per_t11,
b.num_dec_max_vp_per_t12,
b.num_dec_min_vp_per_t01,
b.num_dec_min_vp_per_t02,
b.num_dec_min_vp_per_t03,
b.num_dec_min_vp_per_t04,
b.num_dec_min_vp_per_t05,
b.num_dec_min_vp_per_t06,
b.num_dec_min_vp_per_t07,
b.num_dec_min_vp_per_t08,
b.num_dec_min_vp_per_t09,
b.num_dec_min_vp_per_t10,
b.num_dec_min_vp_per_t11,
b.num_dec_min_vp_per_t12,
b.num_dec_avg1_vp_per_t01,
b.num_dec_avg1_vp_per_t02,
b.num_dec_avg1_vp_per_t03,
b.num_dec_avg1_vp_per_t04,
b.num_dec_avg1_vp_per_t05,
b.num_dec_avg1_vp_per_t06,
b.num_dec_avg1_vp_per_t07,
b.num_dec_avg1_vp_per_t08,
b.num_dec_avg1_vp_per_t09,
b.num_dec_avg1_vp_per_t10,
b.num_dec_avg1_vp_per_t11,
b.num_dec_avg1_vp_per_t12,
b.num_dec_avg2_vp_per_t01,
b.num_dec_avg2_vp_per_t02,
b.num_dec_avg2_vp_per_t03,
b.num_dec_avg2_vp_per_t04,
b.num_dec_avg2_vp_per_t05,
b.num_dec_avg2_vp_per_t06,
b.num_dec_avg2_vp_per_t07,
b.num_dec_avg2_vp_per_t08,
b.num_dec_avg2_vp_per_t09,
b.num_dec_avg2_vp_per_t10,
b.num_dec_avg2_vp_per_t11,
b.num_dec_avg2_vp_per_t12,
b.num_dec_max_vp_mes_t01,
b.num_dec_max_vp_mes_t02,
b.num_dec_max_vp_mes_t03,
b.num_dec_max_vp_mes_t04,
b.num_dec_max_vp_mes_t05,
b.num_dec_max_vp_mes_t06,
b.num_dec_max_vp_mes_t07,
b.num_dec_max_vp_mes_t08,
b.num_dec_max_vp_mes_t09,
b.num_dec_max_vp_mes_t10,
b.num_dec_max_vp_mes_t11,
b.num_dec_max_vp_mes_t12,
b.num_dec_min_vp_mes_t01,
b.num_dec_min_vp_mes_t02,
b.num_dec_min_vp_mes_t03,
b.num_dec_min_vp_mes_t04,
b.num_dec_min_vp_mes_t05,
b.num_dec_min_vp_mes_t06,
b.num_dec_min_vp_mes_t07,
b.num_dec_min_vp_mes_t08,
b.num_dec_min_vp_mes_t09,
b.num_dec_min_vp_mes_t10,
b.num_dec_min_vp_mes_t11,
b.num_dec_min_vp_mes_t12,
b.num_dec_avg1_vp_mes_t01,
b.num_dec_avg1_vp_mes_t02,
b.num_dec_avg1_vp_mes_t03,
b.num_dec_avg1_vp_mes_t04,
b.num_dec_avg1_vp_mes_t05,
b.num_dec_avg1_vp_mes_t06,
b.num_dec_avg1_vp_mes_t07,
b.num_dec_avg1_vp_mes_t08,
b.num_dec_avg1_vp_mes_t09,
b.num_dec_avg1_vp_mes_t10,
b.num_dec_avg1_vp_mes_t11,
b.num_dec_avg1_vp_mes_t12,
b.num_dec_avg2_vp_mes_t01,
b.num_dec_avg2_vp_mes_t02,
b.num_dec_avg2_vp_mes_t03,
b.num_dec_avg2_vp_mes_t04,
b.num_dec_avg2_vp_mes_t05,
b.num_dec_avg2_vp_mes_t06,
b.num_dec_avg2_vp_mes_t07,
b.num_dec_avg2_vp_mes_t08,
b.num_dec_avg2_vp_mes_t09,
b.num_dec_avg2_vp_mes_t10,
b.num_dec_avg2_vp_mes_t11,
b.num_dec_avg2_vp_mes_t12
FROM JEA_MCV_UNIVERSO_RFC a
LEFT JOIN dbriskdatamart.JAT_MCV_VARIABLES3_VP_201902 b
on a.rfc=b.rfc and a.fecha=b.fecha
where a.fecha >=201607 ;