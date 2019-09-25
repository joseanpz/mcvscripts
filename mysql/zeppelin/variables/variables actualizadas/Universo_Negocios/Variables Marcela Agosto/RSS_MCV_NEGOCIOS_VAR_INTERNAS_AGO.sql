%hive
DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_VAR_INTERNAS_AGO;

CREATE TABLE  RSS_MCV_NEGOCIOS_VAR_INTERNAS_ABR
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Agosto/RSS_MCV_NEGOCIOS_VAR_INTERNAS_AGO' AS
SELECT   
'fecha' AS fecha,
'rfc' as rfc ,   
'util_interna_t00' AS util_interna_t00,
'util_interna_t01' AS util_interna_t01,
'util_interna_t02' AS util_interna_t02,
'util_interna_t03' AS util_interna_t03,
'util_interna_t04' AS util_interna_t04,
'util_interna_t05' AS util_interna_t05,
'util_interna_t06' AS util_interna_t06,
'util_interna_t07' AS util_interna_t07,
'util_interna_t08' AS util_interna_t08,
'util_interna_t09' AS util_interna_t09,
'util_interna_t10' AS util_interna_t10,
'util_interna_t11' AS util_interna_t11,
'util_interna_t12' AS util_interna_t12,
'mss_desde_util_80mas' AS mss_desde_util_80mas,
'mss_desde_util_85mas' AS mss_desde_util_85mas,
'mss_desde_util_90mas' AS mss_desde_util_90mas,
'mss_desde_util_95mas' AS mss_desde_util_95mas,
'max_util_interna_u00m' AS max_util_interna_u00m,
'max_util_interna_u01m' AS max_util_interna_u01m,
'max_util_interna_u02m' AS max_util_interna_u02m,
'max_util_interna_u03m' AS max_util_interna_u03m,
'max_util_interna_u04m' AS max_util_interna_u04m,
'max_util_interna_u05m' AS max_util_interna_u05m,
'max_util_interna_u06m' AS max_util_interna_u06m,
'max_util_interna_u07m' AS max_util_interna_u07m,
'max_util_interna_u08m' AS max_util_interna_u08m,
'max_util_interna_u09m' AS max_util_interna_u09m,
'max_util_interna_u10m' AS max_util_interna_u10m,
'max_util_interna_u11m' AS max_util_interna_u11m,
'max_util_interna_u12m' AS max_util_interna_u12m,
'min_util_interna_u01m' AS min_util_interna_u01m,
'min_util_interna_u02m' AS min_util_interna_u02m,
'min_util_interna_u03m' AS min_util_interna_u03m,
'min_util_interna_u04m' AS min_util_interna_u04m,
'min_util_interna_u05m' AS min_util_interna_u05m,
'min_util_interna_u06m' AS min_util_interna_u06m,
'min_util_interna_u07m' AS min_util_interna_u07m,
'min_util_interna_u08m' AS min_util_interna_u08m,
'min_util_interna_u09m' AS min_util_interna_u09m,
'min_util_interna_u10m' AS min_util_interna_u10m,
'min_util_interna_u11m' AS min_util_interna_u11m,
'min_util_interna_u12m' AS min_util_interna_u12m,
'avg_util_interna_u01m' AS avg_util_interna_u01m,
'avg_util_interna_u02m' AS avg_util_interna_u02m,
'avg_util_interna_u03m' AS avg_util_interna_u03m,
'avg_util_interna_u04m' AS avg_util_interna_u04m,
'avg_util_interna_u05m' AS avg_util_interna_u05m,
'avg_util_interna_u06m' AS avg_util_interna_u06m,
'avg_util_interna_u07m' AS avg_util_interna_u07m,
'avg_util_interna_u08m' AS avg_util_interna_u08m,
'avg_util_interna_u09m' AS avg_util_interna_u09m,
'avg_util_interna_u10m' AS avg_util_interna_u10m,
'avg_util_interna_u11m' AS avg_util_interna_u11m,
'avg_util_interna_u12m' AS avg_util_interna_u12m,
'avg_pnd_mas_util_interna_u01' AS avg_pnd_mas_util_interna_u01,
'avg_pnd_mas_util_interna_u02' AS avg_pnd_mas_util_interna_u02,
'avg_pnd_mas_util_interna_u03' AS avg_pnd_mas_util_interna_u03,
'avg_pnd_mas_util_interna_u04' AS avg_pnd_mas_util_interna_u04,
'avg_pnd_mas_util_interna_u05' AS avg_pnd_mas_util_interna_u05,
'avg_pnd_mas_util_interna_u06' AS avg_pnd_mas_util_interna_u06,
'avg_pnd_mas_util_interna_u07' AS avg_pnd_mas_util_interna_u07,
'avg_pnd_mas_util_interna_u08' AS avg_pnd_mas_util_interna_u08,
'avg_pnd_mas_util_interna_u09' AS avg_pnd_mas_util_interna_u09,
'avg_pnd_mas_util_interna_u10' AS avg_pnd_mas_util_interna_u10,
'avg_pnd_mas_util_interna_u11' AS avg_pnd_mas_util_interna_u11,
'avg_pnd_mas_util_interna_u12' AS avg_pnd_mas_util_interna_u12,
'avg_pnd_menos_util_interna_u01' AS avg_pnd_menos_util_interna_u01,
'avg_pnd_menos_util_interna_u02' AS avg_pnd_menos_util_interna_u02,
'avg_pnd_menos_util_interna_u03' AS avg_pnd_menos_util_interna_u03,
'avg_pnd_menos_util_interna_u04' AS avg_pnd_menos_util_interna_u04,
'avg_pnd_menos_util_interna_u05' AS avg_pnd_menos_util_interna_u05,
'avg_pnd_menos_util_interna_u06' AS avg_pnd_menos_util_interna_u06,
'avg_pnd_menos_util_interna_u07' AS avg_pnd_menos_util_interna_u07,
'avg_pnd_menos_util_interna_u08' AS avg_pnd_menos_util_interna_u08,
'avg_pnd_menos_util_interna_u09' AS avg_pnd_menos_util_interna_u09,
'avg_pnd_menos_util_interna_u10' AS avg_pnd_menos_util_interna_u10,
'avg_pnd_menos_util_interna_u11' AS avg_pnd_menos_util_interna_u11,
'avg_pnd_menos_util_interna_u12' AS avg_pnd_menos_util_interna_u12,
'num_inc_util_interna_t01' AS num_inc_util_interna_t01,
'num_inc_util_interna_t02' AS num_inc_util_interna_t02,
'num_inc_util_interna_t03' AS num_inc_util_interna_t03,
'num_inc_util_interna_t04' AS num_inc_util_interna_t04,
'num_inc_util_interna_t05' AS num_inc_util_interna_t05,
'num_inc_util_interna_t06' AS num_inc_util_interna_t06,
'num_inc_util_interna_t07' AS num_inc_util_interna_t07,
'num_inc_util_interna_t08' AS num_inc_util_interna_t08,
'num_inc_util_interna_t09' AS num_inc_util_interna_t09,
'num_inc_util_interna_t10' AS num_inc_util_interna_t10,
'num_inc_util_interna_t11' AS num_inc_util_interna_t11,
'num_inc_util_interna_t12' AS num_inc_util_interna_t12,
'num_dec_util_interna_t01' AS num_dec_util_interna_t01,
'num_dec_util_interna_t02' AS num_dec_util_interna_t02,
'num_dec_util_interna_t03' AS num_dec_util_interna_t03,
'num_dec_util_interna_t04' AS num_dec_util_interna_t04,
'num_dec_util_interna_t05' AS num_dec_util_interna_t05,
'num_dec_util_interna_t06' AS num_dec_util_interna_t06,
'num_dec_util_interna_t07' AS num_dec_util_interna_t07,
'num_dec_util_interna_t08' AS num_dec_util_interna_t08,
'num_dec_util_interna_t09' AS num_dec_util_interna_t09,
'num_dec_util_interna_t10' AS num_dec_util_interna_t10,
'num_dec_util_interna_t11' AS num_dec_util_interna_t11,
'num_dec_util_interna_t12' AS num_dec_util_interna_t12;
INSERT INTO RSS_MCV_NEGOCIOS_VAR_INTERNAS_AGO
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
FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOSA a
LEFT JOIN dbriskdatamart.JAT_MCV_VAR_INTERNAS_201908 b
on a.rfc=b.rfc and a.fecha=b.fecha
where a.fecha = '201908' ;
