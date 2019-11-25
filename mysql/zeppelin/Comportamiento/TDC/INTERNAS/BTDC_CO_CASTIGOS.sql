%hive

DROP TABLE IF EXISTS BTDC_CO_CASTIGOS;
CREATE TABLE BTDC_CO_CASTIGOS;

ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'

LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/BTDC/BTDC_CO_CASTIGOS' AS
SELECT
T1.credito,
T1.linea,
T1.aniomes,
T1.operacion,
T1.castigotot,
T1.fecha_originacion,
T1.aniomesant

FROM dbriskdatamart.Tbl_Castigos T1
WHERE portafolio = 'Consumo' AND aniomes > '201400';
