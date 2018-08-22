DROP TABLE IF EXISTS 
    DBMYMWORK.JEA_MCV_UNIVERSO_BANDERAS_LABELS;

CREATE TABLE DBMYMWORK.JEA_MCV_UNIVERSO_BANDERAS_LABELS
(
  LLAVE_UNIVERSAL_20 VARCHAR(20),
  RFC VARCHAR(15),
  FECHACARTERA VARCHAR(6),
  CCI TINYINT,
  REESTRUCTURA TINYINT,
  SOBREGIRO TINYINT,
  INTERCOMPANIA TINYINT,
  CARTERA_ADQUIRIDA TINYINT,
  REVOLVENTE TINIINT,
  LABEL TINIINT
);


-- copy cartera.tbl_universo_banderas_labels to '/tmp/tbl_universo_banderas_labels.csv' delimiter '|';
-- rsync -avz /tmp/tbl_universo_banderas_labels.csv joseangel@10.24.25.196:/data/mysql-files/joseangel/
LOAD DATA INFILE '/data/mysql-files/joseangel/tbl_universo_banderas_labels.csv'
INTO TABLE DBMYMWORK.JEA_MCV_UNIVERSO_BANDERAS
CHARACTER SET UTF8
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';



CREATE INDEX DBMYMWORK_JEA_MCV_UNIVERSO_BANDERAS_LABELS_LLAVE_UNIVERSAL_20_IDX 
ON DBMYMWORK.JEA_MCV_UNIVERSO_BANDERAS_LABELS (LLAVE_UNIVERSAL_20);

CREATE INDEX DBMYMWORK_JEA_MCV_UNIVERSO_BANDERAS_LABELS_RFC_IDX 
ON DBMYMWORK.JEA_MCV_UNIVERSO_BANDERAS_LABELS (RFC);

CREATE INDEX DBMYMWORK_JEA_MCV_UNIVERSO_BANDERAS_LABELS_FECHACARTERA_IDX 
ON DBMYMWORK.JEA_MCV_UNIVERSO_BANDERAS_LABELS (FECHACARTERA);