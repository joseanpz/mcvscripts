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
-- rsync -avz /tmp/consultas_201401_201804.csv joseangel@10.24.25.196:/data/mysql-files/joseangel/
LOAD DATA INFILE '/data/mysql-files/joseangel/consultas_201401_201804.csv'
INTO TABLE DBMYMWORK.JEA_MCV_CONSULTAS
CHARACTER SET UTF8
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';



CREATE INDEX DBMYMWORK_JEA_MCV_CONSULTAS_FOLIO_IDX 
ON DBMYMWORK.JEA_MCV_CONSULTAS (Folio);

CREATE INDEX DBMYMWORK_JEA_MCV_CONSULTAS_RFC_IDX 
ON DBMYMWORK.JEA_MCV_CONSULTAS (RFC);