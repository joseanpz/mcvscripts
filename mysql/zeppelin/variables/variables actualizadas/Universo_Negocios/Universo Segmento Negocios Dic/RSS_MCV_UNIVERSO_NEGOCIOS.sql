%hive
DROP TABLE IF EXISTS RSS_MCV_UNIVERSO_NEGOCIOS;

CREATE TABLE IF NOT EXISTS
RSS_MCV_UNIVERSO_NEGOCIOS 
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Diciembre/Universo/RSS_MCV_UNIVERSO_NEGOCIOS' AS
SELECT
  A.RFC,  
  A.LLAVE_UNIVERSAL_20,
  A.FECHA,
  A.CLIENTE,
  A.LINEA,
  A.TIPO_DE_CREDITO,
  A.MESESDC,
  A.MONTO_LINEA,
  A.DIAS_ATRASO,
  A.CARTERA_VENCIDA,
  A.CCI,
  A.SOBREGIRO,
  A.INTERCOMPANIA,
  A.CARTERA_ADQUIRIDA,
  A.REESTRUCTURA,
  A.REVOLVENTE,
  CASE
    WHEN COALESCE(A.DIAS_ATRASO, 0) = 0 THEN 0
    WHEN A.DIAS_ATRASO BETWEEN 1 AND 29 THEN 1
    WHEN A.DIAS_ATRASO BETWEEN 30 AND 59 THEN 2
    WHEN A.DIAS_ATRASO BETWEEN 60 AND 89 THEN 3
    WHEN A.DIAS_ATRASO >= 89 THEN 4
    ELSE 5
  END AS BUCKET,
  CASE 
    WHEN A.MONTO_LINEA <= 8000000 THEN 0
    WHEN A.MONTO_LINEA > 8000000 AND MONTO_LINEA <= 15000000 THEN 1
    WHEN A.MONTO_LINEA > 15000000 THEN 2
    ELSE 3
  END AS MONTO_CLS,   
  B.CVLABEL AS CVLABEL,
  C.DALABEL AS DALABEL,
  D.FOLIOCONSULTABC AS FOLIO_CONSULTA_BC,
  D.FOLIORESPUESTABC AS FOLIO_RESPUESTA_BC
FROM  RSS_MCV_PREUNIVERSO_NEGOCIOS A
LEFT JOIN JEA_MCV_UNIVERSO_CVLABEL_NEGOCIOS B
  ON A.RFC = B.RFC AND A.FECHA = B.FECHA
LEFT JOIN RSS_MCV_UNIVERSO_DALABEL_NEGOCIOS C
  ON A.RFC = C.RFC AND A.FECHA = C.FECHA
LEFT JOIN DBMYMWORK.MZM_MCV_UNIVERSO_MODELADO_201912 D
  ON A.RFC = D.RFC AND A.FECHA = D.FECHA;