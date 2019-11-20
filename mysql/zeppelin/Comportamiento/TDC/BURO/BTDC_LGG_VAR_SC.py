%hive

DROP TABLE IF EXISTS dbmymwork.BTDC_LGG_VAR_SC;
CREATE TABLE dbmymwork.BTDC_LGG_VAR_SC
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'

LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES/BTDC_LGG_VAR_SC' AS

SELECT
CUENTADEREFERENCIA, 
FECHA_CARTERA,
min(CASE
    WHEN fechaburo = '2018-05-27' AND scf_codigo = 'REC' THEN CAST(scf_valor AS INTEGER)
    WHEN fechaburo = '2018-05-27' AND scf_codigo <> 'REC' THEN NULL
    WHEN fechaburo < '2018-05-27' AND CAST(scf_valor AS INTEGER) in (-005,-006,-007,-008,0000) THEN CAST(scf_valor AS INTEGER)
    WHEN fechaburo < '2018-05-27' THEN ROUND((0.9147 * CAST(scf_valor AS INTEGER))+19.369)
    ELSE CAST(scf_valor AS INTEGER) END )AS scf_valor

from dbmymwork.BTDC_LGG_BC_SEG_SC
 group by 
 CUENTADEREFERENCIA, 
 FECHA_CARTERA;

select * from dbmymwork.BTDC_LGG_VAR_SC limit 100;
    