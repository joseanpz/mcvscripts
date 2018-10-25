CREATE TABLE DBMYMWORK.JEA_MCV_HISTORIA
(
  CalificacionCartera VARCHAR(510),
  FechaConsulta DATETIME,
  Folio VARCHAR(510),
  Periodo VARCHAR(510),
  RFC VARCHAR(510),
  Vencido1a29 VARCHAR(510),
  Vencido30a59 VARCHAR(510),
  Vencido60a89 VARCHAR(510),
  VencidoMas89 VARCHAR(510),
  VigenteH VARCHAR(510)
);


-- copy historia."HISTORIA_201401_201804" to '/tmp/historia_201401_201804.csv' delimiter '|';
-- MDB-TOOLS 
-- mdb-export -D '%Y-%m-%d %H:%M:%S' -H -d '|' <file> <table> > <csv-file>      (overwrite)
-- mdb-export -D '%Y-%m-%d %H:%M:%S' -H -d '|' <file> <table> >> <csv-file>      (append)
-- rsync -avz /tmp/historia_201401_201804.csv joseangel@10.24.25.196:/data/mysql-files/joseangel/
LOAD DATA INFILE '/data/mysql-files/joseangel/historia_201401_201804.csv'
INTO TABLE DBMYMWORK.JEA_MCV_HISTORIA
CHARACTER SET UTF8
FIELDS TERMINATED BY '|' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j)
SET
CalificacionCartera = nullif(@a,''),
FechaConsulta = nullif(@b,''),
Folio = nullif(@c,''),
Periodo = nullif(@d,''),
RFC = nullif(@e,''),
Vencido1a29 = nullif(@f,''),
Vencido30a59 = nullif(@g,''),
Vencido60a89 = nullif(@h,''),
VencidoMas89 = nullif(@i,''),
VigenteH = nullif(@j,'');


CREATE INDEX DBMYMWORK_JEA_MCV_HISTORIA_RFC_IDX 
ON DBMYMWORK.JEA_MCV_CONSULTAS (RFC);

