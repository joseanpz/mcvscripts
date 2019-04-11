%hive

DROP TABLE IF EXISTS RSS_MCV_UNIVERSO_LLAVES;

CREATE TABLE  RSS_MCV_UNIVERSO_LLAVES(
llaveuniversal  CHAR(20) ,
fecha           CHAR(6)
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_UNIVERSO_LLAVES';

INSERT into  RSS_MCV_UNIVERSO_LLAVES
SELECT  distinct llaveuniversal, replace(fecha,'-','0') AS fecha
FROM RSS_MCV_COLOCACION
WHERE perfilnegocioactual NOT IN ('CORPORATIVO', 'DIRECCION', 'DUMMY', 'GOBIERNO')
AND producto NOT IN ('3I ACS AUTOPRESTO', '3N ACS AUTOPRESTO', 'Z1 SEGURO ACS AUTOPRESTO')
AND subsegmentoproducto  <> 'AB - VARIOS'
AND (uen IN ("10 MEDIANA EMPRESA TERRITORIAL", "06 MEDIANA EMPRESA NL") OR uen like "%PEQUE%");