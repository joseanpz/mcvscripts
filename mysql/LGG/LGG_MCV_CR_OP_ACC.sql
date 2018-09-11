--  Lorena García González
--  Agosto 20, 2018
--  MCV: Variables - Segmento Crédito Activos.

USE DBMYMWORK;

DROP TABLE IF EXISTS LGG_MCV_CR_OP_ACC;

CREATE TABLE IF NOT EXISTS LGG_MCV_CR_OP_ACC
AS 
SELECT DISTINCT RFC,FOLIO, FECHACONSULTA
FROM DBMYMWORK.JEA_MCV_CREDITOS_ACTIVOS;

ALTER TABLE LGG_MCV_CR_OP_ACC ADD INDEX LLAVE(RFC);
ALTER TABLE LGG_MCV_CR_OP_ACC ADD INDEX LLAVE1(FOLIO);
ALTER TABLE LGG_MCV_CR_OP_ACC ADD INDEX LLAVE2(FECHACONSULTA);





