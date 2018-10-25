
DROP TABLE IF EXISTS 
    DBMYMWORK.JEA_MCV_CREDITOS_LIQUIDADOS;

CREATE TABLE DBMYMWORK.JEA_MCV_CREDITOS_LIQUIDADOS (
  ActualizacionLiq VARCHAR(510),
  ClavObsvLiq VARCHAR(510),
  ContratoLiq VARCHAR(510),
  FechaAperturaLiq VARCHAR(510),
  FechaCierreLiq VARCHAR(510),
  FechaConsulta datetime,
  Folio VARCHAR(510),
  MonedaLiq VARCHAR(510),
  PlazoLiq VARCHAR(510),
  RFC VARCHAR(510),
  SaldoInicialLiq VARCHAR(510),
  TipoCreditoLiq VARCHAR(510),
  TipoOtorganteLiq VARCHAR(510)
);



-- MDB-TOOLS 
-- mdb-export -D '%Y-%m-%d %H:%M:%S' -H -d '|' <file> <table> > <csv-file>      (overwrite)
-- mdb-export -D '%Y-%m-%d %H:%M:%S' -H -d '|' <file> <table> >> <csv-file>      (append)
LOAD DATA INFILE '/data/mysql-files/joseangel/mdb/creditos_liquidados.csv'
INTO TABLE DBMYMWORK.JEA_MCV_CREDITOS_LIQUIDADOS
CHARACTER SET UTF8
FIELDS TERMINATED BY '|' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@k,@l,@m)
SET
ActualizacionLiq = nullif(@a,''),
ClavObsvLiq = nullif(@b,''),
ContratoLiq = nullif(@c,''),
FechaAperturaLiq = nullif(@d,''),
FechaCierreLiq = nullif(@e,''),
FechaConsulta = nullif(@f,''),
Folio = nullif(@g,''),
MonedaLiq = nullif(@h,''),
PlazoLiq = nullif(@i,''),
RFC = nullif(@j,''),
SaldoInicialLiq = nullif(@k,''),
TipoCreditoLiq = nullif(@l,''),
TipoOtorganteLiq = nullif(@m,'');

CREATE INDEX DBMYMWORK__JEA_MCV_CREDITOS_LIQUIDADOS_FECHA_CONSULTA
ON DBMYMWORK.JEA_MCV_CREDITOS_LIQUIDADOS (FechaConsulta);


CREATE INDEX DBMYMWORK__JEA_MCV_CREDITOS_LIQUIDADOS_FOLIO
ON DBMYMWORK.JEA_MCV_CREDITOS_LIQUIDADOS (Folio);


CREATE INDEX DBMYMWORK__JEA_MCV_CREDITOS_LIQUIDADOS_RFC
ON DBMYMWORK.JEA_MCV_CREDITOS_LIQUIDADOS (RFC);