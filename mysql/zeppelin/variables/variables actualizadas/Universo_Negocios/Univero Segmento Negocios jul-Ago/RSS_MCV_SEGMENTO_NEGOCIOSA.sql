%hive
DROP TABLE IF EXISTS RSS_MCV_SEGMENTO_NEGOCIOSA;

CREATE TABLE IF NOT EXISTS
RSS_MCV_SEGMENTO_NEGOCIOSA
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/RSS_MCV_SEGMENTO_NEGOCIOSA' AS


SELECT B.FECHA, B.RFC , B.LLAVE_UNIVERSAL_20, C.foliorespuestabc
FROM RSS_MCV_CARTERA_CREDITICIA_LINEA B
LEFT JOIN (
	SELECT  fecha , rfc , max(foliorespuestabc) as foliorespuestabc 
	FROM dbriskdatamart.MZM_MCV_UNIVERSO_MODELADO_201908
	GROUP BY fecha , rfc 
) C
ON B.FECHA = C.fecha and B.RFC = C.rfc
where B.fecha >= '201907' 
and B.uen_segmentacion_cliente = 'NEGOCIOS'
GROUP BY B.FECHA,B.RFC, B.LLAVE_UNIVERSAL_20,C.foliorespuestabc ;


%hive
select distinct uen_segmentacion_cliente
from dbriskdatamart.tbl_CarteraCrediticia  ;
