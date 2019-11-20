%hive

DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_VAR_MOVIMIENTOS_LINEA_MAR;

CREATE TABLE  RSS_MCV_NEGOCIOS_VAR_MOVIMIENTOS_LINEA_MAR
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Marzo/RSS_MCV_NEGOCIOS_VAR_MOVIMIENTOS_LINEA_MAR' AS
SELECT
'fecha' AS fecha,
'rfc' as rfc ,     
'ds_ol_cl' AS ds_ol_cl,
'min_ds_ol_cl' AS min_ds_ol_cl,
'ds_cl' AS ds_cl,
'ms_op' AS ms_op;
INSERT INTO RSS_MCV_NEGOCIOS_VAR_MOVIMIENTOS_LINEA_MAR
SELECT
a.fecha,
a.rfc , 
b.ds_ol_cl,
b.min_ds_ol_cl,
b.ds_cl,
b.ms_op

FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOS a
LEFT JOIN dbriskdatamart.JAT_MCV_VAR_MOVIMIENTOS_LINEA_201907 b
on a.rfc=b.rfc and a.fecha=b.fecha
where a.fecha = '201903'
 ;
