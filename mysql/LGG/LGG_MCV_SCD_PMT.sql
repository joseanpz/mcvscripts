--  Lorena García González
--  Agosto 09, 2018
--  MCV: Creación de Variables - Monto exigible

USE DBMYMWORK;

DROP TABLE IF EXISTS LGG_MCV_SCD_PMT; 

CREATE TABLE IF NOT EXISTS LGG_MCV_SCD_PMT AS 
SELECT 
	LLAVE_UNIVERSAL_20,RFC, CLIENTE, LINEA,FECHA AS FECHACARTERA,
	CONCAT(YEAR(DATE_ADD(STR_TO_DATE(CONCAT(FECHA,'01'),'%Y%m%d'),INTERVAL -3 MONTH))*100+MONTH(DATE_ADD(STR_TO_DATE(CONCAT(FECHA,'01'),'%Y%m%d'),INTERVAL -3 MONTH))) AS FECHA_TOPE_03M, 
	CONCAT(YEAR(DATE_ADD(STR_TO_DATE(CONCAT(FECHA,'01'),'%Y%m%d'),INTERVAL -6 MONTH))*100+MONTH(DATE_ADD(STR_TO_DATE(CONCAT(FECHA,'01'),'%Y%m%d'),INTERVAL -6 MONTH))) AS FECHA_TOPE_06M,
	CONCAT(YEAR(DATE_ADD(STR_TO_DATE(CONCAT(FECHA,'01'),'%Y%m%d'),INTERVAL -12 MONTH))*100+MONTH(DATE_ADD(STR_TO_DATE(CONCAT(FECHA,'01'),'%Y%m%d'),INTERVAL -12 MONTH))) AS FECHA_TOPE_12M
FROM 
	DBMYMWORK.JEA_MCV_UNIVERSO;
	
ALTER TABLE LGG_MCV_SCD_PMT ADD INDEX LLAVE(RFC);
ALTER TABLE LGG_MCV_SCD_PMT ADD INDEX LLAVE1(CLIENTE);
ALTER TABLE LGG_MCV_SCD_PMT ADD INDEX LLAVE2(LINEA);
ALTER TABLE LGG_MCV_SCD_PMT ADD INDEX LLAVE3(LLAVE_UNIVERSAL_20);	
