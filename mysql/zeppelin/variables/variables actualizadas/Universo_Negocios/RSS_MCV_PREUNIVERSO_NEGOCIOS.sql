%hive
DROP TABLE IF EXISTS RSS_MCV_PREUNIVERSO_NEGOCIOS;

CREATE TABLE IF NOT EXISTS RSS_MCV_PREUNIVERSO_NEGOCIOS 
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 

LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/RSS_MCV_PREUNIVERSO_NEGOCIOS' AS

SELECT 
A.*,-- A.CCI,
--CASE WHEN  A.TIPO_DE_CREDITO WHEN = 'CARTA DE CREDITO' THEN 1 WHEN  A.TIPO_DE_CREDITO WHEN  = 'CCI' THEN 1 WHEN  A.TIPO_DE_CREDITO WHEN = 'CCI PROV' THEN 1 ELSE 0 END AS CCI,
CASE A.TIPO_DE_CREDITO WHEN 'CARTA DE CREDITO' THEN 1 WHEN 'CCI' THEN 1 WHEN 'CCI PROV' THEN 1 ELSE 0 END AS CCI,
CASE WHEN A.TIPO_DE_CREDITO IN ('LINEA DE CREDITO POR SOBREGIRO', 'LINEA SOBREGIRO') THEN 1 ELSE 0 END AS SOBREGIRO,
CASE WHEN A.HSC_CIC_GRUPO = 'CIC' THEN 1 ELSE 0 END as INTERCOMPANIA,
CASE WHEN A.MIS = '5' OR A.MIS = '2' OR A.MIS = '3' THEN 1 ELSE 0 END AS CARTERA_ADQUIRIDA,
CASE WHEN A.TIPO_DE_CREDITO like '%REE%' OR A.TIPO_DE_CREDITO = 'CVMGA' THEN 1 WHEN A.LLAVE_UNIVERSAL_20 = C.llave_universal THEN 1 WHEN A.LLAVE_UNIVERSAL_20= D.LLAVE_UNIVERSAL_20 THEN 1 ELSE 0
END AS REESTRUCTURA,
CASE WHEN A.TIPO_DE_CREDITO = E.tipo_de_credito  then 1 WHEN A.TIPO_DE_CREDITO =F.tipo_de_credito then 0 ELSE -1 END AS REVOLVENTE

FROM RSS_MCV_CARTERA_CREDITICIA_LINEA  A

INNER JOIN RSS_MCV_UNIVERSO_LLAVES_NEGOCIOS B
ON A.LLAVE_UNIVERSAL_20 = B.llave_universal AND A.fecha = B.fecha
/*Para llaves universales unicas */
LEFT JOIN (SELECT distinct llave_universal from RSS_MCV_CATALOGO_LIN_REEST) C
ON A.LLAVE_UNIVERSAL_20 = C.llave_universal 

LEFT JOIN (SELECT  distinct LLAVE_UNIVERSAL_20 from RSS_MCV_CATALOGO_LIN_NAC_VENC ) D
ON A.LLAVE_UNIVERSAL_20 = D.LLAVE_UNIVERSAL_20

/*Para tipo de creditos */
LEFT JOIN (SELECT tipo_de_credito from RSS_MCV_CATALOGO_REVOLVENTE) E
ON A.tipo_de_credito = E.tipo_de_credito 

LEFT JOIN (SELECT tipo_de_credito from RSS_MCV_CATALOGO_NO_REVOLVENTE ) F
ON A.tipo_de_credito = F.tipo_de_credito

;