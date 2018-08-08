CREATE TABLE DBMYMWORK.JEA_MCV_MOVIMIENTO_LINEAS
(
  id_movimientolin int,
  clienteoriginal varchar(150),
  nombrecompleto varchar(150),
  lineaoriginal varchar(100),
  tipolinea varchar(100),
  fechaterminocontrato date,
  fechacambio date,
  fechavencimientoantes date,
  fechavencimientodespues date,
  cantidadotorgadaantes double precision,
  cantidadotorgadadespues double precision,
  variacion double precision,
  moneda varchar(60),
  tipomovimiento varchar(60),
  usuario varchar(60),
  compania varchar(100),
  segmento varchar(100),
  subsegmento varchar(100),
  producto varchar(100),
  banca varchar(100),
  coordinacion varchar(60),
  plaza varchar(60),
  oficina varchar(60),
  sucursal varchar(60),
  promotor varchar(100),
  catalogotipomovimientolinea varchar(150),
  desc_tipomovimiento varchar(250),
  prospectogarantias varchar(60),
  adminb6 varchar(60),
  fecha_actualizacion date
)


-- copy movimiento_lineas.tbl_movimiento_lineas to '/tmp/movimiento_lineas.csv' delimiter '|';
-- rsync -avz /tmp/movimiento_lineas.csv joseangel@10.24.25.196:/data/mysql-files/joseangel/
LOAD DATA INFILE '/data/mysql-files/joseangel/movimiento_lineas.csv'
INTO TABLE DBMYMWORK.JEA_MCV_MOVIMIENTO_LINEAS
CHARACTER SET UTF8
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';


CREATE INDEX DBMYMWORK__JEA_MCV_MOVIMIENTO_LINEAS_FECHA_CAMBIO_IDX 
ON DBMYMWORK.JEA_MCV_MOVIMIENTO_LINEAS (fechacambio);

CREATE INDEX DBMYMWORK__JEA_MCV_MOVIMIENTO_LINEAS_CLINETE_ORIGINAL_IDX 
ON DBMYMWORK.JEA_MCV_MOVIMIENTO_LINEAS (clienteoriginal)

CREATE INDEX DBMYMWORK__JEA_MCV_MOVIMIENTO_LINEAS_LINEA_ORIGINAL_IDX 
ON DBMYMWORK.JEA_MCV_MOVIMIENTO_LINEAS (lineaoriginal);