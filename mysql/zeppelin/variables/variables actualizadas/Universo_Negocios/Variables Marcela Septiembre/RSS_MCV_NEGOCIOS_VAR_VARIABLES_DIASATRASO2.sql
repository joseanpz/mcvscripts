%hive
DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_VAR_VARIABLES_DIASATRASO2;

CREATE TABLE  RSS_MCV_NEGOCIOS_VAR_VARIABLES_DIASATRASO2
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Septiembre/Variables/RSS_MCV_NEGOCIOS_VAR_VARIABLES_DIASATRASO2' AS
SELECT 
'fecha' AS fecha,
'rfc' as rfc , 
'ms_desde_atr01m' AS ms_desde_atr01m,
'ms_desde_atr30m' AS ms_desde_atr30m,
'ms_desde_atr60m' AS ms_desde_atr60m,
'ms_desde_atr90m' AS ms_desde_atr90m,
'max_atr_u01m' AS max_atr_u01m,
'max_atr_u02m' AS max_atr_u02m,
'max_atr_u03m' AS max_atr_u03m,
'max_atr_u04m' AS max_atr_u04m,
'max_atr_u05m' AS max_atr_u05m,
'max_atr_u06m' AS max_atr_u06m,
'max_atr_u07m' AS max_atr_u07m,
'max_atr_u08m' AS max_atr_u08m,
'max_atr_u09m' AS max_atr_u09m,
'max_atr_u10m' AS max_atr_u10m,
'max_atr_u11m' AS max_atr_u11m,
'max_atr_u12m' AS max_atr_u12m,
'cnt_curr_u01m' AS cnt_curr_u01m,
'cnt_curr_u02m' AS cnt_curr_u02m,
'cnt_curr_u03m' AS cnt_curr_u03m,
'cnt_curr_u04m' AS cnt_curr_u04m,
'cnt_curr_u05m' AS cnt_curr_u05m,
'cnt_curr_u06m' AS cnt_curr_u06m,
'cnt_curr_u07m' AS cnt_curr_u07m,
'cnt_curr_u08m' AS cnt_curr_u08m,
'cnt_curr_u09m' AS cnt_curr_u09m,
'cnt_curr_u10m' AS cnt_curr_u10m,
'cnt_curr_u11m' AS cnt_curr_u11m,
'cnt_curr_u12m' AS cnt_curr_u12m,
'cnt_01_u01m' AS cnt_01_u01m,
'cnt_01_u02m' AS cnt_01_u02m,
'cnt_01_u03m' AS cnt_01_u03m,
'cnt_01_u04m' AS cnt_01_u04m,
'cnt_01_u05m' AS cnt_01_u05m,
'cnt_01_u06m' AS cnt_01_u06m,
'cnt_01_u07m' AS cnt_01_u07m,
'cnt_01_u08m' AS cnt_01_u08m,
'cnt_01_u09m' AS cnt_01_u09m,
'cnt_01_u10m' AS cnt_01_u10m,
'cnt_01_u11m' AS cnt_01_u11m,
'cnt_01_u12m' AS cnt_01_u12m,
'cnt_30_u01m' AS cnt_30_u01m,
'cnt_30_u02m' AS cnt_30_u02m,
'cnt_30_u03m' AS cnt_30_u03m,
'cnt_30_u04m' AS cnt_30_u04m,
'cnt_30_u05m' AS cnt_30_u05m,
'cnt_30_u06m' AS cnt_30_u06m,
'cnt_30_u07m' AS cnt_30_u07m,
'cnt_30_u08m' AS cnt_30_u08m,
'cnt_30_u09m' AS cnt_30_u09m,
'cnt_30_u10m' AS cnt_30_u10m,
'cnt_30_u11m' AS cnt_30_u11m,
'cnt_30_u12m' AS cnt_30_u12m,
'cnt_60_u01m' AS cnt_60_u01m,
'cnt_60_u02m' AS cnt_60_u02m,
'cnt_60_u03m' AS cnt_60_u03m,
'cnt_60_u04m' AS cnt_60_u04m,
'cnt_60_u05m' AS cnt_60_u05m,
'cnt_60_u06m' AS cnt_60_u06m,
'cnt_60_u07m' AS cnt_60_u07m,
'cnt_60_u08m' AS cnt_60_u08m,
'cnt_60_u09m' AS cnt_60_u09m,
'cnt_60_u10m' AS cnt_60_u10m,
'cnt_60_u11m' AS cnt_60_u11m,
'cnt_60_u12m' AS cnt_60_u12m,
'cnt_90_u01m' AS cnt_90_u01m,
'cnt_90_u02m' AS cnt_90_u02m,
'cnt_90_u03m' AS cnt_90_u03m,
'cnt_90_u04m' AS cnt_90_u04m,
'cnt_90_u05m' AS cnt_90_u05m,
'cnt_90_u06m' AS cnt_90_u06m,
'cnt_90_u07m' AS cnt_90_u07m,
'cnt_90_u08m' AS cnt_90_u08m,
'cnt_90_u09m' AS cnt_90_u09m,
'cnt_90_u10m' AS cnt_90_u10m,
'cnt_90_u11m' AS cnt_90_u11m,
'cnt_90_u12m' AS cnt_90_u12m,
'cnt_inc_u01m' AS cnt_inc_u01m,
'cnt_inc_u02m' AS cnt_inc_u02m,
'cnt_inc_u03m' AS cnt_inc_u03m,
'cnt_inc_u04m' AS cnt_inc_u04m,
'cnt_inc_u05m' AS cnt_inc_u05m,
'cnt_inc_u06m' AS cnt_inc_u06m,
'cnt_inc_u07m' AS cnt_inc_u07m,
'cnt_inc_u08m' AS cnt_inc_u08m,
'cnt_inc_u09m' AS cnt_inc_u09m,
'cnt_inc_u10m' AS cnt_inc_u10m,
'cnt_inc_u11m' AS cnt_inc_u11m,
'cnt_inc_u12m' AS cnt_inc_u12m,
'cnt_dec_u01m' AS cnt_dec_u01m,
'cnt_dec_u02m' AS cnt_dec_u02m,
'cnt_dec_u03m' AS cnt_dec_u03m,
'cnt_dec_u04m' AS cnt_dec_u04m,
'cnt_dec_u05m' AS cnt_dec_u05m,
'cnt_dec_u06m' AS cnt_dec_u06m,
'cnt_dec_u07m' AS cnt_dec_u07m,
'cnt_dec_u08m' AS cnt_dec_u08m,
'cnt_dec_u09m' AS cnt_dec_u09m,
'cnt_dec_u10m' AS cnt_dec_u10m,
'cnt_dec_u11m' AS cnt_dec_u11m,
'cnt_dec_u12m' AS cnt_dec_u12m;
INSERT INTO RSS_MCV_NEGOCIOS_VAR_VARIABLES_DIASATRASO2
select
a.fecha,
a.rfc ,  
b.ms_desde_atr01m,
b.ms_desde_atr30m,
b.ms_desde_atr60m,
b.ms_desde_atr90m,
b.max_atr_u01m,
b.max_atr_u02m,
b.max_atr_u03m,
b.max_atr_u04m,
b.max_atr_u05m,
b.max_atr_u06m,
b.max_atr_u07m,
b.max_atr_u08m,
b.max_atr_u09m,
b.max_atr_u10m,
b.max_atr_u11m,
b.max_atr_u12m,
b.cnt_curr_u01m,
b.cnt_curr_u02m,
b.cnt_curr_u03m,
b.cnt_curr_u04m,
b.cnt_curr_u05m,
b.cnt_curr_u06m,
b.cnt_curr_u07m,
b.cnt_curr_u08m,
b.cnt_curr_u09m,
b.cnt_curr_u10m,
b.cnt_curr_u11m,
b.cnt_curr_u12m,
b.cnt_01_u01m,
b.cnt_01_u02m,
b.cnt_01_u03m,
b.cnt_01_u04m,
b.cnt_01_u05m,
b.cnt_01_u06m,
b.cnt_01_u07m,
b.cnt_01_u08m,
b.cnt_01_u09m,
b.cnt_01_u10m,
b.cnt_01_u11m,
b.cnt_01_u12m,
b.cnt_30_u01m,
b.cnt_30_u02m,
b.cnt_30_u03m,
b.cnt_30_u04m,
b.cnt_30_u05m,
b.cnt_30_u06m,
b.cnt_30_u07m,
b.cnt_30_u08m,
b.cnt_30_u09m,
b.cnt_30_u10m,
b.cnt_30_u11m,
b.cnt_30_u12m,
b.cnt_60_u01m,
b.cnt_60_u02m,
b.cnt_60_u03m,
b.cnt_60_u04m,
b.cnt_60_u05m,
b.cnt_60_u06m,
b.cnt_60_u07m,
b.cnt_60_u08m,
b.cnt_60_u09m,
b.cnt_60_u10m,
b.cnt_60_u11m,
b.cnt_60_u12m,
b.cnt_90_u01m,
b.cnt_90_u02m,
b.cnt_90_u03m,
b.cnt_90_u04m,
b.cnt_90_u05m,
b.cnt_90_u06m,
b.cnt_90_u07m,
b.cnt_90_u08m,
b.cnt_90_u09m,
b.cnt_90_u10m,
b.cnt_90_u11m,
b.cnt_90_u12m,
b.cnt_inc_u01m,
b.cnt_inc_u02m,
b.cnt_inc_u03m,
b.cnt_inc_u04m,
b.cnt_inc_u05m,
b.cnt_inc_u06m,
b.cnt_inc_u07m,
b.cnt_inc_u08m,
b.cnt_inc_u09m,
b.cnt_inc_u10m,
b.cnt_inc_u11m,
b.cnt_inc_u12m,
b.cnt_dec_u01m,
b.cnt_dec_u02m,
b.cnt_dec_u03m,
b.cnt_dec_u04m,
b.cnt_dec_u05m,
b.cnt_dec_u06m,
b.cnt_dec_u07m,
b.cnt_dec_u08m,
b.cnt_dec_u09m,
b.cnt_dec_u10m,
b.cnt_dec_u11m,
b.cnt_dec_u12m

FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOS a
LEFT JOIN dbriskdatamart.MZM_MCV_VAR_VARIABLES_DIASATRASO2_201909 b
on a.rfc=b.rfc and a.fecha=b.fecha 
where a.fecha = '201909';
