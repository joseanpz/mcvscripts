%hive
DROP TABLE IF EXISTS RSS_MCV_CARTERA_CREDITICIA_LINEA;


-- La creación tarda bastante
CREATE TABLE RSS_MCV_CARTERA_CREDITICIA_LINEA

ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 

LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Diciembre/Universo/RSS_MCV_CARTERA_CREDITICIA_LINEA' AS

SELECT    
    LPAD(CONCAT(LINEA,MONEDA),20,'0') AS LLAVE_UNIVERSAL_20,
    A.* 
FROM dbriskdatamart.Tbl_CarteraCrediticia_CV A
WHERE LINEA IS NOT NULL AND LINEA != '';

