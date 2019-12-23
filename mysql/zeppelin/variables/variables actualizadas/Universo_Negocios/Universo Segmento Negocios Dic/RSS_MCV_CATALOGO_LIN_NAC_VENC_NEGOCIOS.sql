%hive
DROP TABLE IF EXISTS RSS_MCV_CATALOGO_LIN_NAC_VENC_NEGOCIOS;

CREATE TABLE IF NOT EXISTS RSS_MCV_CATALOGO_LIN_NAC_VENC_NEGOCIOS 
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Diciembre/Universo/RSS_MCV_CATALOGO_LIN_NAC_VENC_NEGOCIOS' AS

SELECT a.*
FROM  RSS_MCV_CARTERA_CREDITICIA_LINEA a
JOIN 
(
    SELECT 
      LLAVE_UNIVERSAL_20, 
      min(fecha) AS MIN_FECHA, 
      min(mesesdc) AS MIN_MESESDC 
    FROM RSS_MCV_CARTERA_CREDITICIA_LINEA
    WHERE LLAVE_UNIVERSAL_20 IN (
        SELECT DISTINCT 
        LLAVE_UNIVERSAL
         FROM RSS_MCV_UNIVERSO_LLAVES_NEGOCIOS
        WHERE COALESCE(CARTERA_VENCIDA, 0) > 0
    )
    GROUP BY LLAVE_UNIVERSAL_20
) b
ON a.LLAVE_UNIVERSAL_20 = b.LLAVE_UNIVERSAL_20
WHERE a.FECHA = b.MIN_FECHA AND COALESCE(a.CARTERA_VENCIDA, 0) > 0 AND b.MIN_FECHA > 201201;