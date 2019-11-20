%hive
DROP TABLE IF EXISTS RSS_MCV_COLOCACION ;

CREATE EXTERNAL TABLE RSS_MCV_COLOCACION(
llaveuniversal      CHAR(20)      ,
actividadeconomica  VARCHAR(510)  ,
clienteoriginal     VARCHAR(510)  ,
--compañia          VARCHAR(510)  ,
creditooriginal     VARCHAR(510)  ,
fecha               VARCHAR(10)    ,
fechacastigocredito DATE          ,
idlinea             VARCHAR(510)  ,
ingresomensual      VARCHAR(510)  ,
lineaoriginal       VARCHAR(510)  ,
moneda              CHAR(2)       ,
perfilnegocioactual VARCHAR(510)  ,
producto            VARCHAR(510)  ,
subsegmentoproducto VARCHAR(510)  ,
uen                 VARCHAR(510)
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_COLOCACION';
INSERT OVERWRITE TABLE RSS_MCV_COLOCACION

SELECT
CASE WHEN moneda IN ('DOLARE', 'DOLAR') THEN lpad(concat(lineaoriginal, '02'), 20, '0') ELSE lpad(concat(lineaoriginal, '01'), 20, '0') END AS llaveuniversal ,
actividadeconomica    ,
clienteoriginal       ,
--compañia            ,
creditooriginal       ,
concat(split(fecha, '-')[0],split(fecha, '-')[1]) as fecha,                 
fechacastigocredito   ,       
idlinea               ,
ingresomensual        ,
lineaoriginal         ,
CASE WHEN  moneda IN ('DOLARE', 'DOLAR') THEN '02' ELSE '01' END AS moneda ,                
perfilnegocioactual   ,
producto              ,
subsegmentoproducto   ,
uen



FROM banregio_boi.colocacion_mensual ;