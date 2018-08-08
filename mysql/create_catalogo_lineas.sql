CREATE TABLE DBMYMWORK.JEA_MCV_CATALOGO_LINEAS
(
  nombre_tipo_credito VARCHAR(510),
  id_tipo VARCHAR(510),
  descripcion_tipo_credito VARCHAR(510),
  abreviacion VARCHAR(510),
  tipo_credito VARCHAR(510),
  es_revolvente VARCHAR(510),
  tipo_persona VARCHAR(510),
  tic_descri VARCHAR(510),
  tipo_credito_parametrico VARCHAR(510),
  tipo_garantia VARCHAR(510),
  com_comple VARCHAR(510),
  tipo_comision VARCHAR(510),
  tipo_diadve VARCHAR(510),
  tipo_dicave VARCHAR(510),
  tipo_digrin VARCHAR(510),
  tipo_diinve VARCHAR(510),
  portafolio VARCHAR(510),
  subcategoria2 VARCHAR(510)
);


-- copy public.catalogo_lineas to '/tmp/catalogo_lineas.csv' delimiter '|';
-- rsync -avz /tmp/catalogo_lineas.csv joseangel@10.24.25.196:/data/mysql-files/joseangel/
LOAD DATA INFILE '/data/mysql-files/joseangel/catalogo_lineas.csv'
INTO TABLE DBMYMWORK.JEA_MCV_CATALOGO_LINEAS
CHARACTER SET UTF8
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';