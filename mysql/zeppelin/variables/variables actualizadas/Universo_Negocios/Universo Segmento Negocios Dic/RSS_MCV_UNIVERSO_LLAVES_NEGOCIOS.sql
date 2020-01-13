%hive

DROP TABLE IF EXISTS RSS_MCV_UNIVERSO_LLAVES_NEGOCIOS;

CREATE TABLE IF NOT EXISTS RSS_MCV_UNIVERSO_LLAVES_NEGOCIOS
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Diciembre/Universo/RSS_MCV_UNIVERSO_LLAVES_NEGOCIOS'  AS

SELECT 
	A.LLAVE_UNIVERSAL_20 as llave_universal,
	A.RFC,
	A.FECHA, 
	A.TIPO_DE_CREDITO ,
	A.cartera_vencida,
	A.dias_atraso,
	A.mesesdc,
	B.foliorespuestabc
FROM RSS_MCV_CARTERA_CREDITICIA_LINEA A 
INNER JOIN RSS_MCV_UNIVERSO_RFC_LLAVES_NEGOCIOS B
ON A.RFC = B.RFC AND A.fecha = B.fecha ;