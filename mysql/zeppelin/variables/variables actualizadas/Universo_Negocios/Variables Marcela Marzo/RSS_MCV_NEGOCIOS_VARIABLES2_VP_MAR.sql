%hive
DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_VARIABLES2_VP_MAR;

CREATE TABLE  RSS_MCV_NEGOCIOS_VARIABLES2_VP_MAR
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Marzo/RSS_MCV_NEGOCIOS_VARIABLES2_VP_MAR' AS
SELECT 
'fecha' AS fecha,
'rfc' as rfc , 
'max_dias_para_pago_t00' AS max_dias_para_pago_t00,
'max_dias_para_pago_t01' AS max_dias_para_pago_t01,
'max_dias_para_pago_t02' AS max_dias_para_pago_t02,
'max_dias_para_pago_t03' AS max_dias_para_pago_t03,
'max_dias_para_pago_t04' AS max_dias_para_pago_t04,
'max_dias_para_pago_t05' AS max_dias_para_pago_t05,
'max_dias_para_pago_t06' AS max_dias_para_pago_t06,
'max_dias_para_pago_t07' AS max_dias_para_pago_t07,
'max_dias_para_pago_t08' AS max_dias_para_pago_t08,
'max_dias_para_pago_t09' AS max_dias_para_pago_t09,
'max_dias_para_pago_t10' AS max_dias_para_pago_t10,
'max_dias_para_pago_t11' AS max_dias_para_pago_t11,
'max_dias_para_pago_t12' AS max_dias_para_pago_t12,
'max_vp_per_t00' AS max_vp_per_t00,
'max_vp_per_t01' AS max_vp_per_t01,
'max_vp_per_t02' AS max_vp_per_t02,
'max_vp_per_t03' AS max_vp_per_t03,
'max_vp_per_t04' AS max_vp_per_t04,
'max_vp_per_t05' AS max_vp_per_t05,
'max_vp_per_t06' AS max_vp_per_t06,
'max_vp_per_t07' AS max_vp_per_t07,
'max_vp_per_t08' AS max_vp_per_t08,
'max_vp_per_t09' AS max_vp_per_t09,
'max_vp_per_t10' AS max_vp_per_t10,
'max_vp_per_t11' AS max_vp_per_t11,
'max_vp_per_t12' AS max_vp_per_t12,
'min_vp_per_t00' AS min_vp_per_t00,
'min_vp_per_t01' AS min_vp_per_t01,
'min_vp_per_t02' AS min_vp_per_t02,
'min_vp_per_t03' AS min_vp_per_t03,
'min_vp_per_t04' AS min_vp_per_t04,
'min_vp_per_t05' AS min_vp_per_t05,
'min_vp_per_t06' AS min_vp_per_t06,
'min_vp_per_t07' AS min_vp_per_t07,
'min_vp_per_t08' AS min_vp_per_t08,
'min_vp_per_t09' AS min_vp_per_t09,
'min_vp_per_t10' AS min_vp_per_t10,
'min_vp_per_t11' AS min_vp_per_t11,
'min_vp_per_t12' AS min_vp_per_t12,
'avg1_vp_per_t00' AS avg1_vp_per_t00,
'avg1_vp_per_t01' AS avg1_vp_per_t01,
'avg1_vp_per_t02' AS avg1_vp_per_t02,
'avg1_vp_per_t03' AS avg1_vp_per_t03,
'avg1_vp_per_t04' AS avg1_vp_per_t04,
'avg1_vp_per_t05' AS avg1_vp_per_t05,
'avg1_vp_per_t06' AS avg1_vp_per_t06,
'avg1_vp_per_t07' AS avg1_vp_per_t07,
'avg1_vp_per_t08' AS avg1_vp_per_t08,
'avg1_vp_per_t09' AS avg1_vp_per_t09,
'avg1_vp_per_t10' AS avg1_vp_per_t10,
'avg1_vp_per_t11' AS avg1_vp_per_t11,
'avg1_vp_per_t12' AS avg1_vp_per_t12,
'avg2_vp_per_t00' AS avg2_vp_per_t00,
'avg2_vp_per_t01' AS avg2_vp_per_t01,
'avg2_vp_per_t02' AS avg2_vp_per_t02,
'avg2_vp_per_t03' AS avg2_vp_per_t03,
'avg2_vp_per_t04' AS avg2_vp_per_t04,
'avg2_vp_per_t05' AS avg2_vp_per_t05,
'avg2_vp_per_t06' AS avg2_vp_per_t06,
'avg2_vp_per_t07' AS avg2_vp_per_t07,
'avg2_vp_per_t08' AS avg2_vp_per_t08,
'avg2_vp_per_t09' AS avg2_vp_per_t09,
'avg2_vp_per_t10' AS avg2_vp_per_t10,
'avg2_vp_per_t11' AS avg2_vp_per_t11,
'avg2_vp_per_t12' AS avg2_vp_per_t12,
'max_vp_mes_t00' AS max_vp_mes_t00,
'max_vp_mes_t01' AS max_vp_mes_t01,
'max_vp_mes_t02' AS max_vp_mes_t02,
'max_vp_mes_t03' AS max_vp_mes_t03,
'max_vp_mes_t04' AS max_vp_mes_t04,
'max_vp_mes_t05' AS max_vp_mes_t05,
'max_vp_mes_t06' AS max_vp_mes_t06,
'max_vp_mes_t07' AS max_vp_mes_t07,
'max_vp_mes_t08' AS max_vp_mes_t08,
'max_vp_mes_t09' AS max_vp_mes_t09,
'max_vp_mes_t10' AS max_vp_mes_t10,
'max_vp_mes_t11' AS max_vp_mes_t11,
'max_vp_mes_t12' AS max_vp_mes_t12,
'min_vp_mes_t00' AS min_vp_mes_t00,
'min_vp_mes_t01' AS min_vp_mes_t01,
'min_vp_mes_t02' AS min_vp_mes_t02,
'min_vp_mes_t03' AS min_vp_mes_t03,
'min_vp_mes_t04' AS min_vp_mes_t04,
'min_vp_mes_t05' AS min_vp_mes_t05,
'min_vp_mes_t06' AS min_vp_mes_t06,
'min_vp_mes_t07' AS min_vp_mes_t07,
'min_vp_mes_t08' AS min_vp_mes_t08,
'min_vp_mes_t09' AS min_vp_mes_t09,
'min_vp_mes_t10' AS min_vp_mes_t10,
'min_vp_mes_t11' AS min_vp_mes_t11,
'min_vp_mes_t12' AS min_vp_mes_t12,
'avg1_vp_mes_t00' AS avg1_vp_mes_t00,
'avg1_vp_mes_t01' AS avg1_vp_mes_t01,
'avg1_vp_mes_t02' AS avg1_vp_mes_t02,
'avg1_vp_mes_t03' AS avg1_vp_mes_t03,
'avg1_vp_mes_t04' AS avg1_vp_mes_t04,
'avg1_vp_mes_t05' AS avg1_vp_mes_t05,
'avg1_vp_mes_t06' AS avg1_vp_mes_t06,
'avg1_vp_mes_t07' AS avg1_vp_mes_t07,
'avg1_vp_mes_t08' AS avg1_vp_mes_t08,
'avg1_vp_mes_t09' AS avg1_vp_mes_t09,
'avg1_vp_mes_t10' AS avg1_vp_mes_t10,
'avg1_vp_mes_t11' AS avg1_vp_mes_t11,
'avg1_vp_mes_t12' AS avg1_vp_mes_t12,
'avg2_vp_mes_t00' AS avg2_vp_mes_t00,
'avg2_vp_mes_t01' AS avg2_vp_mes_t01,
'avg2_vp_mes_t02' AS avg2_vp_mes_t02,
'avg2_vp_mes_t03' AS avg2_vp_mes_t03,
'avg2_vp_mes_t04' AS avg2_vp_mes_t04,
'avg2_vp_mes_t05' AS avg2_vp_mes_t05,
'avg2_vp_mes_t06' AS avg2_vp_mes_t06,
'avg2_vp_mes_t07' AS avg2_vp_mes_t07,
'avg2_vp_mes_t08' AS avg2_vp_mes_t08,
'avg2_vp_mes_t09' AS avg2_vp_mes_t09,
'avg2_vp_mes_t10' AS avg2_vp_mes_t10,
'avg2_vp_mes_t11' AS avg2_vp_mes_t11,
'avg2_vp_mes_t12' AS avg2_vp_mes_t12,
'mss_desde_max_vp_per_05pctmenos' AS mss_desde_max_vp_per_05pctmenos,
'mss_desde_max_vp_per_10pctmenos' AS mss_desde_max_vp_per_10pctmenos,
'mss_desde_max_vp_per_15pctmenos' AS mss_desde_max_vp_per_15pctmenos,
'mss_desde_max_vp_per_20pctmenos' AS mss_desde_max_vp_per_20pctmenos,
'mss_desde_min_vp_per_05pctmenos' AS mss_desde_min_vp_per_05pctmenos,
'mss_desde_min_vp_per_10pctmenos' AS mss_desde_min_vp_per_10pctmenos,
'mss_desde_min_vp_per_15pctmenos' AS mss_desde_min_vp_per_15pctmenos,
'mss_desde_min_vp_per_20pctmenos' AS mss_desde_min_vp_per_20pctmenos,
'mss_desde_avg1_vp_per_05pctmenos' AS mss_desde_avg1_vp_per_05pctmenos,
'mss_desde_avg1_vp_per_10pctmenos' AS mss_desde_avg1_vp_per_10pctmenos,
'mss_desde_avg1_vp_per_15pctmenos' AS mss_desde_avg1_vp_per_15pctmenos,
'mss_desde_avg1_vp_per_20pctmenos' AS mss_desde_avg1_vp_per_20pctmenos,
'mss_desde_avg2_vp_per_05pctmenos' AS mss_desde_avg2_vp_per_05pctmenos,
'mss_desde_avg2_vp_per_10pctmenos' AS mss_desde_avg2_vp_per_10pctmenos,
'mss_desde_avg2_vp_per_15pctmenos' AS mss_desde_avg2_vp_per_15pctmenos,
'mss_desde_avg2_vp_per_20pctmenos' AS mss_desde_avg2_vp_per_20pctmenos,
'mss_desde_max_vp_mes_05pctmenos' AS mss_desde_max_vp_mes_05pctmenos,
'mss_desde_max_vp_mes_10pctmenos' AS mss_desde_max_vp_mes_10pctmenos,
'mss_desde_max_vp_mes_15pctmenos' AS mss_desde_max_vp_mes_15pctmenos,
'mss_desde_max_vp_mes_20pctmenos' AS mss_desde_max_vp_mes_20pctmenos,
'mss_desde_min_vp_mes_05pctmenos' AS mss_desde_min_vp_mes_05pctmenos,
'mss_desde_min_vp_mes_10pctmenos' AS mss_desde_min_vp_mes_10pctmenos,
'mss_desde_min_vp_mes_15pctmenos' AS mss_desde_min_vp_mes_15pctmenos,
'mss_desde_min_vp_mes_20pctmenos' AS mss_desde_min_vp_mes_20pctmenos,
'mss_desde_avg1_vp_mes_05pctmenos' AS mss_desde_avg1_vp_mes_05pctmenos,
'mss_desde_avg1_vp_mes_10pctmenos' AS mss_desde_avg1_vp_mes_10pctmenos,
'mss_desde_avg1_vp_mes_15pctmenos' AS mss_desde_avg1_vp_mes_15pctmenos,
'mss_desde_avg1_vp_mes_20pctmenos' AS mss_desde_avg1_vp_mes_20pctmenos,
'mss_desde_avg2_vp_mes_05pctmenos' AS mss_desde_avg2_vp_mes_05pctmenos,
'mss_desde_avg2_vp_mes_10pctmenos' AS mss_desde_avg2_vp_mes_10pctmenos,
'mss_desde_avg2_vp_mes_15pctmenos' AS mss_desde_avg2_vp_mes_15pctmenos,
'mss_desde_avg2_vp_mes_20pctmenos' AS mss_desde_avg2_vp_mes_20pctmenos,
'avg_pnd_mas_max_dias_para_pago_u01' AS avg_pnd_mas_max_dias_para_pago_u01,
'avg_pnd_mas_max_dias_para_pago_u02' AS avg_pnd_mas_max_dias_para_pago_u02,
'avg_pnd_mas_max_dias_para_pago_u03' AS avg_pnd_mas_max_dias_para_pago_u03,
'avg_pnd_mas_max_dias_para_pago_u04' AS avg_pnd_mas_max_dias_para_pago_u04,
'avg_pnd_mas_max_dias_para_pago_u05' AS avg_pnd_mas_max_dias_para_pago_u05,
'avg_pnd_mas_max_dias_para_pago_u06' AS avg_pnd_mas_max_dias_para_pago_u06,
'avg_pnd_mas_max_dias_para_pago_u07' AS avg_pnd_mas_max_dias_para_pago_u07,
'avg_pnd_mas_max_dias_para_pago_u08' AS avg_pnd_mas_max_dias_para_pago_u08,
'avg_pnd_mas_max_dias_para_pago_u09' AS avg_pnd_mas_max_dias_para_pago_u09,
'avg_pnd_mas_max_dias_para_pago_u10' AS avg_pnd_mas_max_dias_para_pago_u10,
'avg_pnd_mas_max_dias_para_pago_u11' AS avg_pnd_mas_max_dias_para_pago_u11,
'avg_pnd_mas_max_dias_para_pago_u12' AS avg_pnd_mas_max_dias_para_pago_u12,
'avg_pnd_mas_max_vp_per_u01' AS avg_pnd_mas_max_vp_per_u01,
'avg_pnd_mas_max_vp_per_u02' AS avg_pnd_mas_max_vp_per_u02,
'avg_pnd_mas_max_vp_per_u03' AS avg_pnd_mas_max_vp_per_u03,
'avg_pnd_mas_max_vp_per_u04' AS avg_pnd_mas_max_vp_per_u04,
'avg_pnd_mas_max_vp_per_u05' AS avg_pnd_mas_max_vp_per_u05,
'avg_pnd_mas_max_vp_per_u06' AS avg_pnd_mas_max_vp_per_u06,
'avg_pnd_mas_max_vp_per_u07' AS avg_pnd_mas_max_vp_per_u07,
'avg_pnd_mas_max_vp_per_u08' AS avg_pnd_mas_max_vp_per_u08,
'avg_pnd_mas_max_vp_per_u09' AS avg_pnd_mas_max_vp_per_u09,
'avg_pnd_mas_max_vp_per_u10' AS avg_pnd_mas_max_vp_per_u10,
'avg_pnd_mas_max_vp_per_u11' AS avg_pnd_mas_max_vp_per_u11,
'avg_pnd_mas_max_vp_per_u12' AS avg_pnd_mas_max_vp_per_u12,
'avg_pnd_mas_min_vp_per_u01' AS avg_pnd_mas_min_vp_per_u01,
'avg_pnd_mas_min_vp_per_u02' AS avg_pnd_mas_min_vp_per_u02,
'avg_pnd_mas_min_vp_per_u03' AS avg_pnd_mas_min_vp_per_u03,
'avg_pnd_mas_min_vp_per_u04' AS avg_pnd_mas_min_vp_per_u04,
'avg_pnd_mas_min_vp_per_u05' AS avg_pnd_mas_min_vp_per_u05,
'avg_pnd_mas_min_vp_per_u06' AS avg_pnd_mas_min_vp_per_u06,
'avg_pnd_mas_min_vp_per_u07' AS avg_pnd_mas_min_vp_per_u07,
'avg_pnd_mas_min_vp_per_u08' AS avg_pnd_mas_min_vp_per_u08,
'avg_pnd_mas_min_vp_per_u09' AS avg_pnd_mas_min_vp_per_u09,
'avg_pnd_mas_min_vp_per_u10' AS avg_pnd_mas_min_vp_per_u10,
'avg_pnd_mas_min_vp_per_u11' AS avg_pnd_mas_min_vp_per_u11,
'avg_pnd_mas_min_vp_per_u12' AS avg_pnd_mas_min_vp_per_u12,
'avg_pnd_mas_avg1_vp_per_u01' AS avg_pnd_mas_avg1_vp_per_u01,
'avg_pnd_mas_avg1_vp_per_u02' AS avg_pnd_mas_avg1_vp_per_u02,
'avg_pnd_mas_avg1_vp_per_u03' AS avg_pnd_mas_avg1_vp_per_u03,
'avg_pnd_mas_avg1_vp_per_u04' AS avg_pnd_mas_avg1_vp_per_u04,
'avg_pnd_mas_avg1_vp_per_u05' AS avg_pnd_mas_avg1_vp_per_u05,
'avg_pnd_mas_avg1_vp_per_u06' AS avg_pnd_mas_avg1_vp_per_u06,
'avg_pnd_mas_avg1_vp_per_u07' AS avg_pnd_mas_avg1_vp_per_u07,
'avg_pnd_mas_avg1_vp_per_u08' AS avg_pnd_mas_avg1_vp_per_u08,
'avg_pnd_mas_avg1_vp_per_u09' AS avg_pnd_mas_avg1_vp_per_u09,
'avg_pnd_mas_avg1_vp_per_u10' AS avg_pnd_mas_avg1_vp_per_u10,
'avg_pnd_mas_avg1_vp_per_u11' AS avg_pnd_mas_avg1_vp_per_u11,
'avg_pnd_mas_avg1_vp_per_u12' AS avg_pnd_mas_avg1_vp_per_u12,
'avg_pnd_mas_avg2_vp_per_u01' AS avg_pnd_mas_avg2_vp_per_u01,
'avg_pnd_mas_avg2_vp_per_u02' AS avg_pnd_mas_avg2_vp_per_u02,
'avg_pnd_mas_avg2_vp_per_u03' AS avg_pnd_mas_avg2_vp_per_u03,
'avg_pnd_mas_avg2_vp_per_u04' AS avg_pnd_mas_avg2_vp_per_u04,
'avg_pnd_mas_avg2_vp_per_u05' AS avg_pnd_mas_avg2_vp_per_u05,
'avg_pnd_mas_avg2_vp_per_u06' AS avg_pnd_mas_avg2_vp_per_u06,
'avg_pnd_mas_avg2_vp_per_u07' AS avg_pnd_mas_avg2_vp_per_u07,
'avg_pnd_mas_avg2_vp_per_u08' AS avg_pnd_mas_avg2_vp_per_u08,
'avg_pnd_mas_avg2_vp_per_u09' AS avg_pnd_mas_avg2_vp_per_u09,
'avg_pnd_mas_avg2_vp_per_u10' AS avg_pnd_mas_avg2_vp_per_u10,
'avg_pnd_mas_avg2_vp_per_u11' AS avg_pnd_mas_avg2_vp_per_u11,
'avg_pnd_mas_avg2_vp_per_u12' AS avg_pnd_mas_avg2_vp_per_u12,
'avg_pnd_mas_max_vp_mes_u01' AS avg_pnd_mas_max_vp_mes_u01,
'avg_pnd_mas_max_vp_mes_u02' AS avg_pnd_mas_max_vp_mes_u02,
'avg_pnd_mas_max_vp_mes_u03' AS avg_pnd_mas_max_vp_mes_u03,
'avg_pnd_mas_max_vp_mes_u04' AS avg_pnd_mas_max_vp_mes_u04,
'avg_pnd_mas_max_vp_mes_u05' AS avg_pnd_mas_max_vp_mes_u05,
'avg_pnd_mas_max_vp_mes_u06' AS avg_pnd_mas_max_vp_mes_u06,
'avg_pnd_mas_max_vp_mes_u07' AS avg_pnd_mas_max_vp_mes_u07,
'avg_pnd_mas_max_vp_mes_u08' AS avg_pnd_mas_max_vp_mes_u08,
'avg_pnd_mas_max_vp_mes_u09' AS avg_pnd_mas_max_vp_mes_u09,
'avg_pnd_mas_max_vp_mes_u10' AS avg_pnd_mas_max_vp_mes_u10,
'avg_pnd_mas_max_vp_mes_u11' AS avg_pnd_mas_max_vp_mes_u11,
'avg_pnd_mas_max_vp_mes_u12' AS avg_pnd_mas_max_vp_mes_u12,
'avg_pnd_mas_min_vp_mes_u01' AS avg_pnd_mas_min_vp_mes_u01,
'avg_pnd_mas_min_vp_mes_u02' AS avg_pnd_mas_min_vp_mes_u02,
'avg_pnd_mas_min_vp_mes_u03' AS avg_pnd_mas_min_vp_mes_u03,
'avg_pnd_mas_min_vp_mes_u04' AS avg_pnd_mas_min_vp_mes_u04,
'avg_pnd_mas_min_vp_mes_u05' AS avg_pnd_mas_min_vp_mes_u05,
'avg_pnd_mas_min_vp_mes_u06' AS avg_pnd_mas_min_vp_mes_u06,
'avg_pnd_mas_min_vp_mes_u07' AS avg_pnd_mas_min_vp_mes_u07,
'avg_pnd_mas_min_vp_mes_u08' AS avg_pnd_mas_min_vp_mes_u08,
'avg_pnd_mas_min_vp_mes_u09' AS avg_pnd_mas_min_vp_mes_u09,
'avg_pnd_mas_min_vp_mes_u10' AS avg_pnd_mas_min_vp_mes_u10,
'avg_pnd_mas_min_vp_mes_u11' AS avg_pnd_mas_min_vp_mes_u11,
'avg_pnd_mas_min_vp_mes_u12' AS avg_pnd_mas_min_vp_mes_u12,
'avg_pnd_mas_avg1_vp_mes_u01' AS avg_pnd_mas_avg1_vp_mes_u01,
'avg_pnd_mas_avg1_vp_mes_u02' AS avg_pnd_mas_avg1_vp_mes_u02,
'avg_pnd_mas_avg1_vp_mes_u03' AS avg_pnd_mas_avg1_vp_mes_u03,
'avg_pnd_mas_avg1_vp_mes_u04' AS avg_pnd_mas_avg1_vp_mes_u04,
'avg_pnd_mas_avg1_vp_mes_u05' AS avg_pnd_mas_avg1_vp_mes_u05,
'avg_pnd_mas_avg1_vp_mes_u06' AS avg_pnd_mas_avg1_vp_mes_u06,
'avg_pnd_mas_avg1_vp_mes_u07' AS avg_pnd_mas_avg1_vp_mes_u07,
'avg_pnd_mas_avg1_vp_mes_u08' AS avg_pnd_mas_avg1_vp_mes_u08,
'avg_pnd_mas_avg1_vp_mes_u09' AS avg_pnd_mas_avg1_vp_mes_u09,
'avg_pnd_mas_avg1_vp_mes_u10' AS avg_pnd_mas_avg1_vp_mes_u10,
'avg_pnd_mas_avg1_vp_mes_u11' AS avg_pnd_mas_avg1_vp_mes_u11,
'avg_pnd_mas_avg1_vp_mes_u12' AS avg_pnd_mas_avg1_vp_mes_u12,
'avg_pnd_mas_avg2_vp_mes_u01' AS avg_pnd_mas_avg2_vp_mes_u01,
'avg_pnd_mas_avg2_vp_mes_u02' AS avg_pnd_mas_avg2_vp_mes_u02,
'avg_pnd_mas_avg2_vp_mes_u03' AS avg_pnd_mas_avg2_vp_mes_u03,
'avg_pnd_mas_avg2_vp_mes_u04' AS avg_pnd_mas_avg2_vp_mes_u04,
'avg_pnd_mas_avg2_vp_mes_u05' AS avg_pnd_mas_avg2_vp_mes_u05,
'avg_pnd_mas_avg2_vp_mes_u06' AS avg_pnd_mas_avg2_vp_mes_u06,
'avg_pnd_mas_avg2_vp_mes_u07' AS avg_pnd_mas_avg2_vp_mes_u07,
'avg_pnd_mas_avg2_vp_mes_u08' AS avg_pnd_mas_avg2_vp_mes_u08,
'avg_pnd_mas_avg2_vp_mes_u09' AS avg_pnd_mas_avg2_vp_mes_u09,
'avg_pnd_mas_avg2_vp_mes_u10' AS avg_pnd_mas_avg2_vp_mes_u10,
'avg_pnd_mas_avg2_vp_mes_u11' AS avg_pnd_mas_avg2_vp_mes_u11,
'avg_pnd_mas_avg2_vp_mes_u12' AS avg_pnd_mas_avg2_vp_mes_u12,
'avg_pnd_menos_max_dias_para_pago_u01' AS avg_pnd_menos_max_dias_para_pago_u01,
'avg_pnd_menos_max_dias_para_pago_u02' AS avg_pnd_menos_max_dias_para_pago_u02,
'avg_pnd_menos_max_dias_para_pago_u03' AS avg_pnd_menos_max_dias_para_pago_u03,
'avg_pnd_menos_max_dias_para_pago_u04' AS avg_pnd_menos_max_dias_para_pago_u04,
'avg_pnd_menos_max_dias_para_pago_u05' AS avg_pnd_menos_max_dias_para_pago_u05,
'avg_pnd_menos_max_dias_para_pago_u06' AS avg_pnd_menos_max_dias_para_pago_u06,
'avg_pnd_menos_max_dias_para_pago_u07' AS avg_pnd_menos_max_dias_para_pago_u07,
'avg_pnd_menos_max_dias_para_pago_u08' AS avg_pnd_menos_max_dias_para_pago_u08,
'avg_pnd_menos_max_dias_para_pago_u09' AS avg_pnd_menos_max_dias_para_pago_u09,
'avg_pnd_menos_max_dias_para_pago_u10' AS avg_pnd_menos_max_dias_para_pago_u10,
'avg_pnd_menos_max_dias_para_pago_u11' AS avg_pnd_menos_max_dias_para_pago_u11,
'avg_pnd_menos_max_dias_para_pago_u12' AS avg_pnd_menos_max_dias_para_pago_u12,
'avg_pnd_menos_max_vp_per_u01' AS avg_pnd_menos_max_vp_per_u01,
'avg_pnd_menos_max_vp_per_u02' AS avg_pnd_menos_max_vp_per_u02,
'avg_pnd_menos_max_vp_per_u03' AS avg_pnd_menos_max_vp_per_u03,
'avg_pnd_menos_max_vp_per_u04' AS avg_pnd_menos_max_vp_per_u04,
'avg_pnd_menos_max_vp_per_u05' AS avg_pnd_menos_max_vp_per_u05,
'avg_pnd_menos_max_vp_per_u06' AS avg_pnd_menos_max_vp_per_u06,
'avg_pnd_menos_max_vp_per_u07' AS avg_pnd_menos_max_vp_per_u07,
'avg_pnd_menos_max_vp_per_u08' AS avg_pnd_menos_max_vp_per_u08,
'avg_pnd_menos_max_vp_per_u09' AS avg_pnd_menos_max_vp_per_u09,
'avg_pnd_menos_max_vp_per_u10' AS avg_pnd_menos_max_vp_per_u10,
'avg_pnd_menos_max_vp_per_u11' AS avg_pnd_menos_max_vp_per_u11,
'avg_pnd_menos_max_vp_per_u12' AS avg_pnd_menos_max_vp_per_u12,
'avg_pnd_menos_min_vp_per_u01' AS avg_pnd_menos_min_vp_per_u01,
'avg_pnd_menos_min_vp_per_u02' AS avg_pnd_menos_min_vp_per_u02,
'avg_pnd_menos_min_vp_per_u03' AS avg_pnd_menos_min_vp_per_u03,
'avg_pnd_menos_min_vp_per_u04' AS avg_pnd_menos_min_vp_per_u04,
'avg_pnd_menos_min_vp_per_u05' AS avg_pnd_menos_min_vp_per_u05,
'avg_pnd_menos_min_vp_per_u06' AS avg_pnd_menos_min_vp_per_u06,
'avg_pnd_menos_min_vp_per_u07' AS avg_pnd_menos_min_vp_per_u07,
'avg_pnd_menos_min_vp_per_u08' AS avg_pnd_menos_min_vp_per_u08,
'avg_pnd_menos_min_vp_per_u09' AS avg_pnd_menos_min_vp_per_u09,
'avg_pnd_menos_min_vp_per_u10' AS avg_pnd_menos_min_vp_per_u10,
'avg_pnd_menos_min_vp_per_u11' AS avg_pnd_menos_min_vp_per_u11,
'avg_pnd_menos_min_vp_per_u12' AS avg_pnd_menos_min_vp_per_u12,
'avg_pnd_menos_avg1_vp_per_u01' AS avg_pnd_menos_avg1_vp_per_u01,
'avg_pnd_menos_avg1_vp_per_u02' AS avg_pnd_menos_avg1_vp_per_u02,
'avg_pnd_menos_avg1_vp_per_u03' AS avg_pnd_menos_avg1_vp_per_u03,
'avg_pnd_menos_avg1_vp_per_u04' AS avg_pnd_menos_avg1_vp_per_u04,
'avg_pnd_menos_avg1_vp_per_u05' AS avg_pnd_menos_avg1_vp_per_u05,
'avg_pnd_menos_avg1_vp_per_u06' AS avg_pnd_menos_avg1_vp_per_u06,
'avg_pnd_menos_avg1_vp_per_u07' AS avg_pnd_menos_avg1_vp_per_u07,
'avg_pnd_menos_avg1_vp_per_u08' AS avg_pnd_menos_avg1_vp_per_u08,
'avg_pnd_menos_avg1_vp_per_u09' AS avg_pnd_menos_avg1_vp_per_u09,
'avg_pnd_menos_avg1_vp_per_u10' AS avg_pnd_menos_avg1_vp_per_u10,
'avg_pnd_menos_avg1_vp_per_u11' AS avg_pnd_menos_avg1_vp_per_u11,
'avg_pnd_menos_avg1_vp_per_u12' AS avg_pnd_menos_avg1_vp_per_u12,
'avg_pnd_menos_avg2_vp_per_u01' AS avg_pnd_menos_avg2_vp_per_u01,
'avg_pnd_menos_avg2_vp_per_u02' AS avg_pnd_menos_avg2_vp_per_u02,
'avg_pnd_menos_avg2_vp_per_u03' AS avg_pnd_menos_avg2_vp_per_u03,
'avg_pnd_menos_avg2_vp_per_u04' AS avg_pnd_menos_avg2_vp_per_u04,
'avg_pnd_menos_avg2_vp_per_u05' AS avg_pnd_menos_avg2_vp_per_u05,
'avg_pnd_menos_avg2_vp_per_u06' AS avg_pnd_menos_avg2_vp_per_u06,
'avg_pnd_menos_avg2_vp_per_u07' AS avg_pnd_menos_avg2_vp_per_u07,
'avg_pnd_menos_avg2_vp_per_u08' AS avg_pnd_menos_avg2_vp_per_u08,
'avg_pnd_menos_avg2_vp_per_u09' AS avg_pnd_menos_avg2_vp_per_u09,
'avg_pnd_menos_avg2_vp_per_u10' AS avg_pnd_menos_avg2_vp_per_u10,
'avg_pnd_menos_avg2_vp_per_u11' AS avg_pnd_menos_avg2_vp_per_u11,
'avg_pnd_menos_avg2_vp_per_u12' AS avg_pnd_menos_avg2_vp_per_u12,
'avg_pnd_menos_max_vp_mes_u01' AS avg_pnd_menos_max_vp_mes_u01,
'avg_pnd_menos_max_vp_mes_u02' AS avg_pnd_menos_max_vp_mes_u02,
'avg_pnd_menos_max_vp_mes_u03' AS avg_pnd_menos_max_vp_mes_u03,
'avg_pnd_menos_max_vp_mes_u04' AS avg_pnd_menos_max_vp_mes_u04,
'avg_pnd_menos_max_vp_mes_u05' AS avg_pnd_menos_max_vp_mes_u05,
'avg_pnd_menos_max_vp_mes_u06' AS avg_pnd_menos_max_vp_mes_u06,
'avg_pnd_menos_max_vp_mes_u07' AS avg_pnd_menos_max_vp_mes_u07,
'avg_pnd_menos_max_vp_mes_u08' AS avg_pnd_menos_max_vp_mes_u08,
'avg_pnd_menos_max_vp_mes_u09' AS avg_pnd_menos_max_vp_mes_u09,
'avg_pnd_menos_max_vp_mes_u10' AS avg_pnd_menos_max_vp_mes_u10,
'avg_pnd_menos_max_vp_mes_u11' AS avg_pnd_menos_max_vp_mes_u11,
'avg_pnd_menos_max_vp_mes_u12' AS avg_pnd_menos_max_vp_mes_u12,
'avg_pnd_menos_min_vp_mes_u01' AS avg_pnd_menos_min_vp_mes_u01,
'avg_pnd_menos_min_vp_mes_u02' AS avg_pnd_menos_min_vp_mes_u02,
'avg_pnd_menos_min_vp_mes_u03' AS avg_pnd_menos_min_vp_mes_u03,
'avg_pnd_menos_min_vp_mes_u04' AS avg_pnd_menos_min_vp_mes_u04,
'avg_pnd_menos_min_vp_mes_u05' AS avg_pnd_menos_min_vp_mes_u05,
'avg_pnd_menos_min_vp_mes_u06' AS avg_pnd_menos_min_vp_mes_u06,
'avg_pnd_menos_min_vp_mes_u07' AS avg_pnd_menos_min_vp_mes_u07,
'avg_pnd_menos_min_vp_mes_u08' AS avg_pnd_menos_min_vp_mes_u08,
'avg_pnd_menos_min_vp_mes_u09' AS avg_pnd_menos_min_vp_mes_u09,
'avg_pnd_menos_min_vp_mes_u10' AS avg_pnd_menos_min_vp_mes_u10,
'avg_pnd_menos_min_vp_mes_u11' AS avg_pnd_menos_min_vp_mes_u11,
'avg_pnd_menos_min_vp_mes_u12' AS avg_pnd_menos_min_vp_mes_u12,
'avg_pnd_menos_avg1_vp_mes_u01' AS avg_pnd_menos_avg1_vp_mes_u01,
'avg_pnd_menos_avg1_vp_mes_u02' AS avg_pnd_menos_avg1_vp_mes_u02,
'avg_pnd_menos_avg1_vp_mes_u03' AS avg_pnd_menos_avg1_vp_mes_u03,
'avg_pnd_menos_avg1_vp_mes_u04' AS avg_pnd_menos_avg1_vp_mes_u04,
'avg_pnd_menos_avg1_vp_mes_u05' AS avg_pnd_menos_avg1_vp_mes_u05,
'avg_pnd_menos_avg1_vp_mes_u06' AS avg_pnd_menos_avg1_vp_mes_u06,
'avg_pnd_menos_avg1_vp_mes_u07' AS avg_pnd_menos_avg1_vp_mes_u07,
'avg_pnd_menos_avg1_vp_mes_u08' AS avg_pnd_menos_avg1_vp_mes_u08,
'avg_pnd_menos_avg1_vp_mes_u09' AS avg_pnd_menos_avg1_vp_mes_u09,
'avg_pnd_menos_avg1_vp_mes_u10' AS avg_pnd_menos_avg1_vp_mes_u10,
'avg_pnd_menos_avg1_vp_mes_u11' AS avg_pnd_menos_avg1_vp_mes_u11,
'avg_pnd_menos_avg1_vp_mes_u12' AS avg_pnd_menos_avg1_vp_mes_u12,
'avg_pnd_menos_avg2_vp_mes_u01' AS avg_pnd_menos_avg2_vp_mes_u01,
'avg_pnd_menos_avg2_vp_mes_u02' AS avg_pnd_menos_avg2_vp_mes_u02,
'avg_pnd_menos_avg2_vp_mes_u03' AS avg_pnd_menos_avg2_vp_mes_u03,
'avg_pnd_menos_avg2_vp_mes_u04' AS avg_pnd_menos_avg2_vp_mes_u04,
'avg_pnd_menos_avg2_vp_mes_u05' AS avg_pnd_menos_avg2_vp_mes_u05,
'avg_pnd_menos_avg2_vp_mes_u06' AS avg_pnd_menos_avg2_vp_mes_u06,
'avg_pnd_menos_avg2_vp_mes_u07' AS avg_pnd_menos_avg2_vp_mes_u07,
'avg_pnd_menos_avg2_vp_mes_u08' AS avg_pnd_menos_avg2_vp_mes_u08,
'avg_pnd_menos_avg2_vp_mes_u09' AS avg_pnd_menos_avg2_vp_mes_u09,
'avg_pnd_menos_avg2_vp_mes_u10' AS avg_pnd_menos_avg2_vp_mes_u10,
'avg_pnd_menos_avg2_vp_mes_u11' AS avg_pnd_menos_avg2_vp_mes_u11,
'avg_pnd_menos_avg2_vp_mes_u12' AS avg_pnd_menos_avg2_vp_mes_u12;
INSERT INTO RSS_MCV_NEGOCIOS_VARIABLES2_VP_MAR
SELECT
a.fecha,
a.rfc , 
b.max_dias_para_pago_t00,
b.max_dias_para_pago_t01,
b.max_dias_para_pago_t02,
b.max_dias_para_pago_t03,
b.max_dias_para_pago_t04,
b.max_dias_para_pago_t05,
b.max_dias_para_pago_t06,
b.max_dias_para_pago_t07,
b.max_dias_para_pago_t08,
b.max_dias_para_pago_t09,
b.max_dias_para_pago_t10,
b.max_dias_para_pago_t11,
b.max_dias_para_pago_t12,
b.max_vp_per_t00,
b.max_vp_per_t01,
b.max_vp_per_t02,
b.max_vp_per_t03,
b.max_vp_per_t04,
b.max_vp_per_t05,
b.max_vp_per_t06,
b.max_vp_per_t07,
b.max_vp_per_t08,
b.max_vp_per_t09,
b.max_vp_per_t10,
b.max_vp_per_t11,
b.max_vp_per_t12,
b.min_vp_per_t00,
b.min_vp_per_t01,
b.min_vp_per_t02,
b.min_vp_per_t03,
b.min_vp_per_t04,
b.min_vp_per_t05,
b.min_vp_per_t06,
b.min_vp_per_t07,
b.min_vp_per_t08,
b.min_vp_per_t09,
b.min_vp_per_t10,
b.min_vp_per_t11,
b.min_vp_per_t12,
b.avg1_vp_per_t00,
b.avg1_vp_per_t01,
b.avg1_vp_per_t02,
b.avg1_vp_per_t03,
b.avg1_vp_per_t04,
b.avg1_vp_per_t05,
b.avg1_vp_per_t06,
b.avg1_vp_per_t07,
b.avg1_vp_per_t08,
b.avg1_vp_per_t09,
b.avg1_vp_per_t10,
b.avg1_vp_per_t11,
b.avg1_vp_per_t12,
b.avg2_vp_per_t00,
b.avg2_vp_per_t01,
b.avg2_vp_per_t02,
b.avg2_vp_per_t03,
b.avg2_vp_per_t04,
b.avg2_vp_per_t05,
b.avg2_vp_per_t06,
b.avg2_vp_per_t07,
b.avg2_vp_per_t08,
b.avg2_vp_per_t09,
b.avg2_vp_per_t10,
b.avg2_vp_per_t11,
b.avg2_vp_per_t12,
b.max_vp_mes_t00,
b.max_vp_mes_t01,
b.max_vp_mes_t02,
b.max_vp_mes_t03,
b.max_vp_mes_t04,
b.max_vp_mes_t05,
b.max_vp_mes_t06,
b.max_vp_mes_t07,
b.max_vp_mes_t08,
b.max_vp_mes_t09,
b.max_vp_mes_t10,
b.max_vp_mes_t11,
b.max_vp_mes_t12,
b.min_vp_mes_t00,
b.min_vp_mes_t01,
b.min_vp_mes_t02,
b.min_vp_mes_t03,
b.min_vp_mes_t04,
b.min_vp_mes_t05,
b.min_vp_mes_t06,
b.min_vp_mes_t07,
b.min_vp_mes_t08,
b.min_vp_mes_t09,
b.min_vp_mes_t10,
b.min_vp_mes_t11,
b.min_vp_mes_t12,
b.avg1_vp_mes_t00,
b.avg1_vp_mes_t01,
b.avg1_vp_mes_t02,
b.avg1_vp_mes_t03,
b.avg1_vp_mes_t04,
b.avg1_vp_mes_t05,
b.avg1_vp_mes_t06,
b.avg1_vp_mes_t07,
b.avg1_vp_mes_t08,
b.avg1_vp_mes_t09,
b.avg1_vp_mes_t10,
b.avg1_vp_mes_t11,
b.avg1_vp_mes_t12,
b.avg2_vp_mes_t00,
b.avg2_vp_mes_t01,
b.avg2_vp_mes_t02,
b.avg2_vp_mes_t03,
b.avg2_vp_mes_t04,
b.avg2_vp_mes_t05,
b.avg2_vp_mes_t06,
b.avg2_vp_mes_t07,
b.avg2_vp_mes_t08,
b.avg2_vp_mes_t09,
b.avg2_vp_mes_t10,
b.avg2_vp_mes_t11,
b.avg2_vp_mes_t12,
b.mss_desde_max_vp_per_05pctmenos,
b.mss_desde_max_vp_per_10pctmenos,
b.mss_desde_max_vp_per_15pctmenos,
b.mss_desde_max_vp_per_20pctmenos,
b.mss_desde_min_vp_per_05pctmenos,
b.mss_desde_min_vp_per_10pctmenos,
b.mss_desde_min_vp_per_15pctmenos,
b.mss_desde_min_vp_per_20pctmenos,
b.mss_desde_avg1_vp_per_05pctmenos,
b.mss_desde_avg1_vp_per_10pctmenos,
b.mss_desde_avg1_vp_per_15pctmenos,
b.mss_desde_avg1_vp_per_20pctmenos,
b.mss_desde_avg2_vp_per_05pctmenos,
b.mss_desde_avg2_vp_per_10pctmenos,
b.mss_desde_avg2_vp_per_15pctmenos,
b.mss_desde_avg2_vp_per_20pctmenos,
b.mss_desde_max_vp_mes_05pctmenos,
b.mss_desde_max_vp_mes_10pctmenos,
b.mss_desde_max_vp_mes_15pctmenos,
b.mss_desde_max_vp_mes_20pctmenos,
b.mss_desde_min_vp_mes_05pctmenos,
b.mss_desde_min_vp_mes_10pctmenos,
b.mss_desde_min_vp_mes_15pctmenos,
b.mss_desde_min_vp_mes_20pctmenos,
b.mss_desde_avg1_vp_mes_05pctmenos,
b.mss_desde_avg1_vp_mes_10pctmenos,
b.mss_desde_avg1_vp_mes_15pctmenos,
b.mss_desde_avg1_vp_mes_20pctmenos,
b.mss_desde_avg2_vp_mes_05pctmenos,
b.mss_desde_avg2_vp_mes_10pctmenos,
b.mss_desde_avg2_vp_mes_15pctmenos,
b.mss_desde_avg2_vp_mes_20pctmenos,
b.avg_pnd_mas_max_dias_para_pago_u01,
b.avg_pnd_mas_max_dias_para_pago_u02,
b.avg_pnd_mas_max_dias_para_pago_u03,
b.avg_pnd_mas_max_dias_para_pago_u04,
b.avg_pnd_mas_max_dias_para_pago_u05,
b.avg_pnd_mas_max_dias_para_pago_u06,
b.avg_pnd_mas_max_dias_para_pago_u07,
b.avg_pnd_mas_max_dias_para_pago_u08,
b.avg_pnd_mas_max_dias_para_pago_u09,
b.avg_pnd_mas_max_dias_para_pago_u10,
b.avg_pnd_mas_max_dias_para_pago_u11,
b.avg_pnd_mas_max_dias_para_pago_u12,
b.avg_pnd_mas_max_vp_per_u01,
b.avg_pnd_mas_max_vp_per_u02,
b.avg_pnd_mas_max_vp_per_u03,
b.avg_pnd_mas_max_vp_per_u04,
b.avg_pnd_mas_max_vp_per_u05,
b.avg_pnd_mas_max_vp_per_u06,
b.avg_pnd_mas_max_vp_per_u07,
b.avg_pnd_mas_max_vp_per_u08,
b.avg_pnd_mas_max_vp_per_u09,
b.avg_pnd_mas_max_vp_per_u10,
b.avg_pnd_mas_max_vp_per_u11,
b.avg_pnd_mas_max_vp_per_u12,
b.avg_pnd_mas_min_vp_per_u01,
b.avg_pnd_mas_min_vp_per_u02,
b.avg_pnd_mas_min_vp_per_u03,
b.avg_pnd_mas_min_vp_per_u04,
b.avg_pnd_mas_min_vp_per_u05,
b.avg_pnd_mas_min_vp_per_u06,
b.avg_pnd_mas_min_vp_per_u07,
b.avg_pnd_mas_min_vp_per_u08,
b.avg_pnd_mas_min_vp_per_u09,
b.avg_pnd_mas_min_vp_per_u10,
b.avg_pnd_mas_min_vp_per_u11,
b.avg_pnd_mas_min_vp_per_u12,
b.avg_pnd_mas_avg1_vp_per_u01,
b.avg_pnd_mas_avg1_vp_per_u02,
b.avg_pnd_mas_avg1_vp_per_u03,
b.avg_pnd_mas_avg1_vp_per_u04,
b.avg_pnd_mas_avg1_vp_per_u05,
b.avg_pnd_mas_avg1_vp_per_u06,
b.avg_pnd_mas_avg1_vp_per_u07,
b.avg_pnd_mas_avg1_vp_per_u08,
b.avg_pnd_mas_avg1_vp_per_u09,
b.avg_pnd_mas_avg1_vp_per_u10,
b.avg_pnd_mas_avg1_vp_per_u11,
b.avg_pnd_mas_avg1_vp_per_u12,
b.avg_pnd_mas_avg2_vp_per_u01,
b.avg_pnd_mas_avg2_vp_per_u02,
b.avg_pnd_mas_avg2_vp_per_u03,
b.avg_pnd_mas_avg2_vp_per_u04,
b.avg_pnd_mas_avg2_vp_per_u05,
b.avg_pnd_mas_avg2_vp_per_u06,
b.avg_pnd_mas_avg2_vp_per_u07,
b.avg_pnd_mas_avg2_vp_per_u08,
b.avg_pnd_mas_avg2_vp_per_u09,
b.avg_pnd_mas_avg2_vp_per_u10,
b.avg_pnd_mas_avg2_vp_per_u11,
b.avg_pnd_mas_avg2_vp_per_u12,
b.avg_pnd_mas_max_vp_mes_u01,
b.avg_pnd_mas_max_vp_mes_u02,
b.avg_pnd_mas_max_vp_mes_u03,
b.avg_pnd_mas_max_vp_mes_u04,
b.avg_pnd_mas_max_vp_mes_u05,
b.avg_pnd_mas_max_vp_mes_u06,
b.avg_pnd_mas_max_vp_mes_u07,
b.avg_pnd_mas_max_vp_mes_u08,
b.avg_pnd_mas_max_vp_mes_u09,
b.avg_pnd_mas_max_vp_mes_u10,
b.avg_pnd_mas_max_vp_mes_u11,
b.avg_pnd_mas_max_vp_mes_u12,
b.avg_pnd_mas_min_vp_mes_u01,
b.avg_pnd_mas_min_vp_mes_u02,
b.avg_pnd_mas_min_vp_mes_u03,
b.avg_pnd_mas_min_vp_mes_u04,
b.avg_pnd_mas_min_vp_mes_u05,
b.avg_pnd_mas_min_vp_mes_u06,
b.avg_pnd_mas_min_vp_mes_u07,
b.avg_pnd_mas_min_vp_mes_u08,
b.avg_pnd_mas_min_vp_mes_u09,
b.avg_pnd_mas_min_vp_mes_u10,
b.avg_pnd_mas_min_vp_mes_u11,
b.avg_pnd_mas_min_vp_mes_u12,
b.avg_pnd_mas_avg1_vp_mes_u01,
b.avg_pnd_mas_avg1_vp_mes_u02,
b.avg_pnd_mas_avg1_vp_mes_u03,
b.avg_pnd_mas_avg1_vp_mes_u04,
b.avg_pnd_mas_avg1_vp_mes_u05,
b.avg_pnd_mas_avg1_vp_mes_u06,
b.avg_pnd_mas_avg1_vp_mes_u07,
b.avg_pnd_mas_avg1_vp_mes_u08,
b.avg_pnd_mas_avg1_vp_mes_u09,
b.avg_pnd_mas_avg1_vp_mes_u10,
b.avg_pnd_mas_avg1_vp_mes_u11,
b.avg_pnd_mas_avg1_vp_mes_u12,
b.avg_pnd_mas_avg2_vp_mes_u01,
b.avg_pnd_mas_avg2_vp_mes_u02,
b.avg_pnd_mas_avg2_vp_mes_u03,
b.avg_pnd_mas_avg2_vp_mes_u04,
b.avg_pnd_mas_avg2_vp_mes_u05,
b.avg_pnd_mas_avg2_vp_mes_u06,
b.avg_pnd_mas_avg2_vp_mes_u07,
b.avg_pnd_mas_avg2_vp_mes_u08,
b.avg_pnd_mas_avg2_vp_mes_u09,
b.avg_pnd_mas_avg2_vp_mes_u10,
b.avg_pnd_mas_avg2_vp_mes_u11,
b.avg_pnd_mas_avg2_vp_mes_u12,
b.avg_pnd_menos_max_dias_para_pago_u01,
b.avg_pnd_menos_max_dias_para_pago_u02,
b.avg_pnd_menos_max_dias_para_pago_u03,
b.avg_pnd_menos_max_dias_para_pago_u04,
b.avg_pnd_menos_max_dias_para_pago_u05,
b.avg_pnd_menos_max_dias_para_pago_u06,
b.avg_pnd_menos_max_dias_para_pago_u07,
b.avg_pnd_menos_max_dias_para_pago_u08,
b.avg_pnd_menos_max_dias_para_pago_u09,
b.avg_pnd_menos_max_dias_para_pago_u10,
b.avg_pnd_menos_max_dias_para_pago_u11,
b.avg_pnd_menos_max_dias_para_pago_u12,
b.avg_pnd_menos_max_vp_per_u01,
b.avg_pnd_menos_max_vp_per_u02,
b.avg_pnd_menos_max_vp_per_u03,
b.avg_pnd_menos_max_vp_per_u04,
b.avg_pnd_menos_max_vp_per_u05,
b.avg_pnd_menos_max_vp_per_u06,
b.avg_pnd_menos_max_vp_per_u07,
b.avg_pnd_menos_max_vp_per_u08,
b.avg_pnd_menos_max_vp_per_u09,
b.avg_pnd_menos_max_vp_per_u10,
b.avg_pnd_menos_max_vp_per_u11,
b.avg_pnd_menos_max_vp_per_u12,
b.avg_pnd_menos_min_vp_per_u01,
b.avg_pnd_menos_min_vp_per_u02,
b.avg_pnd_menos_min_vp_per_u03,
b.avg_pnd_menos_min_vp_per_u04,
b.avg_pnd_menos_min_vp_per_u05,
b.avg_pnd_menos_min_vp_per_u06,
b.avg_pnd_menos_min_vp_per_u07,
b.avg_pnd_menos_min_vp_per_u08,
b.avg_pnd_menos_min_vp_per_u09,
b.avg_pnd_menos_min_vp_per_u10,
b.avg_pnd_menos_min_vp_per_u11,
b.avg_pnd_menos_min_vp_per_u12,
b.avg_pnd_menos_avg1_vp_per_u01,
b.avg_pnd_menos_avg1_vp_per_u02,
b.avg_pnd_menos_avg1_vp_per_u03,
b.avg_pnd_menos_avg1_vp_per_u04,
b.avg_pnd_menos_avg1_vp_per_u05,
b.avg_pnd_menos_avg1_vp_per_u06,
b.avg_pnd_menos_avg1_vp_per_u07,
b.avg_pnd_menos_avg1_vp_per_u08,
b.avg_pnd_menos_avg1_vp_per_u09,
b.avg_pnd_menos_avg1_vp_per_u10,
b.avg_pnd_menos_avg1_vp_per_u11,
b.avg_pnd_menos_avg1_vp_per_u12,
b.avg_pnd_menos_avg2_vp_per_u01,
b.avg_pnd_menos_avg2_vp_per_u02,
b.avg_pnd_menos_avg2_vp_per_u03,
b.avg_pnd_menos_avg2_vp_per_u04,
b.avg_pnd_menos_avg2_vp_per_u05,
b.avg_pnd_menos_avg2_vp_per_u06,
b.avg_pnd_menos_avg2_vp_per_u07,
b.avg_pnd_menos_avg2_vp_per_u08,
b.avg_pnd_menos_avg2_vp_per_u09,
b.avg_pnd_menos_avg2_vp_per_u10,
b.avg_pnd_menos_avg2_vp_per_u11,
b.avg_pnd_menos_avg2_vp_per_u12,
b.avg_pnd_menos_max_vp_mes_u01,
b.avg_pnd_menos_max_vp_mes_u02,
b.avg_pnd_menos_max_vp_mes_u03,
b.avg_pnd_menos_max_vp_mes_u04,
b.avg_pnd_menos_max_vp_mes_u05,
b.avg_pnd_menos_max_vp_mes_u06,
b.avg_pnd_menos_max_vp_mes_u07,
b.avg_pnd_menos_max_vp_mes_u08,
b.avg_pnd_menos_max_vp_mes_u09,
b.avg_pnd_menos_max_vp_mes_u10,
b.avg_pnd_menos_max_vp_mes_u11,
b.avg_pnd_menos_max_vp_mes_u12,
b.avg_pnd_menos_min_vp_mes_u01,
b.avg_pnd_menos_min_vp_mes_u02,
b.avg_pnd_menos_min_vp_mes_u03,
b.avg_pnd_menos_min_vp_mes_u04,
b.avg_pnd_menos_min_vp_mes_u05,
b.avg_pnd_menos_min_vp_mes_u06,
b.avg_pnd_menos_min_vp_mes_u07,
b.avg_pnd_menos_min_vp_mes_u08,
b.avg_pnd_menos_min_vp_mes_u09,
b.avg_pnd_menos_min_vp_mes_u10,
b.avg_pnd_menos_min_vp_mes_u11,
b.avg_pnd_menos_min_vp_mes_u12,
b.avg_pnd_menos_avg1_vp_mes_u01,
b.avg_pnd_menos_avg1_vp_mes_u02,
b.avg_pnd_menos_avg1_vp_mes_u03,
b.avg_pnd_menos_avg1_vp_mes_u04,
b.avg_pnd_menos_avg1_vp_mes_u05,
b.avg_pnd_menos_avg1_vp_mes_u06,
b.avg_pnd_menos_avg1_vp_mes_u07,
b.avg_pnd_menos_avg1_vp_mes_u08,
b.avg_pnd_menos_avg1_vp_mes_u09,
b.avg_pnd_menos_avg1_vp_mes_u10,
b.avg_pnd_menos_avg1_vp_mes_u11,
b.avg_pnd_menos_avg1_vp_mes_u12,
b.avg_pnd_menos_avg2_vp_mes_u01,
b.avg_pnd_menos_avg2_vp_mes_u02,
b.avg_pnd_menos_avg2_vp_mes_u03,
b.avg_pnd_menos_avg2_vp_mes_u04,
b.avg_pnd_menos_avg2_vp_mes_u05,
b.avg_pnd_menos_avg2_vp_mes_u06,
b.avg_pnd_menos_avg2_vp_mes_u07,
b.avg_pnd_menos_avg2_vp_mes_u08,
b.avg_pnd_menos_avg2_vp_mes_u09,
b.avg_pnd_menos_avg2_vp_mes_u10,
b.avg_pnd_menos_avg2_vp_mes_u11,
b.avg_pnd_menos_avg2_vp_mes_u12

FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOS a
LEFT JOIN dbmymwork.JAT_MCV_VARIABLES2_VP_201907 b
on a.rfc=b.rfc and a.fecha=b.fecha
where a.fecha = '201903';