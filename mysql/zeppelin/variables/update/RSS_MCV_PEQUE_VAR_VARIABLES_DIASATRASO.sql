%hive

INSERT INTO RSS_MCV_PEQUE_VAR_VARIABLES_DIASATRASO

ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_VAR_VARIABLES_DIASATRASO' AS

SELECT
a.fecha,
a.rfc , 
b.dias_atraso,
b.dpcv_cap
FROM JEA_MCV_UNIVERSO_RFC a
LEFT JOIN dbriskdatamart.MZM_MCV_VAR_VARIABLES_DIASATRASO_201902 b
on a.rfc=b.rfc and a.fecha=b.fecha
where a.fecha >=201607 ;