%hive
DROP TABLE IF EXISTS JEA_MCV_UNIVERSO_NEGOCIOS2;

CREATE TABLE IF NOT EXISTS
JEA_MCV_UNIVERSO_NEGOCIOS2
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/JEA/dbmymwork/JEA_MCV_UNIVERSO_NEGOCIOS2' AS
SELECT B.FECHA, B.RFC , c.foliorespuestabc
FROM DBMYMWORK.MCV_LGG_SEGMENTO_CLIENTE A
INNER JOIN (
	SELECT FECHA, RFC 
	FROM RSS_MCV_CARTERA_CREDITICIA_LINEA
	GROUP BY FECHA,RFC
) B
ON A.FEC_CIERRE = B.FECHA AND A.RFC = B.RFC
left join (select  fecha , rfc , max(foliorespuestabc) as foliorespuestabc from dbriskdatamart.MZM_MCV_UNIVERSO_MODELADO_201906
group by fecha , rfc   ) c 
on a.fec_cierre = c.fecha and a. rfc = c.rfc
WHERE A.SEGMENTOCLIENTE = 'NEGOCIOS' AND A.FEC_CIERRE >= 201905
GROUP BY B.FECHA, B.RFC , c.foliorespuestabc; 


