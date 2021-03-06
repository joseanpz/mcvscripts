-- CREAMOS LA TABLA DE DESEMPEÑO DE LOS CLIENTES CON VARIABLE OBJETIVO DEL MODELO DE CARTERA VENCIDA COMERCIAL

-- CREAMOS UNA CPOIA DE LA CARTERA DE CRÉDITO

DROP TABLE IF EXISTS JAT_MCV_CARTERACREDITICIA_COPIA;

CREATE TABLE IF NOT EXISTS
	JAT_MCV_CARTERACREDITICIA_COPIA AS
SELECT
	RFC,
	FECHA,
	SUM(CASE WHEN CARTERA_VENCIDA IS NULL THEN 0 ELSE CARTERA_VENCIDA END) AS CARTERA_VENCIDA,
	MAX(DIAS_ATRASO) AS DIAS_ATRASO 
FROM
	DBRSKDATAMART.Tbl_CarteraCrediticia
WHERE
	MIS <> 0
	AND FECHA >= '201601'
GROUP BY
	1, 2
;

ALTER TABLE JAT_MCV_CARTERACREDITICIA_COPIA
ADD KEY RFC(RFC),
ADD KEY FECHA(FECHA)
;

SET @MAXFECHA = (SELECT MAX(FECHA) FROM JAT_MCV_CARTERACREDITICIA_COPIA);

DROP TABLE IF EXISTS JAT_MCV_VARIABLE_OBJETIVO;

CREATE TABLE IF NOT EXISTS
	JAT_MCV_VARIABLE_OBJETIVO AS
SELECT
	T1.RFC,
	T1.FECHA,
	@MAXFECHA AS MAXFECHA,
	MAX(
		CASE
			WHEN (SUBSTR(T2.FECHA,1,4)-SUBSTR(T1.FECHA,1,4))*12+SUBSTR(T2.FECHA,5,2)-SUBSTR(T1.FECHA,5,2) BETWEEN 1 AND 6 THEN IFNULL(T2.DIAS_ATRASO,0)
			ELSE NULL
		END
		) AS MAX_ATR_S06M,
	MAX(
		CASE
			-- WHEN (SUBSTR(@MAXFECHA,1,4)-SUBSTR(T1.FECHA,1,4))*12+SUBSTR(@MAXFECHA,5,2)-SUBSTR(T1.FECHA,5,2) < 6 THEN NULL
			WHEN (SUBSTR(T2.FECHA,1,4)-SUBSTR(T1.FECHA,1,4))*12+SUBSTR(T2.FECHA,5,2)-SUBSTR(T1.FECHA,5,2) BETWEEN 1 AND 6 THEN IFNULL(T2.CARTERA_VENCIDA,0)
			ELSE NULL
		END
		) AS CV_S06M
FROM
	JAT_MCV_CARTERACREDITICIA_COPIA T1
LEFT JOIN
	JAT_MCV_CARTERACREDITICIA_COPIA T2
ON
	T1.RFC = T2.RFC
GROUP BY
	1,2,3
;

ALTER TABLE JAT_MCV_VARIABLE_OBJETIVO
ADD MALO SMALLINT NULL COMMENT 'MALO ES EL CLIENTE QUE ALCANZA CARTERA VENCIDA EN LOS SIGUIENTES 6 MESES',
ADD RFC_ENCRIPTADO VARCHAR(1000) NULL COMMENT 'RFC CON CLAVE DE ENCRIPTACIÓN'
;

UPDATE
	JAT_MCV_VARIABLE_OBJETIVO
SET
	RFC_ENCRIPTADO = HEX(AES_ENCRYPT(RFC,UNHEX(SHA2('MYM2018',512)))),
	MALO = CASE WHEN CV_S06M > 0 THEN 1 ELSE 0 END
;

SELECT * FROM JAT_MCV_VARIABLE_OBJETIVO;