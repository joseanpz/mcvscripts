

SET @AUX1 = 0;
SET @AUX2 = 0;
SET @AUX3 = 0;
SET @AUX4 = 0;
SET @AUX5 = 0;
SET @AUX6 = 0;

SELECT * FROM JAT_BKT_CARTERA_CREDITICIA_201201_201804 LIMIT 100;

DROP TABLE IF EXISTS JAT_BKT_EJERCICIO_SEGMENTACIONES_20171027_X;

CREATE TABLE IF NOT EXISTS
	JAT_BKT_EJERCICIO_SEGMENTACIONES_20171027_X
(
	LINEA						VARCHAR(12)			NULL		COMMENT		'',
	CREDITO					VARCHAR(15)			NULL		COMMENT		'',
	CLASIFICACION			VARCHAR(30)			NULL		COMMENT		'',
	MONEDA					VARCHAR(3)			NULL		COMMENT		'',
	LLAVE_UNIVERSAL		VARCHAR(30)			NULL		COMMENT		'',
	FECHA_APERTURA			DATE					NULL		COMMENT		'',
	VENCIMIENTO_ORIGINAL	DATE					NULL		COMMENT		'',
	VENCIMIENTO_ACTUAL	DATE					NULL		COMMENT		''
)
AS
SELECT
	A.LINEA,
	A.CREDITO,
	A.CLASIFICACION,
	A.MONEDA,
	A.LLAVE_UNIVERSAL,
	-- A.LINEAORIGINAL,
	-- A.MONEDA_1,
	IFNULL(A.FECHA_APERTURA,IFNULL(B.FECHA_APERTURA,IFNULL(C.FECHAINICIOLINEA,DATE_ADD(FECHAVENCIMIENTO_A, INTERVAL -PLAZOORIGINAL MONTH)))) AS FECHA_APERTURA,
	IFNULL(A.VENCIMIENTO_ORIGINAL,IFNULL(B.VENCIMIENTO_ORIGINAL,C.FECHAVENCIMIENTO_O)) AS VENCIMIENTO_ORIGINAL,
	IFNULL(A.VENCIMIENTO_ACTUAL,IFNULL(B.VENCIMIENTO_ACTUAL,C.FECHAVENCIMIENTO_A)) AS VENCIMIENTO_ACTUAL
FROM
	(
	SELECT
		T1.LINEA,
		T1.CREDITO,
		T1.CLASIFICACION,
		T1.MONEDA,
		T1.LLAVE_UNIVERSAL,
		T2.LINEAORIGINAL,
		T2.MONEDA_1,
		T2.FECHACAMBIO AS FECHA_APERTURA,
		T2.FECHAVENCIMIENTODESPUES AS VENCIMIENTO_ORIGINAL,
		T3.FECHAVENCIMIENTODESPUES AS VENCIMIENTO_ACTUAL
	FROM
		(SELECT LINEA,CREDITO, MONEDA, LLAVE_UNIVERSAL, CLASIFICACION FROM JAT_BKT_CARTERA_CREDITICIA_201201_201804 WHERE FECHA = '201709' AND CLASIFICACION IN ('Actividad Comercial y Empresarial','Entidades Financieras','Entidades Gubernamentales','COMERCIAL Y EMPRESARIAL')) T1
	LEFT JOIN
		(
		SELECT
			DISTINCT
			AUX1.LLAVE_UNIVERSAL,
			AUX1.AUXILIAR1,
			FECHACAMBIO,
			FECHAVENCIMIENTODESPUES,
			MONEDA_1,
			LINEAORIGINAL
		FROM
			(
			SELECT
				*,
				LPAD(CONCAT(LINEAORIGINAL,IF(MONEDA_1 IN ('DOLARE','DOLAR'),'02',IF(MONEDA_1='COLSAL','31','01'))),25,'0') AS LLAVE_UNIVERSAL,				
				@AUX1:= @AUX1 + 1 AS AUXILIAR1
			FROM
				JAT_MOV_LINEAS_GNC
			WHERE
				FECHACAMBIO < '2017-10-01'
			) AUX1
		INNER JOIN
			(SELECT
				LLAVE_UNIVERSAL,
				MIN(AUXILIAR2) AS AUXILIAR2
			FROM
				(
				SELECT
					LPAD(CONCAT(LINEAORIGINAL,IF(MONEDA_1 IN ('DOLARE','DOLAR'),'02',IF(MONEDA_1='COLSAL','31','01'))),25,'0') AS LLAVE_UNIVERSAL,				
					@AUX2:= @AUX2 + 1 AS AUXILIAR2
				FROM
					JAT_MOV_LINEAS_GNC
				WHERE
					FECHACAMBIO < '2017-10-01'
				) AUX2
			GROUP BY
				1
			) T1
		ON
			AUX1.LLAVE_UNIVERSAL = T1.LLAVE_UNIVERSAL AND AUX1.AUXILIAR1 = T1.AUXILIAR2
		) T2
	ON
		T1.LLAVE_UNIVERSAL = T2.LLAVE_UNIVERSAL
	LEFT JOIN
		(
		SELECT
			DISTINCT
			AUX1.LLAVE_UNIVERSAL,
			AUX1.AUXILIAR1,
			FECHACAMBIO,
			FECHAVENCIMIENTODESPUES,
			MONEDA_1,
			LINEAORIGINAL
		FROM
			(
			SELECT
				*,
				LPAD(CONCAT(LINEAORIGINAL,IF(MONEDA_1 IN ('DOLARE','DOLAR'),'02',IF(MONEDA_1='COLSAL','31','01'))),25,'0') AS LLAVE_UNIVERSAL,				
				@AUX3:= @AUX3 + 1 AS AUXILIAR1
			FROM
				JAT_MOV_LINEAS_GNC
			WHERE
				FECHACAMBIO < '2017-10-01'
			) AUX1
		INNER JOIN
			(SELECT
				LLAVE_UNIVERSAL,
				MAX(AUXILIAR2) AS AUXILIAR2
			FROM
				(
				SELECT
					LPAD(CONCAT(LINEAORIGINAL,IF(MONEDA_1 IN ('DOLARE','DOLAR'),'02',IF(MONEDA_1='COLSAL','31','01'))),25,'0') AS LLAVE_UNIVERSAL,				
					@AUX4:= @AUX4 + 1 AS AUXILIAR2
				FROM
					JAT_MOV_LINEAS_GNC
				WHERE
					FECHACAMBIO < '2017-10-01'
				) AUX2
			GROUP BY
				1
			) T1
		ON
			AUX1.LLAVE_UNIVERSAL = T1.LLAVE_UNIVERSAL AND AUX1.AUXILIAR1 = T1.AUXILIAR2
		) T3
	ON
		T1.LLAVE_UNIVERSAL = T3.LLAVE_UNIVERSAL
	ORDER BY
		T1.LLAVE_UNIVERSAL
	) A
LEFT JOIN
	(
	SELECT
		T1.LINEA,
		T2.FECHACAMBIO AS FECHA_APERTURA,
		T2.FECHAVENCIMIENTODESPUES AS VENCIMIENTO_ORIGINAL,
		T3.FECHAVENCIMIENTODESPUES AS VENCIMIENTO_ACTUAL
	FROM
		(SELECT DISTINCT LINEA FROM JAT_BKT_CARTERA_CREDITICIA_201201_201804 WHERE FECHA = '201709' AND CLASIFICACION IN ('Actividad Comercial y Empresarial','Entidades Financieras','Entidades Gubernamentales','COMERCIAL Y EMPRESARIAL')) T1
	LEFT JOIN
		(
		SELECT
			DISTINCT
			AUX1.LINEAORIGINAL,
			AUX1.AUXILIAR1,
			FECHACAMBIO,
			FECHAVENCIMIENTODESPUES
		FROM
			(
			SELECT
				*,				
				@AUX1:= @AUX1 + 1 AS AUXILIAR1
			FROM
				JAT_MOV_LINEAS_GNC
			WHERE
				FECHACAMBIO < '2017-10-01'
			) AUX1
		INNER JOIN
			(SELECT
				LINEAORIGINAL,
				MIN(AUXILIAR2) AS AUXILIAR2
			FROM
				(
				SELECT
					LINEAORIGINAL,				
					@AUX2:= @AUX2 + 1 AS AUXILIAR2
				FROM
					JAT_MOV_LINEAS_GNC
				WHERE
					FECHACAMBIO < '2017-10-01'
				) AUX2
			GROUP BY
				1
			) T1
		ON
			AUX1.LINEAORIGINAL = T1.LINEAORIGINAL AND AUX1.AUXILIAR1 = T1.AUXILIAR2
		) T2
	ON
		T1.LINEA = T2.LINEAORIGINAL
	LEFT JOIN
		(
		SELECT
			DISTINCT
			AUX1.LINEAORIGINAL,
			AUX1.AUXILIAR1,
			FECHACAMBIO,
			FECHAVENCIMIENTODESPUES,
			MONEDA_1
		FROM
			(
			SELECT
				*,				
				@AUX3:= @AUX3 + 1 AS AUXILIAR1
			FROM
				JAT_MOV_LINEAS_GNC
			WHERE
				FECHACAMBIO < '2017-10-01'
			) AUX1
		INNER JOIN
			(SELECT
				LINEAORIGINAL,
				MAX(AUXILIAR2) AS AUXILIAR2
			FROM
				(
				SELECT
					LINEAORIGINAL,				
					@AUX4:= @AUX4 + 1 AS AUXILIAR2
				FROM
					JAT_MOV_LINEAS_GNC
				WHERE
					FECHACAMBIO < '2017-10-01'
				) AUX2
			GROUP BY
				1
			) T1
		ON
			AUX1.LINEAORIGINAL = T1.LINEAORIGINAL AND AUX1.AUXILIAR1 = T1.AUXILIAR2
		) T3
	ON
		T1.LINEA = T3.LINEAORIGINAL
	ORDER BY
		T1.LINEA
	) B
ON
	A.LINEA = B.LINEA
LEFT JOIN
	(
	SELECT
		LPAD(CONCAT(NUMEROLINEA,LINIDMONEDA),25,'0') AS LLAVE_UNIVERSAL,	
		MIN(FECHAINICIOLINEA) AS FECHAINICIOLINEA,
		MIN(FECHAVENCIMIENTO) AS FECHAVENCIMIENTO_O,
		MAX(FECHAVENCIMIENTO) AS FECHAVENCIMIENTO_A,
		MAX(PLAZOORIGINALMESES) AS PLAZOORIGINAL
	FROM
		JAT_MYM_RIESGO_DIAS_ATRASO_201709
	GROUP BY
		1
	) C
ON
	A.LLAVE_UNIVERSAL = C.LLAVE_UNIVERSAL


-- SET @AUX1 = 0;
-- SET @AUX2 = 0;
-- SET @AUX3 = 0;
-- SET @AUX4 = 0;
-- SET @AUX5 = 0;
-- SET @AUX6 = 0;
UNION ALL

SELECT
	A.LINEA,
	A.CREDITO,
	A.CLASIFICACION,
	A.MONEDA,
	-- A.LLAVE_UNIVERSAL,
	A.LLAVE_UNIVERSAL_O AS LLAVE_UNIVERSAL,
	-- A.LINEAORIGINAL,
	-- A.MONEDA_1,
	IFNULL(A.FECHA_APERTURA,IFNULL(B.FECHA_APERTURA,IFNULL(C.FECHAINICIOLINEA,DATE_ADD(FECHAVENCIMIENTO_A, INTERVAL -PLAZOORIGINAL MONTH)))) AS FECHA_APERTURA,
	IFNULL(A.VENCIMIENTO_ORIGINAL,IFNULL(B.VENCIMIENTO_ORIGINAL,C.FECHAVENCIMIENTO_O)) AS VENCIMIENTO_ORIGINAL,
	IFNULL(A.VENCIMIENTO_ACTUAL,IFNULL(B.VENCIMIENTO_ACTUAL,C.FECHAVENCIMIENTO_A)) AS VENCIMIENTO_ACTUAL
FROM
	(
	SELECT
		T1.LINEA,
		T1.CREDITO,
		T1.MONEDA,
		T1.LLAVE_UNIVERSAL,
		T1.LLAVE_UNIVERSAL_O,
		T1.CLASIFICACION,
		T2.LINEAORIGINAL,
		T2.MONEDA_1,
		T2.FECHACAMBIO AS FECHA_APERTURA,
		T2.FECHAVENCIMIENTODESPUES AS VENCIMIENTO_ORIGINAL,
		T3.FECHAVENCIMIENTODESPUES AS VENCIMIENTO_ACTUAL
	FROM
		(SELECT LINEA,CREDITO, MONEDA, LPAD(CONCAT(SUBSTR(CREDITO,1,12),MONEDA,EMPRESA),25,0) AS LLAVE_UNIVERSAL, LLAVE_UNIVERSAL AS LLAVE_UNIVERSAL_O, CLASIFICACION FROM JAT_BKT_CARTERA_CREDITICIA_201201_201804 WHERE FECHA = '201709' AND CLASIFICACION NOT IN ('Actividad Comercial y Empresarial','Entidades Financieras','Entidades Gubernamentales','COMERCIAL Y EMPRESARIAL')) T1
	LEFT JOIN
		(
		SELECT
			DISTINCT
			AUX1.LLAVE_UNIVERSAL,
			AUX1.AUXILIAR1,
			FECHACAMBIO,
			FECHAVENCIMIENTODESPUES,
			MONEDA_1,
			LINEAORIGINAL
		FROM
			(
			SELECT
				*,
				LPAD(CONCAT(LINEAORIGINAL,IF(MONEDA_1 IN ('DOLARE','DOLAR'),'02',IF(MONEDA_1='COLSAL','01','01')),IF(COMPANIA = 'BANCO REGIONAL DE MONTERREY, S.A.','001',IF(COMPANIA = 'AF BANREGIO, S.A. DE C.V.','500',IF(COMPANIA='BANREGIO SOLUCIONES FINANCIERAS, S.A. DE C.V.','300','000')))),25,'0') AS LLAVE_UNIVERSAL,				
				@AUX1:= @AUX1 + 1 AS AUXILIAR1
			FROM
				JAT_MOV_LINEAS_GNC
			WHERE
				FECHACAMBIO < '2017-10-01'
			) AUX1
		INNER JOIN
			(SELECT
				LLAVE_UNIVERSAL,
				MIN(AUXILIAR2) AS AUXILIAR2
			FROM
				(
				SELECT
					LPAD(CONCAT(LINEAORIGINAL,IF(MONEDA_1 IN ('DOLARE','DOLAR'),'02',IF(MONEDA_1='COLSAL','01','01')),IF(COMPANIA = 'BANCO REGIONAL DE MONTERREY, S.A.','001',IF(COMPANIA = 'AF BANREGIO, S.A. DE C.V.','500',IF(COMPANIA='BANREGIO SOLUCIONES FINANCIERAS, S.A. DE C.V.','300','000')))),25,'0') AS LLAVE_UNIVERSAL,					
					@AUX2:= @AUX2 + 1 AS AUXILIAR2
				FROM
					JAT_MOV_LINEAS_GNC
				WHERE
					FECHACAMBIO < '2017-10-01'
				) AUX2
			GROUP BY
				1
			) T1
		ON
			AUX1.LLAVE_UNIVERSAL = T1.LLAVE_UNIVERSAL AND AUX1.AUXILIAR1 = T1.AUXILIAR2
		) T2
	ON
		T1.LLAVE_UNIVERSAL = T2.LLAVE_UNIVERSAL
	LEFT JOIN
		(
		SELECT
			DISTINCT
			AUX1.LLAVE_UNIVERSAL,
			AUX1.AUXILIAR1,
			FECHACAMBIO,
			FECHAVENCIMIENTODESPUES,
			MONEDA_1,
			LINEAORIGINAL
		FROM
			(
			SELECT
				*,
				LPAD(CONCAT(LINEAORIGINAL,IF(MONEDA_1 IN ('DOLARE','DOLAR'),'02',IF(MONEDA_1='COLSAL','01','01')),IF(COMPANIA = 'BANCO REGIONAL DE MONTERREY, S.A.','001',IF(COMPANIA = 'AF BANREGIO, S.A. DE C.V.','500',IF(COMPANIA='BANREGIO SOLUCIONES FINANCIERAS, S.A. DE C.V.','300','000')))),25,'0') AS LLAVE_UNIVERSAL,					
				@AUX3:= @AUX3 + 1 AS AUXILIAR1
			FROM
				JAT_MOV_LINEAS_GNC
			WHERE
				FECHACAMBIO < '2017-10-01'
			) AUX1
		INNER JOIN
			(SELECT
				LLAVE_UNIVERSAL,
				MAX(AUXILIAR2) AS AUXILIAR2
			FROM
				(
				SELECT
					LPAD(CONCAT(LINEAORIGINAL,IF(MONEDA_1 IN ('DOLARE','DOLAR'),'02',IF(MONEDA_1='COLSAL','01','01')),IF(COMPANIA = 'BANCO REGIONAL DE MONTERREY, S.A.','001',IF(COMPANIA = 'AF BANREGIO, S.A. DE C.V.','500',IF(COMPANIA='BANREGIO SOLUCIONES FINANCIERAS, S.A. DE C.V.','300','000')))),25,'0') AS LLAVE_UNIVERSAL,					
					@AUX4:= @AUX4 + 1 AS AUXILIAR2
				FROM
					JAT_MOV_LINEAS_GNC
				WHERE
					FECHACAMBIO < '2017-10-01'
				) AUX2
			GROUP BY
				1
			) T1
		ON
			AUX1.LLAVE_UNIVERSAL = T1.LLAVE_UNIVERSAL AND AUX1.AUXILIAR1 = T1.AUXILIAR2
		) T3
	ON
		T1.LLAVE_UNIVERSAL = T3.LLAVE_UNIVERSAL
	ORDER BY
		T1.LLAVE_UNIVERSAL
	) A
LEFT JOIN
	(
	SELECT
		T1.LINEA,
		T2.FECHACAMBIO AS FECHA_APERTURA,
		T2.FECHAVENCIMIENTODESPUES AS VENCIMIENTO_ORIGINAL,
		T3.FECHAVENCIMIENTODESPUES AS VENCIMIENTO_ACTUAL
	FROM
		(SELECT DISTINCT SUBSTR(CREDITO,1,12) AS LINEA FROM JAT_BKT_CARTERA_CREDITICIA_201201_201804 WHERE FECHA = '201709' AND CLASIFICACION NOT IN ('Actividad Comercial y Empresarial','Entidades Financieras','Entidades Gubernamentales','COMERCIAL Y EMPRESARIAL')) T1
	LEFT JOIN
		(
		SELECT
			DISTINCT
			AUX1.LINEAORIGINAL,
			AUX1.AUXILIAR1,
			FECHACAMBIO,
			FECHAVENCIMIENTODESPUES
		FROM
			(
			SELECT
				*,				
				@AUX1:= @AUX1 + 1 AS AUXILIAR1
			FROM
				JAT_MOV_LINEAS_GNC
			WHERE
				FECHACAMBIO < '2017-10-01'
			) AUX1
		INNER JOIN
			(SELECT
				LINEAORIGINAL,
				MIN(AUXILIAR2) AS AUXILIAR2
			FROM
				(
				SELECT
					LINEAORIGINAL,				
					@AUX2:= @AUX2 + 1 AS AUXILIAR2
				FROM
					JAT_MOV_LINEAS_GNC
				WHERE
					FECHACAMBIO < '2017-10-01'
				) AUX2
			GROUP BY
				1
			) T1
		ON
			AUX1.LINEAORIGINAL = T1.LINEAORIGINAL AND AUX1.AUXILIAR1 = T1.AUXILIAR2
		) T2
	ON
		T1.LINEA = T2.LINEAORIGINAL
	LEFT JOIN
		(
		SELECT
			DISTINCT
			AUX1.LINEAORIGINAL,
			AUX1.AUXILIAR1,
			FECHACAMBIO,
			FECHAVENCIMIENTODESPUES,
			MONEDA_1
		FROM
			(
			SELECT
				*,				
				@AUX3:= @AUX3 + 1 AS AUXILIAR1
			FROM
				JAT_MOV_LINEAS_GNC
			WHERE
				FECHACAMBIO < '2017-10-01'
			) AUX1
		INNER JOIN
			(SELECT
				LINEAORIGINAL,
				MAX(AUXILIAR2) AS AUXILIAR2
			FROM
				(
				SELECT
					LINEAORIGINAL,				
					@AUX4:= @AUX4 + 1 AS AUXILIAR2
				FROM
					JAT_MOV_LINEAS_GNC
				WHERE
					FECHACAMBIO < '2017-10-01'
				) AUX2
			GROUP BY
				1
			) T1
		ON
			AUX1.LINEAORIGINAL = T1.LINEAORIGINAL AND AUX1.AUXILIAR1 = T1.AUXILIAR2
		) T3
	ON
		T1.LINEA = T3.LINEAORIGINAL
	ORDER BY
		T1.LINEA
	) B
ON
	A.LINEA = B.LINEA
LEFT JOIN
	(
	SELECT
		LPAD(CONCAT(SUBSTR(CREDITOORIGINAL,1,12),IF(LINIDMONEDA='31','01',LINIDMONEDA),IDCOMPANIA),25,'0') AS LLAVE_UNIVERSAL,	
		MIN(FECHAINICIOLINEA) AS FECHAINICIOLINEA,
		MIN(FECHAVENCIMIENTO) AS FECHAVENCIMIENTO_O,
		MAX(FECHAVENCIMIENTO) AS FECHAVENCIMIENTO_A,
		MAX(PLAZOORIGINALMESES) AS PLAZOORIGINAL
	FROM
		JAT_MYM_RIESGO_DIAS_ATRASO_201709
	GROUP BY
		1
	) C
ON
	A.LLAVE_UNIVERSAL = C.LLAVE_UNIVERSAL
;

ALTER TABLE JAT_BKT_EJERCICIO_SEGMENTACIONES_20171027_X ADD KEY LLAVE0(LLAVE_UNIVERSAL);
ALTER TABLE JAT_BKT_EJERCICIO_SEGMENTACIONES_20171027_X ADD KEY LLAVE1(CLASIFICACION);

SELECT * FROM JAT_BKT_EJERCICIO_SEGMENTACIONES_20171027_X;