%hive
DROP TABLE IF EXISTS  RSS_MCV_CATALOGO_LIN_REEST;

CREATE TABLE IF NOT EXISTS RSS_MCV_CATALOGO_LIN_REEST
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Noviembre/Universo/RSS_MCV_CATALOGO_LIN_REEST' AS

SELECT DISTINCT
CASE WHEN moneda IN ('DOLARE', 'DOLAR') THEN lpad(CONCAT(lineaoriginal, '02'), 20, '0') ELSE lpad(CONCAT(lineaoriginal, '01'), 20, '0') END AS LLAVE_UNIVERSAL,
lineaoriginal ,
tipolinea
-- FECHACAMBIO,
-- ADMINB6
FROM dbriskdatamart.Tbl_MovimientoLineas_CV
WHERE adminb6 like "%Ree%";


