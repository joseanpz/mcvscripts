DROP TABLE IF EXISTS 
    DBMYMWORK.JEA_MCV_COLOCACION;

CREATE TABLE DBMYMWORK.JEA_MCV_COLOCACION (
    LLAVE_UNIVERSAL CHAR(20),
    ACTIVIDAD_ECONOMICA VARCHAR(510),
    CLIENTE VARCHAR(510),
    COMPANIA VARCHAR(510),
    CREDITO_ORIGINAL VARCHAR(510),
    FECHA VARCHAR(6),
    FECHA_CASTIGO_CREDITO DATETIME,
    ID_LINEA VARCHAR(510),
    INGRESO_MENSUAL VARCHAR(510),
    LINEA_ORIGINAL VARCHAR(510),
    MONEDA CHAR(2),
    PERFIL_NEGOCIO_ACTUAL VARCHAR(510),
    PRODUCTO VARCHAR(510),
    SUBSEGMENTO_PRODUCTO VARCHAR(510),
    UEN VARCHAR(510)
);


-- en postgres correr 
-- copy colocacion.tbl_colocacion_mensual_uen_peq_med_credito to '/tmp/colocacion.csv' delimiter '|';
-- y exportar: rsync -avz /tmp/colocacion.csv joseangel@10.24.25.196:/data/mysql-files/joseangel/
LOAD DATA INFILE '/data/mysql-files/joseangel/colocacion.csv'
INTO TABLE DBMYMWORK.JEA_MCV_COLOCACION
CHARACTER SET UTF8
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';

CREATE INDEX DBMYMWORK__JEA_MCV_COLOCACION_LLAVE_UNIVERSAL
ON DBMYMWORK.JEA_MCV_COLOCACION (LLAVE_UNIVERSAL);

CREATE INDEX DBMYMWORK__JEA_MCV_COLOCACION_FECHA
ON DBMYMWORK.JEA_MCV_COLOCACION (FECHA);




CREATE TABLE `JEA_MCV_COLOCACION_TMP` (
    `LLAVE_UNIVERSAL` CHAR(20) NULL DEFAULT NULL,
    `ACTIVIDAD_ECONOMICA` VARCHAR(510) NULL DEFAULT NULL,
    `CLIENTE` VARCHAR(510) NULL DEFAULT NULL,
    `COMPANIA` VARCHAR(510) NULL DEFAULT NULL,
    `CREDITO_ORIGINAL` VARCHAR(510) NULL DEFAULT NULL,
    `FECHA` VARCHAR(6) NULL DEFAULT NULL,
    `FECHA_CASTIGO_CREDITO` DATETIME NULL DEFAULT NULL,
    `ID_LINEA` VARCHAR(510) NULL DEFAULT NULL,
    `INGRESO_MENSUAL` VARCHAR(510) NULL DEFAULT NULL,
    `LINEA_ORIGINAL` VARCHAR(510) NULL DEFAULT NULL,
    `MONEDA` CHAR(2) NULL DEFAULT NULL,
    `PERFIL_NEGOCIO_ACTUAL` VARCHAR(510) NULL DEFAULT NULL,
    `PRODUCTO` VARCHAR(510) NULL DEFAULT NULL,
    `SUBSEGMENTO_PRODUCTO` VARCHAR(510) NULL DEFAULT NULL,
    `UEN` VARCHAR(510) NULL DEFAULT NULL,
    INDEX `DBMYMWORK__JEA_MCV_COLOCACION_LLAVE_UNIVERSAL` (`LLAVE_UNIVERSAL`),
    INDEX `DBMYMWORK__JEA_MCV_COLOCACION_FECHA` (`FECHA`)
)

-- update 2018-12-06


-- MDB-TOOLS
-- mdb-export -D '%Y-%m-%d %H:%M:%S' -H -d '|' <file> <table> > <csv-file>      (overwrite)
-- mdb-export -D '%Y-%m-%d %H:%M:%S' -H -d '|' <file> <table> >> <csv-file>      (append)

LOAD DATA INFILE '/data/mysql-files/joseangel/mdb/colocacion_201806_201811.csv'
INTO TABLE DBMYMWORK.JEA_MCV_COLOCACION_TMP
CHARACTER SET UTF8
FIELDS TERMINATED BY '|' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(@actividad_economica,@cliente,@compania,@credito_original,@fecha,@fecha_castigo,@id_linea,
 @ingreso_mensual,@linea_original,@moneda,@perfil_negocio,@producto,@subsegmento_prod,@uen)
SET
LLAVE_UNIVERSAL = 
case
    when @moneda in ('DOLARE', 'DOLAR') then 
      lpad(concat(@linea_original, '02'), 20, '0')
    else 
      lpad(concat(@linea_original, '01'), 20, '0')
end,
ACTIVIDAD_ECONOMICA = nullif(@actividad_economica,''),
CLIENTE = nullif(@cliente,''),
COMPANIA = nullif(@compania,''),
CREDITO_ORIGINAL = nullif(@credito_original,''),
FECHA = concat(substring_index(@fecha, '-', 1), substring_index(substring_index(@fecha, '-', 2), '-', -1)),
FECHA_CASTIGO_CREDITO = nullif(@fecha_castigo,''),
ID_LINEA = nullif(@id_linea,''),
INGRESO_MENSUAL = nullif(@ingreso_mensual,''),
LINEA_ORIGINAL = nullif(@linea_original,''),
MONEDA = 
case 
    when @moneda in ('DOLARE', 'DOLAR') then 
      '02'
    else 
      '01'
end,
PERFIL_NEGOCIO_ACTUAL = nullif(@perfil_negocio,''),
PRODUCTO = nullif(@producto,''),
SUBSEGMENTO_PRODUCTO = nullif(@subsegmento_prod,''),
UEN = nullif(@uen,'');
