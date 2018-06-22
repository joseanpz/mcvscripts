SELECT
    T1."LINEA",
    T1."CREDITO",
    T1."CLASIFICACION",
    T1."MONEDA",
    T1."LLAVE_UNIVERSAL",	
    -- T2.LINEAORIGINAL,
    -- T2.MONEDA_1,
    MIN(T2.fechacambio) AS FECHA_APERTURA,
    MAX(T2.fechacambio) AS FECHA_ULTIMO_CAMBIO
    -- T2.FECHAVENCIMIENTODESPUES AS VENCIMIENTO_ORIGINAL,
    -- T2.FECHAVENCIMIENTODESPUES AS VENCIMIENTO_ACTUAL
FROM 
    cartera."Tbl_CarteraVencida" T1
LEFT JOIN 
    cartera.tbl_movimientolineas T2
ON
    T1."LINEA" = T2.lineaoriginal
WHERE
    T1."FECHA" = '201709' AND T1.LINEA = '001056060371'
    AND T1."CLASIFICACION" IN ('Actividad Comercial y Empresarial','Entidades Financieras','Entidades Gubernamentales','COMERCIAL Y EMPRESARIAL')
    AND T2.fechacambio < '2017-10-01'  AND T2.lineaoriginal = '001056060371'
GROUP BY
	1,2,3,4,5
