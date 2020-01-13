%hive
DROP TABLE IF EXISTS RSS_MCV_SEGMENTO_NEGOCIOS;

CREATE TABLE IF NOT EXISTS
RSS_MCV_SEGMENTO_NEGOCIOS
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Diciembre/Universo/RSS_MCV_SEGMENTO_NEGOCIOS' AS


SELECT B.FECHA, B.RFC , B.LLAVE_UNIVERSAL_20, C.foliorespuestabc
FROM RSS_MCV_CARTERA_CREDITICIA_LINEA B
LEFT JOIN (
	SELECT  fecha , rfc , max(foliorespuestabc) as foliorespuestabc 
	FROM DBMYMWORK.MZM_MCV_UNIVERSO_MODELADO_201912
	GROUP BY fecha , rfc 
) C
ON B.FECHA = C.fecha and B.RFC = C.rfc
where B.fecha >= '201901' 
and B.uen_segmentacion_cliente = 'NEGOCIOS'
GROUP BY B.FECHA,B.RFC, B.LLAVE_UNIVERSAL_20,C.foliorespuestabc ;


-- %hive
-- select distinct uen_segmentacion_cliente
-- from dbriskdatamart.tbl_CarteraCrediticia  ;

-- select DISTINCT RFC, fun_encripta(RFC) 

-- from DBRSKDATAMART.Tbl_CarteraCrediticia

-- WHERE LINEA IS NOT NULL AND LINEA != ''  AND fecha = '201909' AND uen_segmentacion_cliente = 'NEGOCIOS';


-- SELECT fecha , COUNT(DISTINCT rfc )
-- FROM DBRSKDATAMART.Tbl_CarteraCrediticia
-- WHERE mis <> 0 AND uen_segmentacion_cliente = 'NEGOCIOS'
-- GROUP BY fecha 