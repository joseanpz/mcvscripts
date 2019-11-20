%hive

DROP TABLE IF EXISTS RSS_MCV_UNIVERSO_RFC_LLAVES_NEGOCIOS;

CREATE TABLE IF NOT EXISTS RSS_MCV_UNIVERSO_RFC_LLAVES_NEGOCIOS
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Octubre/Universo/RSS_MCV_UNIVERSO_RFC_LLAVES_NEGOCIOS' AS

SELECT DISTINCT
	A.FECHA,
	A.RFC,
	B.foliorespuestabc
FROM RSS_MCV_CARTERA_CREDITICIA_LINEA A 
INNER JOIN RSS_MCV_SEGMENTO_NEGOCIOS B
ON A.LLAVE_UNIVERSAL_20 = B.LLAVE_UNIVERSAL_20 AND A.fecha = B.fecha ; 