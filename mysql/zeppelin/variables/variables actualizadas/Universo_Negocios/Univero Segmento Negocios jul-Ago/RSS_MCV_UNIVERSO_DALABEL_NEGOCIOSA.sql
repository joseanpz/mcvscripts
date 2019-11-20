%hive
DROP TABLE IF EXISTS RSS_MCV_UNIVERSO_DALABEL_NEGOCIOSA;

CREATE TABLE IF NOT EXISTS
RSS_MCV_UNIVERSO_DALABEL_NEGOCIOSA
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/RSS_MCV_UNIVERSO_DALABEL_NEGOCIOSA' AS

SELECT
  A.RFC,  
  A.FECHA,
  7 - 
  MAX(CASE
      WHEN COALESCE(A.DIAS_ATRASO, 0) = 0 THEN 0
      ELSE 1
  END) -
  MAX(CASE
      WHEN COALESCE(A.DIAS_ATRASO, 0) = 0 
          AND COALESCE(B.DIAS_ATRASO, 0) = 0 THEN 0
      ELSE 1
  END) -
  MAX(CASE
      WHEN COALESCE(A.DIAS_ATRASO, 0) = 0
          AND COALESCE(B.DIAS_ATRASO, 0) = 0
          AND COALESCE(C.DIAS_ATRASO, 0) = 0 THEN 0
      ELSE 1
  END) -
  MAX(CASE
      WHEN COALESCE(A.DIAS_ATRASO, 0) = 0
          AND COALESCE(B.DIAS_ATRASO, 0) = 0
          AND COALESCE(C.DIAS_ATRASO, 0) = 0
          AND COALESCE(D.DIAS_ATRASO, 0) = 0 THEN 0
      ELSE 1
  END) -
  MAX(CASE
     WHEN COALESCE(A.DIAS_ATRASO, 0) = 0
          AND COALESCE(B.DIAS_ATRASO, 0) = 0
          AND COALESCE(C.DIAS_ATRASO, 0) = 0
          AND COALESCE(D.DIAS_ATRASO, 0) = 0
          AND COALESCE(E.DIAS_ATRASO, 0) = 0 THEN 0
      ELSE 1
  END) -
  MAX(CASE
      WHEN COALESCE(A.DIAS_ATRASO, 0) = 0
          AND COALESCE(B.DIAS_ATRASO, 0) = 0
          AND COALESCE(C.DIAS_ATRASO, 0) = 0
          AND COALESCE(D.DIAS_ATRASO, 0) = 0
          AND COALESCE(E.DIAS_ATRASO, 0) = 0
          AND COALESCE(F.DIAS_ATRASO, 0) = 0 THEN 0
      ELSE 1
  END) -
  MAX(CASE
      WHEN COALESCE(A.DIAS_ATRASO, 0) = 0
          AND COALESCE(B.DIAS_ATRASO, 0) = 0
          AND COALESCE(C.DIAS_ATRASO, 0) = 0
          AND COALESCE(D.DIAS_ATRASO, 0) = 0
          AND COALESCE(E.DIAS_ATRASO, 0) = 0
          AND COALESCE(F.DIAS_ATRASO, 0) = 0
          AND COALESCE(G.DIAS_ATRASO, 0) = 0 THEN 0
      ELSE 1
  END) AS DALABEL
FROM RSS_MCV_PREUNIVERSO_NEGOCIOSA A
LEFT JOIN  RSS_MCV_UNIVERSO_LLAVES_NEGOCIOSA B  
  ON A.LLAVE_UNIVERSAL_20 = B.llave_universal AND A.MESESDC + 1 = B.MESESDC
LEFT JOIN  RSS_MCV_UNIVERSO_LLAVES_NEGOCIOSA C  
  ON A.LLAVE_UNIVERSAL_20 = C.llave_universal AND A.MESESDC + 2 = C.MESESDC
LEFT JOIN  RSS_MCV_UNIVERSO_LLAVES_NEGOCIOSA D
  ON A.LLAVE_UNIVERSAL_20 = D.llave_universal AND A.MESESDC + 3 = D.MESESDC
LEFT JOIN  RSS_MCV_UNIVERSO_LLAVES_NEGOCIOSA E  
  ON A.LLAVE_UNIVERSAL_20 = E.llave_universal AND A.MESESDC + 4 = E.MESESDC
LEFT JOIN  RSS_MCV_UNIVERSO_LLAVES_NEGOCIOSA F  
  ON A.LLAVE_UNIVERSAL_20 = F.llave_universal AND A.MESESDC + 5 = F.MESESDC
LEFT JOIN  RSS_MCV_UNIVERSO_LLAVES_NEGOCIOSA G  
  ON A.LLAVE_UNIVERSAL_20 = G.llave_universal AND A.MESESDC + 6 = G.MESESDC
GROUP BY A.RFC, A.FECHA;