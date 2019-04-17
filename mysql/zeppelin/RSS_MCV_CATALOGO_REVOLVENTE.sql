%hive
DROP TABLE IF EXISTS RSS_MCV_CATALOGO_REVOLVENTE;

CREATE TABLE IF NOT EXISTS RSS_MCV_CATALOGO_REVOLVENTE 
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_CATALOGO_REVOLVENTE ' AS

SELECT DISTINCT TIPO_DE_CREDITO
FROM RSS_MCV_UNIVERSO_LLAVES a
WHERE TIPO_DE_CREDITO IN (
    SELECT DISTINCT 
      descripcion_del_tipo_de_credito
    FROM dbriskdatamart.MZM_MYM_CATALOGO_LINEAS_ENE2019
    WHERE credito_revolvente = 'Si'
  ) 
UNION 
SELECT DISTINCT TIPO_DE_CREDITO
FROM RSS_MCV_UNIVERSO_LLAVES a
WHERE TIPO_DE_CREDITO IN (
    SELECT DISTINCT 
      abreviacion
    FROM dbriskdatamart.MZM_MYM_CATALOGO_LINEAS_ENE2019
    WHERE credito_revolvente = 'Si'
  )
UNION
SELECT 
  'AV C/GAD C/A' AS TIPO_DE_CREDITO
UNION 
SELECT 
  'DEUDOR FACTOR PLAN DISTRIBUIDOR' AS TIPO_DE_CREDITO
UNION 
SELECT 
  'DFPD' AS TIPO_DE_CREDITO
UNION 
SELECT 
  'FFCR.' AS TIPO_DE_CREDITO
UNION 
SELECT 
  'CR ANTICIPO' AS TIPO_DE_CREDITO
UNION 
SELECT 
  'FFPCEOP' AS TIPO_DE_CREDITO
UNION 
SELECT 
  '3F' AS TIPO_DE_CREDITO
UNION 
SELECT 
  'CR PUENTE' AS TIPO_DE_CREDITO