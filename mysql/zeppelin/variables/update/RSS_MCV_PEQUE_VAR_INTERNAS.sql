%hive

INSERT INTO RSS_MCV_PEQUE_VAR_INTERNAS

ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_VAR_INTERNAS' AS
SELECT 
a.fecha,
a.rfc ,  
b.util_interna_t00,
b.util_interna_t01,
b.util_interna_t02,
b.util_interna_t03,
b.util_interna_t04,
b.util_interna_t05,
b.util_interna_t06,
b.util_interna_t07,
b.util_interna_t08,
b.util_interna_t09,
b.util_interna_t10,
b.util_interna_t11,
b.util_interna_t12,
b.mss_desde_util_80mas,
b.mss_desde_util_85mas,
b.mss_desde_util_90mas,
b.mss_desde_util_95mas,
b.max_util_interna_u00m,
b.max_util_interna_u01m,
b.max_util_interna_u02m,
b.max_util_interna_u03m,
b.max_util_interna_u04m,
b.max_util_interna_u05m,
b.max_util_interna_u06m,
b.max_util_interna_u07m,
b.max_util_interna_u08m,
b.max_util_interna_u09m,
b.max_util_interna_u10m,
b.max_util_interna_u11m,
b.max_util_interna_u12m,
b.min_util_interna_u01m,
b.min_util_interna_u02m,
b.min_util_interna_u03m,
b.min_util_interna_u04m,
b.min_util_interna_u05m,
b.min_util_interna_u06m,
b.min_util_interna_u07m,
b.min_util_interna_u08m,
b.min_util_interna_u09m,
b.min_util_interna_u10m,
b.min_util_interna_u11m,
b.min_util_interna_u12m,
b.avg_util_interna_u01m,
b.avg_util_interna_u02m,
b.avg_util_interna_u03m,
b.avg_util_interna_u04m,
b.avg_util_interna_u05m,
b.avg_util_interna_u06m,
b.avg_util_interna_u07m,
b.avg_util_interna_u08m,
b.avg_util_interna_u09m,
b.avg_util_interna_u10m,
b.avg_util_interna_u11m,
b.avg_util_interna_u12m,
b.avg_pnd_mas_util_interna_u01,
b.avg_pnd_mas_util_interna_u02,
b.avg_pnd_mas_util_interna_u03,
b.avg_pnd_mas_util_interna_u04,
b.avg_pnd_mas_util_interna_u05,
b.avg_pnd_mas_util_interna_u06,
b.avg_pnd_mas_util_interna_u07,
b.avg_pnd_mas_util_interna_u08,
b.avg_pnd_mas_util_interna_u09,
b.avg_pnd_mas_util_interna_u10,
b.avg_pnd_mas_util_interna_u11,
b.avg_pnd_mas_util_interna_u12,
b.avg_pnd_menos_util_interna_u01,
b.avg_pnd_menos_util_interna_u02,
b.avg_pnd_menos_util_interna_u03,
b.avg_pnd_menos_util_interna_u04,
b.avg_pnd_menos_util_interna_u05,
b.avg_pnd_menos_util_interna_u06,
b.avg_pnd_menos_util_interna_u07,
b.avg_pnd_menos_util_interna_u08,
b.avg_pnd_menos_util_interna_u09,
b.avg_pnd_menos_util_interna_u10,
b.avg_pnd_menos_util_interna_u11,
b.avg_pnd_menos_util_interna_u12,
b.num_inc_util_interna_t01,
b.num_inc_util_interna_t02,
b.num_inc_util_interna_t03,
b.num_inc_util_interna_t04,
b.num_inc_util_interna_t05,
b.num_inc_util_interna_t06,
b.num_inc_util_interna_t07,
b.num_inc_util_interna_t08,
b.num_inc_util_interna_t09,
b.num_inc_util_interna_t10,
b.num_inc_util_interna_t11,
b.num_inc_util_interna_t12,
b.num_dec_util_interna_t01,
b.num_dec_util_interna_t02,
b.num_dec_util_interna_t03,
b.num_dec_util_interna_t04,
b.num_dec_util_interna_t05,
b.num_dec_util_interna_t06,
b.num_dec_util_interna_t07,
b.num_dec_util_interna_t08,
b.num_dec_util_interna_t09,
b.num_dec_util_interna_t10,
b.num_dec_util_interna_t11,
b.num_dec_util_interna_t12
FROM JEA_MCV_UNIVERSO_RFC a
LEFT JOIN dbriskdatamart.JAT_MCV_VAR_INTERNAS_201902 b
on a.rfc=b.rfc and a.fecha=b.fecha
where a.fecha >=201607 ;