CREATE TABLE DBMYMWORK.JEA_MCV_CONSULTAS
(
  CalificacionCarteraBanxico varchar(510),
  ConInstComUlt12m varchar(510),
  ConInstComUlt24m varchar(510),
  ConInstComUlt3m varchar(510),
  ConInstFinUlt12m varchar(510),
  ConInstFinUlt24m varchar(510),
  ConInstFinUlt3m varchar(510),
  FechaConsulta datetime,
  Folio varchar(510),
  RFC varchar(510)
);

-- copy consultas.tbl_consultas_pm_201401_201804 to '/tmp/consultas_201401_201804.csv' delimiter '|';
-- MDB-TOOLS 
-- mdb-export -D '%Y-%m-%d %H:%M:%S' -H -d '|' <file> <table> > <csv-file>      (overwrite)
-- mdb-export -D '%Y-%m-%d %H:%M:%S' -H -d '|' <file> <table> >> <csv-file>      (append)
-- rsync -avz /tmp/consultas_201401_201804.csv joseangel@10.24.25.196:/data/mysql-files/joseangel/
LOAD DATA INFILE '/data/mysql-files/joseangel/mdb/consultas_201401_201804.csv'
INTO TABLE DBMYMWORK.JEA_MCV_CONSULTAS
CHARACTER SET UTF8
FIELDS TERMINATED BY '|' ENCLOSED BY '"'
LINES TERMINATED BY '\n';
(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@k)
SET
CalificacionCarteraBanxico = nullif(@a,''),
ConInstComUlt12m = nullif(@b,''),
ConInstComUlt24m = nullif(@c,''),
ConInstComUlt3m = nullif(@d,''),
ConInstFinUlt12m = nullif(@e,''),
ConInstFinUlt24m = nullif(@f,''),
ConInstFinUlt3m = nullif(@g,''),
FechaConsulta = nullif(@h,''),
Folio = nullif(@i,''),
RFC = nullif(@j,'');



CREATE INDEX DBMYMWORK_JEA_MCV_CONSULTAS_FOLIO_IDX 
ON DBMYMWORK.JEA_MCV_CONSULTAS (Folio);

CREATE INDEX DBMYMWORK_JEA_MCV_CONSULTAS_RFC_IDX 
ON DBMYMWORK.JEA_MCV_CONSULTAS (RFC);