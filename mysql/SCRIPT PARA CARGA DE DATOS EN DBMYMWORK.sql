DROP TABLE IF EXISTS DBMYMWORK.RSBS_Rep_EI_Credito;

CREATE TABLE IF NOT EXISTS DBMYMWORK.RSBS_Rep_EI_Credito
(
Metodologia	VARCHAR(30),
IdVersion	VARCHAR(100),
AnioMes	VARCHAR(100),
IdCompania	VARCHAR(100),
Compania	VARCHAR(100),
IdPersona	VARCHAR(100),
IdCliente	VARCHAR(100),
Cliente	VARCHAR(200),
ClienteRFC	VARCHAR(100),
Credito	VARCHAR(20),
Linea	VARCHAR(100),
IdTipoLinea	VARCHAR(100),
TipoLinea	VARCHAR(100),
TipoAbreviado	VARCHAR(100),
IdMonedaLinea	VARCHAR(100),
MonedaLinea	VARCHAR(100),
IdMonedaCredito	VARCHAR(100),
MonedaCredito	VARCHAR(100),
CapitalNormal	DOUBLE,
CapitalAtrasado	DOUBLE,
CapitalVencido	DOUBLE,
CapitalVencidoNoExigible	DOUBLE,
InteresNormal	DOUBLE,
InteresAtrasado	DOUBLE,
InteresVencido	DOUBLE,
Responsabilidad	DOUBLE,
CarteraVencida	DOUBLE,
EI	DOUBLE,
TipoEIAplicada	VARCHAR(100),
DiasAtraso	int(11)

)
ENGINE=InnoDB;

ALTER TABLE DBMYMWORK.RSBS_Rep_EI_Credito ADD KEY Linea(Linea);
ALTER TABLE DBMYMWORK.RSBS_Rep_EI_Credito ADD KEY AnioMes(AnioMes);
ALTER TABLE DBMYMWORK.RSBS_Rep_EI_Credito ADD KEY ClienteRFC(ClienteRFC);
ALTER TABLE DBMYMWORK.RSBS_Rep_EI_Credito ADD KEY IdCliente(IdCliente);

LOAD DATA INFILE
'../mysql-files/Librotest'
INTO TABLE DBMYMWORK.RSBS_Rep_EI_Credito
FIELDS TERMINATED BY '|' OPTIONALLY ENCLOSED BY ""
LINES TERMINATED BY '\n'
--IGNORE 1 LINES
(
Metodologia,
IdVersion,
AnioMes,
IdCompania,
Compania,
IdPersona,
IdCliente,
Cliente,
ClienteRFC,
Credito,
Linea,
IdTipoLinea,
TipoLinea,
TipoAbreviado,
IdMonedaLinea,
MonedaLinea,
IdMonedaCredito,
MonedaCredito,
CapitalNormal,
CapitalAtrasado,
CapitalVencido,
CapitalVencidoNoExigible,
InteresNormal,
InteresAtrasado,
InteresVencido,
Responsabilidad,
CarteraVencida,
EI,
TipoEIAplicada,
DiasAtraso

);