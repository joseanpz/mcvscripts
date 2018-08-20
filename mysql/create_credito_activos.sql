DROP TABLE IF EXISTS 
    DBMYMWORK.JEA_MCV_CREDITOS_ACTIVOS;

CREATE TABLE DBMYMWORK.JEA_MCV_CREDITOS_ACTIVOS (
  Actualizacion VARCHAR(510),
  ClavObsvAct VARCHAR(510),
  Contrato VARCHAR(510),
  Dias119 VARCHAR(510),
  Dias179 VARCHAR(510),
  Dias29 VARCHAR(510),
  Dias59 VARCHAR(510),
  Dias89 VARCHAR(510),
  DiasMas180 VARCHAR(510),
  FechaApertura VARCHAR(510),
  FechaConsulta datetime,
  Folio VARCHAR(510),
  Historia VARCHAR(510),
  Moneda VARCHAR(510),
  Plazo VARCHAR(510),
  RFC VARCHAR(510),
  SaldoInicial VARCHAR(510),
  TipoCredito VARCHAR(510),
  TipoOtorgante VARCHAR(510),
  VigenteC VARCHAR(510)
);


-- en postgres correr 
/*copy 
(
select * from creditos_activos.creditos_activos_2014
union all
select * from creditos_activos.creditos_activos_2015
union all
select * from creditos_activos.creditos_activos_2016
union all
select * from creditos_activos.creditos_activos_2017
union all
select * from creditos_activos.creditos_activos_201801_201804

)
to '/tmp/creditos_activos.csv' delimiter '|';*/
-- y exportar: rsync -avz /tmp/creditos_activos.csv joseangel@10.24.25.196:/data/mysql-files/joseangel/
LOAD DATA INFILE '/data/mysql-files/joseangel/creditos_activos.csv'
INTO TABLE DBMYMWORK.JEA_MCV_CREDITOS_ACTIVOS
CHARACTER SET UTF8
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';

CREATE INDEX DBMYMWORK__JEA_MCV_CREDITOS_ACTIVOS_FECHA_CONSULTA
ON DBMYMWORK.JEA_MCV_COLOCACION (FechaConsulta);


CREATE INDEX DBMYMWORK__JEA_MCV_CREDITOS_ACTIVOS_FOLIO
ON DBMYMWORK.JEA_MCV_CREDITOS_ACTIVOS (Folio);


CREATE INDEX DBMYMWORK__JEA_MCV_CREDITOS_ACTIVOS_RFC
ON DBMYMWORK.JEA_MCV_CREDITOS_ACTIVOS (RFC);


