%hive
DROP TABLE IF EXISTS RSS_MCV_PEQUE_VAR_MOVIMIENTOS_LINEA_201902;

CREATE TABLE  RSS_MCV_PEQUE_VAR_MOVIMIENTOS_LINEA_201902
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_VAR_MOVIMIENTOS_LINEA_201902' AS
SELECT   
'ds_ol_cl' AS ds_ol_cl,
'min_ds_ol_cl' AS min_ds_ol_cl,
'ds_cl' AS ds_cl,
'ms_op' AS ms_op;
INSERT INTO RSS_MCV_PEQUE_VAR_MOVIMIENTOS_LINEA_201902
SELECT 
b.ds_ol_cl,
b.min_ds_ol_cl,
b.ds_cl,
b.ms_op

FROM JEA_MCV_UNIVERSO_RFC a
LEFT JOIN dbriskdatamart.JAT_MCV_VAR_MOVIMIENTOS_LINEA_201902 b
on a.rfc=b.rfc and a.fecha=b.fecha
where a.fecha >=201607 ;