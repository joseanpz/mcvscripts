%hive
DROP TABLE IF EXISTS RSS_MCV_PEQUE_D_CRED_LIM_TO_BAL_201902;

CREATE TABLE  RSS_MCV_PEQUE_D_CRED_LIM_TO_BAL_201902
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_D_CRED_LIM_TO_BAL_201902' AS
SELECT   b.* 
FROM JEA_MCV_UNIVERSO a
LEFT JOIN dbriskdatamart.MZM_MCV_D_CRED_LIM_TO_BAL_201902 b
on a.fecha = b.fecha and a.rfc=b.rfc
where a.fecha >=201607 ;