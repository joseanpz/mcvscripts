SELECT
	'RFC' AS RFC,
	'FECHA' AS FECHA,
	'DIAS_ATRASO' AS DIAS_ATRASO,
	'DPCV_CAP'    AS DPCV_CAP,
	'DPCV_INT'    AS DPCV_INT,
	'DPCV_MIN'    AS DPCV_MIN
UNION ALL
SELECT
	T1.RFC,
	T1.FECHA,
	MAX(CASE
		WHEN DIAS_ATRASO IS NULL THEN 0
		ELSE DIAS_ATRASO
	END AS DIAS_ATRASO),
	MIN(CASE
		WHEN TIPO_DE_CREDITO IN ('3F','3K','ACSSGR PE NAFIN','DEUDOR FACTOR PLAN DISTRIBUIDOR','DFPD') THEN 90 - IFNULL(DIAS_ATRASO,0)
		WHEN TIPO_DE_CREDITO IN ('FFCR.','FFPCEOP') THEN 30 - IFNULL(DIAS_ATRASO,0)
		ELSE (SELECT MAX(TIP_DICAVE) FROM LGG_MYM_CATALOGO_LINEAS_ABR2018 T3 WHERE T2.TIPO_DE_CREDITO = T3.DESCRIPCION_DEL_TIPO_DE_CREDITO OR T2.TIPO_DE_CREDITO = T3.ABREVIACION) - IFNULL(DIAS_ATRASO,0)
	END) AS DPCV_CAP,
	MIN(CASE
		WHEN TIPO_DE_CREDITO IN ('3F','3K','ACSSGR PE NAFIN','DEUDOR FACTOR PLAN DISTRIBUIDOR','DFPD') THEN 90 - IFNULL(DIAS_ATRASO,0)
		WHEN TIPO_DE_CREDITO IN ('FFCR.','FFPCEOP') THEN 30 - IFNULL(DIAS_ATRASO,0)
		ELSE (SELECT MAX(TIP_DIINVE) FROM LGG_MYM_CATALOGO_LINEAS_ABR2018 T3 WHERE T2.TIPO_DE_CREDITO = T3.DESCRIPCION_DEL_TIPO_DE_CREDITO OR T2.TIPO_DE_CREDITO = T3.ABREVIACION) - IFNULL(DIAS_ATRASO,0)
	END) AS DPCV_INT,
	MIN(CASE
		WHEN TIPO_DE_CREDITO IN ('3F','3K','ACSSGR PE NAFIN','DEUDOR FACTOR PLAN DISTRIBUIDOR','DFPD') THEN 90 - IFNULL(DIAS_ATRASO,0)
		WHEN TIPO_DE_CREDITO IN ('FFCR.','FFPCEOP') THEN 30 - IFNULL(DIAS_ATRASO,0)
		ELSE (SELECT MAX(LEAST(TIP_DICAVE,TIP_DIINVE)) FROM LGG_MYM_CATALOGO_LINEAS_ABR2018 T3 WHERE T2.TIPO_DE_CREDITO = T3.DESCRIPCION_DEL_TIPO_DE_CREDITO OR T2.TIPO_DE_CREDITO = T3.ABREVIACION) - IFNULL(DIAS_ATRASO,0)
	END) AS DPCV_MIN
FROM
	LGG_MCV_VAR_MODELO T1
LEFT JOIN
	JEA_MCV_UNIVERSO T2
ON
	T1.RFC = T2.RFC AND
	T1.FECHA= T2.FECHA
WHERE
	T1.LABEL <> 0 AND
	T1.FECHA BETWEEN 201710 AND 201812 AND
	(SUBSTR(T1.FECHA,1,4)-YEAR(T1.FECHA_BC))*12 + SUBSTR(T1.FECHA,5,2) - MONTH(T1.FECHA_BC) BETWEEN 0 AND 4) 