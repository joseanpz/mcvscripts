%hive
DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_VARIABLES3_VP_2;

CREATE TABLE  RSS_MCV_NEGOCIOS_VARIABLES3_VP_2
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Octubre/Variables/RSS_MCV_NEGOCIOS_VARIABLES3_VP_2' AS
SELECT  
'fecha' AS fecha,
'rfc' as rfc , 
'num_inc_max_vp_per_t01' AS num_inc_max_vp_per_t01,
'num_inc_max_vp_per_t02' AS num_inc_max_vp_per_t02,
'num_inc_max_vp_per_t03' AS num_inc_max_vp_per_t03,
'num_inc_max_vp_per_t04' AS num_inc_max_vp_per_t04,
'num_inc_max_vp_per_t05' AS num_inc_max_vp_per_t05,
'num_inc_max_vp_per_t06' AS num_inc_max_vp_per_t06,
'num_inc_max_vp_per_t07' AS num_inc_max_vp_per_t07,
'num_inc_max_vp_per_t08' AS num_inc_max_vp_per_t08,
'num_inc_max_vp_per_t09' AS num_inc_max_vp_per_t09,
'num_inc_max_vp_per_t10' AS num_inc_max_vp_per_t10,
'num_inc_max_vp_per_t11' AS num_inc_max_vp_per_t11,
'num_inc_max_vp_per_t12' AS num_inc_max_vp_per_t12,
'num_inc_min_vp_per_t01' AS num_inc_min_vp_per_t01,
'num_inc_min_vp_per_t02' AS num_inc_min_vp_per_t02,
'num_inc_min_vp_per_t03' AS num_inc_min_vp_per_t03,
'num_inc_min_vp_per_t04' AS num_inc_min_vp_per_t04,
'num_inc_min_vp_per_t05' AS num_inc_min_vp_per_t05,
'num_inc_min_vp_per_t06' AS num_inc_min_vp_per_t06,
'num_inc_min_vp_per_t07' AS num_inc_min_vp_per_t07,
'num_inc_min_vp_per_t08' AS num_inc_min_vp_per_t08,
'num_inc_min_vp_per_t09' AS num_inc_min_vp_per_t09,
'num_inc_min_vp_per_t10' AS num_inc_min_vp_per_t10,
'num_inc_min_vp_per_t11' AS num_inc_min_vp_per_t11,
'num_inc_min_vp_per_t12' AS num_inc_min_vp_per_t12,
'num_inc_avg1_vp_per_t01' AS num_inc_avg1_vp_per_t01,
'num_inc_avg1_vp_per_t02' AS num_inc_avg1_vp_per_t02,
'num_inc_avg1_vp_per_t03' AS num_inc_avg1_vp_per_t03,
'num_inc_avg1_vp_per_t04' AS num_inc_avg1_vp_per_t04,
'num_inc_avg1_vp_per_t05' AS num_inc_avg1_vp_per_t05,
'num_inc_avg1_vp_per_t06' AS num_inc_avg1_vp_per_t06,
'num_inc_avg1_vp_per_t07' AS num_inc_avg1_vp_per_t07,
'num_inc_avg1_vp_per_t08' AS num_inc_avg1_vp_per_t08,
'num_inc_avg1_vp_per_t09' AS num_inc_avg1_vp_per_t09,
'num_inc_avg1_vp_per_t10' AS num_inc_avg1_vp_per_t10,
'num_inc_avg1_vp_per_t11' AS num_inc_avg1_vp_per_t11,
'num_inc_avg1_vp_per_t12' AS num_inc_avg1_vp_per_t12,
'num_inc_avg2_vp_per_t01' AS num_inc_avg2_vp_per_t01,
'num_inc_avg2_vp_per_t02' AS num_inc_avg2_vp_per_t02,
'num_inc_avg2_vp_per_t03' AS num_inc_avg2_vp_per_t03,
'num_inc_avg2_vp_per_t04' AS num_inc_avg2_vp_per_t04,
'num_inc_avg2_vp_per_t05' AS num_inc_avg2_vp_per_t05,
'num_inc_avg2_vp_per_t06' AS num_inc_avg2_vp_per_t06,
'num_inc_avg2_vp_per_t07' AS num_inc_avg2_vp_per_t07,
'num_inc_avg2_vp_per_t08' AS num_inc_avg2_vp_per_t08,
'num_inc_avg2_vp_per_t09' AS num_inc_avg2_vp_per_t09,
'num_inc_avg2_vp_per_t10' AS num_inc_avg2_vp_per_t10,
'num_inc_avg2_vp_per_t11' AS num_inc_avg2_vp_per_t11,
'num_inc_avg2_vp_per_t12' AS num_inc_avg2_vp_per_t12,
'num_inc_max_vp_mes_t01' AS num_inc_max_vp_mes_t01,
'num_inc_max_vp_mes_t02' AS num_inc_max_vp_mes_t02,
'num_inc_max_vp_mes_t03' AS num_inc_max_vp_mes_t03,
'num_inc_max_vp_mes_t04' AS num_inc_max_vp_mes_t04,
'num_inc_max_vp_mes_t05' AS num_inc_max_vp_mes_t05,
'num_inc_max_vp_mes_t06' AS num_inc_max_vp_mes_t06,
'num_inc_max_vp_mes_t07' AS num_inc_max_vp_mes_t07,
'num_inc_max_vp_mes_t08' AS num_inc_max_vp_mes_t08,
'num_inc_max_vp_mes_t09' AS num_inc_max_vp_mes_t09,
'num_inc_max_vp_mes_t10' AS num_inc_max_vp_mes_t10,
'num_inc_max_vp_mes_t11' AS num_inc_max_vp_mes_t11,
'num_inc_max_vp_mes_t12' AS num_inc_max_vp_mes_t12,
'num_inc_min_vp_mes_t01' AS num_inc_min_vp_mes_t01,
'num_inc_min_vp_mes_t02' AS num_inc_min_vp_mes_t02,
'num_inc_min_vp_mes_t03' AS num_inc_min_vp_mes_t03,
'num_inc_min_vp_mes_t04' AS num_inc_min_vp_mes_t04,
'num_inc_min_vp_mes_t05' AS num_inc_min_vp_mes_t05,
'num_inc_min_vp_mes_t06' AS num_inc_min_vp_mes_t06,
'num_inc_min_vp_mes_t07' AS num_inc_min_vp_mes_t07,
'num_inc_min_vp_mes_t08' AS num_inc_min_vp_mes_t08,
'num_inc_min_vp_mes_t09' AS num_inc_min_vp_mes_t09,
'num_inc_min_vp_mes_t10' AS num_inc_min_vp_mes_t10,
'num_inc_min_vp_mes_t11' AS num_inc_min_vp_mes_t11,
'num_inc_min_vp_mes_t12' AS num_inc_min_vp_mes_t12,
'num_inc_avg1_vp_mes_t01' AS num_inc_avg1_vp_mes_t01,
'num_inc_avg1_vp_mes_t02' AS num_inc_avg1_vp_mes_t02,
'num_inc_avg1_vp_mes_t03' AS num_inc_avg1_vp_mes_t03,
'num_inc_avg1_vp_mes_t04' AS num_inc_avg1_vp_mes_t04,
'num_inc_avg1_vp_mes_t05' AS num_inc_avg1_vp_mes_t05,
'num_inc_avg1_vp_mes_t06' AS num_inc_avg1_vp_mes_t06,
'num_inc_avg1_vp_mes_t07' AS num_inc_avg1_vp_mes_t07,
'num_inc_avg1_vp_mes_t08' AS num_inc_avg1_vp_mes_t08,
'num_inc_avg1_vp_mes_t09' AS num_inc_avg1_vp_mes_t09,
'num_inc_avg1_vp_mes_t10' AS num_inc_avg1_vp_mes_t10,
'num_inc_avg1_vp_mes_t11' AS num_inc_avg1_vp_mes_t11,
'num_inc_avg1_vp_mes_t12' AS num_inc_avg1_vp_mes_t12,
'num_inc_avg2_vp_mes_t01' AS num_inc_avg2_vp_mes_t01,
'num_inc_avg2_vp_mes_t02' AS num_inc_avg2_vp_mes_t02,
'num_inc_avg2_vp_mes_t03' AS num_inc_avg2_vp_mes_t03,
'num_inc_avg2_vp_mes_t04' AS num_inc_avg2_vp_mes_t04,
'num_inc_avg2_vp_mes_t05' AS num_inc_avg2_vp_mes_t05,
'num_inc_avg2_vp_mes_t06' AS num_inc_avg2_vp_mes_t06,
'num_inc_avg2_vp_mes_t07' AS num_inc_avg2_vp_mes_t07,
'num_inc_avg2_vp_mes_t08' AS num_inc_avg2_vp_mes_t08,
'num_inc_avg2_vp_mes_t09' AS num_inc_avg2_vp_mes_t09,
'num_inc_avg2_vp_mes_t10' AS num_inc_avg2_vp_mes_t10,
'num_inc_avg2_vp_mes_t11' AS num_inc_avg2_vp_mes_t11,
'num_inc_avg2_vp_mes_t12' AS num_inc_avg2_vp_mes_t12,
'num_dec_max_vp_per_t01' AS num_dec_max_vp_per_t01,
'num_dec_max_vp_per_t02' AS num_dec_max_vp_per_t02,
'num_dec_max_vp_per_t03' AS num_dec_max_vp_per_t03,
'num_dec_max_vp_per_t04' AS num_dec_max_vp_per_t04,
'num_dec_max_vp_per_t05' AS num_dec_max_vp_per_t05,
'num_dec_max_vp_per_t06' AS num_dec_max_vp_per_t06,
'num_dec_max_vp_per_t07' AS num_dec_max_vp_per_t07,
'num_dec_max_vp_per_t08' AS num_dec_max_vp_per_t08,
'num_dec_max_vp_per_t09' AS num_dec_max_vp_per_t09,
'num_dec_max_vp_per_t10' AS num_dec_max_vp_per_t10,
'num_dec_max_vp_per_t11' AS num_dec_max_vp_per_t11,
'num_dec_max_vp_per_t12' AS num_dec_max_vp_per_t12,
'num_dec_min_vp_per_t01' AS num_dec_min_vp_per_t01,
'num_dec_min_vp_per_t02' AS num_dec_min_vp_per_t02,
'num_dec_min_vp_per_t03' AS num_dec_min_vp_per_t03,
'num_dec_min_vp_per_t04' AS num_dec_min_vp_per_t04,
'num_dec_min_vp_per_t05' AS num_dec_min_vp_per_t05,
'num_dec_min_vp_per_t06' AS num_dec_min_vp_per_t06,
'num_dec_min_vp_per_t07' AS num_dec_min_vp_per_t07,
'num_dec_min_vp_per_t08' AS num_dec_min_vp_per_t08,
'num_dec_min_vp_per_t09' AS num_dec_min_vp_per_t09,
'num_dec_min_vp_per_t10' AS num_dec_min_vp_per_t10,
'num_dec_min_vp_per_t11' AS num_dec_min_vp_per_t11,
'num_dec_min_vp_per_t12' AS num_dec_min_vp_per_t12,
'num_dec_avg1_vp_per_t01' AS num_dec_avg1_vp_per_t01,
'num_dec_avg1_vp_per_t02' AS num_dec_avg1_vp_per_t02,
'num_dec_avg1_vp_per_t03' AS num_dec_avg1_vp_per_t03,
'num_dec_avg1_vp_per_t04' AS num_dec_avg1_vp_per_t04,
'num_dec_avg1_vp_per_t05' AS num_dec_avg1_vp_per_t05,
'num_dec_avg1_vp_per_t06' AS num_dec_avg1_vp_per_t06,
'num_dec_avg1_vp_per_t07' AS num_dec_avg1_vp_per_t07,
'num_dec_avg1_vp_per_t08' AS num_dec_avg1_vp_per_t08,
'num_dec_avg1_vp_per_t09' AS num_dec_avg1_vp_per_t09,
'num_dec_avg1_vp_per_t10' AS num_dec_avg1_vp_per_t10,
'num_dec_avg1_vp_per_t11' AS num_dec_avg1_vp_per_t11,
'num_dec_avg1_vp_per_t12' AS num_dec_avg1_vp_per_t12,
'num_dec_avg2_vp_per_t01' AS num_dec_avg2_vp_per_t01,
'num_dec_avg2_vp_per_t02' AS num_dec_avg2_vp_per_t02,
'num_dec_avg2_vp_per_t03' AS num_dec_avg2_vp_per_t03,
'num_dec_avg2_vp_per_t04' AS num_dec_avg2_vp_per_t04,
'num_dec_avg2_vp_per_t05' AS num_dec_avg2_vp_per_t05,
'num_dec_avg2_vp_per_t06' AS num_dec_avg2_vp_per_t06,
'num_dec_avg2_vp_per_t07' AS num_dec_avg2_vp_per_t07,
'num_dec_avg2_vp_per_t08' AS num_dec_avg2_vp_per_t08,
'num_dec_avg2_vp_per_t09' AS num_dec_avg2_vp_per_t09,
'num_dec_avg2_vp_per_t10' AS num_dec_avg2_vp_per_t10,
'num_dec_avg2_vp_per_t11' AS num_dec_avg2_vp_per_t11,
'num_dec_avg2_vp_per_t12' AS num_dec_avg2_vp_per_t12,
'num_dec_max_vp_mes_t01' AS num_dec_max_vp_mes_t01,
'num_dec_max_vp_mes_t02' AS num_dec_max_vp_mes_t02,
'num_dec_max_vp_mes_t03' AS num_dec_max_vp_mes_t03,
'num_dec_max_vp_mes_t04' AS num_dec_max_vp_mes_t04,
'num_dec_max_vp_mes_t05' AS num_dec_max_vp_mes_t05,
'num_dec_max_vp_mes_t06' AS num_dec_max_vp_mes_t06,
'num_dec_max_vp_mes_t07' AS num_dec_max_vp_mes_t07,
'num_dec_max_vp_mes_t08' AS num_dec_max_vp_mes_t08,
'num_dec_max_vp_mes_t09' AS num_dec_max_vp_mes_t09,
'num_dec_max_vp_mes_t10' AS num_dec_max_vp_mes_t10,
'num_dec_max_vp_mes_t11' AS num_dec_max_vp_mes_t11,
'num_dec_max_vp_mes_t12' AS num_dec_max_vp_mes_t12,
'num_dec_min_vp_mes_t01' AS num_dec_min_vp_mes_t01,
'num_dec_min_vp_mes_t02' AS num_dec_min_vp_mes_t02,
'num_dec_min_vp_mes_t03' AS num_dec_min_vp_mes_t03,
'num_dec_min_vp_mes_t04' AS num_dec_min_vp_mes_t04,
'num_dec_min_vp_mes_t05' AS num_dec_min_vp_mes_t05,
'num_dec_min_vp_mes_t06' AS num_dec_min_vp_mes_t06,
'num_dec_min_vp_mes_t07' AS num_dec_min_vp_mes_t07,
'num_dec_min_vp_mes_t08' AS num_dec_min_vp_mes_t08,
'num_dec_min_vp_mes_t09' AS num_dec_min_vp_mes_t09,
'num_dec_min_vp_mes_t10' AS num_dec_min_vp_mes_t10,
'num_dec_min_vp_mes_t11' AS num_dec_min_vp_mes_t11,
'num_dec_min_vp_mes_t12' AS num_dec_min_vp_mes_t12,
'num_dec_avg1_vp_mes_t01' AS num_dec_avg1_vp_mes_t01,
'num_dec_avg1_vp_mes_t02' AS num_dec_avg1_vp_mes_t02,
'num_dec_avg1_vp_mes_t03' AS num_dec_avg1_vp_mes_t03,
'num_dec_avg1_vp_mes_t04' AS num_dec_avg1_vp_mes_t04,
'num_dec_avg1_vp_mes_t05' AS num_dec_avg1_vp_mes_t05,
'num_dec_avg1_vp_mes_t06' AS num_dec_avg1_vp_mes_t06,
'num_dec_avg1_vp_mes_t07' AS num_dec_avg1_vp_mes_t07,
'num_dec_avg1_vp_mes_t08' AS num_dec_avg1_vp_mes_t08,
'num_dec_avg1_vp_mes_t09' AS num_dec_avg1_vp_mes_t09,
'num_dec_avg1_vp_mes_t10' AS num_dec_avg1_vp_mes_t10,
'num_dec_avg1_vp_mes_t11' AS num_dec_avg1_vp_mes_t11,
'num_dec_avg1_vp_mes_t12' AS num_dec_avg1_vp_mes_t12,
'num_dec_avg2_vp_mes_t01' AS num_dec_avg2_vp_mes_t01,
'num_dec_avg2_vp_mes_t02' AS num_dec_avg2_vp_mes_t02,
'num_dec_avg2_vp_mes_t03' AS num_dec_avg2_vp_mes_t03,
'num_dec_avg2_vp_mes_t04' AS num_dec_avg2_vp_mes_t04,
'num_dec_avg2_vp_mes_t05' AS num_dec_avg2_vp_mes_t05,
'num_dec_avg2_vp_mes_t06' AS num_dec_avg2_vp_mes_t06,
'num_dec_avg2_vp_mes_t07' AS num_dec_avg2_vp_mes_t07,
'num_dec_avg2_vp_mes_t08' AS num_dec_avg2_vp_mes_t08,
'num_dec_avg2_vp_mes_t09' AS num_dec_avg2_vp_mes_t09,
'num_dec_avg2_vp_mes_t10' AS num_dec_avg2_vp_mes_t10,
'num_dec_avg2_vp_mes_t11' AS num_dec_avg2_vp_mes_t11,
'num_dec_avg2_vp_mes_t12' AS num_dec_avg2_vp_mes_t12;


INSERT INTO RSS_MCV_NEGOCIOS_VARIABLES3_VP_2
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
FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOS a
LEFT JOIN dbmymwork.JAT_MCV_VARIABLES3_VP_201910 b
on a.rfc=b.rfc and a.fecha=b.fecha
where a.fecha='201910';