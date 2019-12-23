%hive
DROP TABLE IF EXISTS RSS_MCV_UNIVERSO_RFC_NEGOCIOS;

CREATE TABLE IF NOT EXISTS
RSS_MCV_UNIVERSO_RFC_NEGOCIOS
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Diciembre/Universo/RSS_MCV_UNIVERSO_RFC_NEGOCIOS' AS
SELECT
  A.RFC,
  A.FECHA,
  A.MESESDC,
  A.CVLABEL,
  A.DALABEL,
  A.FOLIO_CONSULTA_BC,
  A.FOLIO_RESPUESTA_BC,
  COLLECT_LIST(A.TIPO_DE_CREDITO) AS TIPO_DE_CREDITO,  
  MAX(A.MONTO_LINEA),
  MAX(A.DIAS_ATRASO),
  MAX(A.CARTERA_VENCIDA),
  MAX(A.CCI),
  MAX(A.SOBREGIRO),
  MAX(A.INTERCOMPANIA),
  MAX(A.CARTERA_ADQUIRIDA),
  MAX(A.REESTRUCTURA),  
  MAX(CASE
    WHEN COALESCE(A.DIAS_ATRASO, 0) = 0 THEN 0
    WHEN A.DIAS_ATRASO BETWEEN 1 AND 29 THEN 1
    WHEN A.DIAS_ATRASO BETWEEN 30 AND 59 THEN 2
    WHEN A.DIAS_ATRASO BETWEEN 60 AND 89 THEN 3
    WHEN A.DIAS_ATRASO >= 89 THEN 4
    ELSE 5
  END) AS BUCKET,
  CASE 
    WHEN SUM(A.MONTO_LINEA) <= 8000000 THEN 0
    WHEN SUM(A.MONTO_LINEA) > 8000000 AND SUM(A.MONTO_LINEA) <= 15000000 THEN 1
    WHEN SUM(A.MONTO_LINEA) > 15000000 THEN 2
    ELSE 3
  END AS MONTO_CLS  
FROM  RSS_MCV_UNIVERSO_NEGOCIOS A
GROUP BY A.RFC, A.FECHA, A.MESESDC, A.CVLABEL, A.DALABEL, A.FOLIO_CONSULTA_BC, A.FOLIO_RESPUESTA_BC;