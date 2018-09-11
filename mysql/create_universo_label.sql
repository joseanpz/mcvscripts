DROP TABLE IF EXISTS 
    DBMYMWORK.JEA_MCV_UNIVERSO_LABEL;

CREATE TABLE DBMYMWORK.JEA_MCV_UNIVERSO_LABEL
(
  LLAVE_UNIVERSAL_20 VARCHAR(20),
  RFC VARCHAR(15),
  FECHACARTERA VARCHAR(6),
  LABEL TINYINT
);


-- copy cartera.tbl_universo_label to '/tmp/tbl_universo_label.csv' delimiter '|';
-- rsync -avz /tmp/tbl_universo_label.csv joseangel@10.24.25.196:/data/mysql-files/joseangel/
LOAD DATA INFILE '/data/mysql-files/joseangel/tbl_universo_label.csv'
INTO TABLE DBMYMWORK.JEA_MCV_UNIVERSO_LABEL
CHARACTER SET UTF8
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';



CREATE INDEX DBMYMWORK_JEA_MCV_UNIVERSO_LABEL_LLAVE_UNIVERSAL_20_IDX 
ON DBMYMWORK.JEA_MCV_UNIVERSO_LABEL (LLAVE_UNIVERSAL_20);

CREATE INDEX DBMYMWORK_JEA_MCV_UNIVERSO_LABEL_RFC_IDX 
ON DBMYMWORK.JEA_MCV_UNIVERSO_LABEL (RFC);

CREATE INDEX DBMYMWORK_JEA_MCV_UNIVERSO_LABEL_FECHACARTERA_IDX 
ON DBMYMWORK.JEA_MCV_UNIVERSO_LABEL (FECHACARTERA);