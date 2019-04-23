%hive
DROP TABLE IF EXISTS RSS_MCV_PEQUE_R_BAL_BY_MAX_BAL_201902;

CREATE TABLE  RSS_MCV_PEQUE_R_BAL_BY_MAX_BAL_201902
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_R_BAL_BY_MAX_BAL_201902' AS

SELECT   b.fechacartera as fecha ,b.* 
FROM JEA_MCV_UNIVERSO a
LEFT JOIN dbriskdatamart.MZM_MCV_R_BAL_BY_MAX_BAL_201902 b
on a.rfc=b.rfc and a.fecha=b.fechacartera
where a.fecha >=201607 ;
