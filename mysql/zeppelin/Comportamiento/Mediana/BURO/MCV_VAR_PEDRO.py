%hive

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------- ACTUALIZAR UNIVERSO MODELADO --------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- EL CATÁLOGO DE ALERTAS TEMPRANAS CONTIENE LA INFORMACIÓN DE LOS TIPOS DE CRÉDITO A PARTIR DE 201607, YA QUE ANTES DE ESTA FECHA LOS TIPOS DE CRÉDITO TIENEN OTRA ESTRUCTURA

DROP TABLE IF EXISTS dbriskdatamart.JAT_MCV_VAR_PEDRO__${FECHA_CALIFICACION};
CREATE TABLE dbriskdatamart.JAT_MCV_VAR_PEDRO__${FECHA_CALIFICACION}
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'

LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MZM/MCV/JAT_MCV_VAR_PEDRO__${FECHA_CALIFICACION}' AS 

SELECT
    T1.RFC,
    T1.FECHA,
    T1.FOLIORESPUESTABC,
    
    T2.PCT_DBT_BK,
    
    T3.SALDO_TOTAL,
    T3.SALDOINICIAL_CALCULADO,
	T3.SALDO_TOTAL_REV,
	T3.SALDOINICIAL_CALCULADO_REV,
    T3.SALDO_TOTAL/NULLIF(T3.SALDOINICIAL_CALCULADO,0) AS UTILIZACION, -- EL NULO SE REPRESENTA CON CERO
    T3.SALDO_TOTAL_REV/NULLIF(T3.SALDOINICIAL_CALCULADO_REV,0) AS UTILIZACIONREVOLVENTES, -- EL NULO SE REPRESENTA CON CERO
	
	T4.SDO,
	T4.PI,
    T4.MTO_LIN_RFC,
    T4.TERR_,
    -- LA VARIABLE LAG_ANTIG SE CALCULÓ EN EL SET DE VARIABLES DE MOVIMIENTOS DE LÍNEA, CONOCIDA COMO MS_OP
	T4.SDO_REV,
	T4.SDO_NO_REV,
	T4.SDO_REV/T4.SDO AS PCT_REV,
	CASE
	    WHEN T4.SDO_NO_REV = 0 THEN NULL
	    ELSE LEAST(T4.SDO_REV/T4.SDO_NO_REV, 77)
	END AS VCC_REV_SMP,
	CASE
        WHEN T2.DEUDA_TOT IS NULL OR T2.DEUDA_TOT = 0 THEN NULL
        ELSE T4.SDO/T2.DEUDA_TOT
	END AS DT_VS_SD
	
FROM
    dbriskdatamart.MZM_MCV_UNIVERSO_MODELADO__${FECHA_CALIFICACION} T1
LEFT JOIN
    (SELECT
        FOLIO,
        MAX(DEUDA_TOT) AS DEUDA_TOT,
        MAX(
            CASE
                WHEN DEUDA_TOT = '--' THEN NULL
                WHEN DEUDA_TOT = 0 THEN NULL
                ELSE
                    (CASE WHEN BK_DEUDA_TOT = '--' THEN NULL ELSE BK_DEUDA_TOT END) / (CASE WHEN DEUDA_TOT = '--' THEN NULL ELSE DEUDA_TOT END)
            END
        ) AS PCT_DBT_BK
    FROM
        dbriskdatamart.TBL_BUROCALIFICAPM_RECURRENTE
    GROUP BY
        FOLIO
    ) T2
ON
    T1.FOLIORESPUESTABC = T2.FOLIO
LEFT JOIN
    (SELECT
        FOLIO,
        SUM(VIGENTEC) AS VIGENTEC,
        SUM(DIAS29) AS DIAS29,
        SUM(DIAS59) AS DIAS59,
        SUM(DIAS89) AS DIAS89,
        SUM(DIAS119) AS DIAS119,
        SUM(DIAS179) AS DIAS179,
        SUM(DIASMAS180) AS DIASMAS180,
        SUM(VIGENTEC + DIAS29 + DIAS59 + DIAS89 + DIAS119 + DIAS179 + DIASMAS180) AS SALDO_TOTAL,
        SUM(
            CASE
    			WHEN SALDOINICIAL  = 0.00 AND TIPOCREDITO='1380' THEN ((VIGENTEC + DIAS29 + DIAS59 + DIAS89 + DIAS119 + DIAS179 + DIASMAS180)/0.45)
    			WHEN SALDOINICIAL  = 0.00 AND TIPOCREDITO='6280' THEN ((VIGENTEC + DIAS29 + DIAS59 + DIAS89 + DIAS119 + DIAS179 + DIASMAS180)/0.15)
    			ELSE SALDOINICIAL
    		END
    	) AS SALDOINICIAL_CALCULADO,
        SUM(
    	    CASE 
                WHEN TIPOCREDITO IN ('1380','6280','6250','1302') THEN
                    VIGENTEC + DIAS29 + DIAS59 + DIAS89 + DIAS119 + DIAS179 + DIASMAS180
            END
        ) AS SALDO_TOTAL_REV,
        SUM(
            CASE 
                WHEN TIPOCREDITO IN ('1380','6280','6250','1302') THEN
                    CASE
                        WHEN SALDOINICIAL  = 0.00 AND TIPOCREDITO='1380' THEN ((VIGENTEC + DIAS29 + DIAS59 + DIAS89 + DIAS119 + DIAS179 + DIASMAS180)/0.45)
                        WHEN SALDOINICIAL  = 0.00 AND TIPOCREDITO='6280' THEN ((VIGENTEC + DIAS29 + DIAS59 + DIAS89 + DIAS119 + DIAS179 + DIASMAS180)/0.15)
                        ELSE SALDOINICIAL
                    END
                ELSE NULL
            END
        ) AS SALDOINICIAL_CALCULADO_REV
    FROM
        dbriskdatamart.TBL_BUROCREDITOSACTIVOSPM_RECURRENTE
    GROUP BY
        FOLIO
    ) T3
ON
    T1.FOLIORESPUESTABC = T3.FOLIO
LEFT JOIN
    (SELECT
        RFC,
        FECHA,
        SUM(SALDO) AS SDO,
        SUM(CASE WHEN Clas_AT IN ('CCC','CCI','Factoraje','PQ','RCR','Revolvente Varios','TDCE') THEN SALDO ELSE 0 END) AS SDO_REV,
		SUM(CASE WHEN Clas_AT IN ('Arrendamiento','Auto','Reestructura','Simple') THEN SALDO ELSE 0 END) AS SDO_NO_REV,
        MAX(HSC_PI) AS PI,
        MAX(MONTO_LINEA) AS MTO_LIN_RFC,
        MAX(
            CASE
                WHEN TERRITORIAL IN ('6','7') THEN 1
                ELSE 0
            END
        ) AS TERR_
    FROM
        dbriskdatamart.TBL_CARTERACREDITICIA X
    LEFT JOIN
        dbriskdatamart.Tbl_Cat_Alerta_Temp Y
    ON
        X.TIPO_DE_CREDITO = Y.TIPO_DE_CREDITO
    WHERE
        MIS <> 0
    GROUP BY
        RFC,
        FECHA
    ) T4
ON
    T1.RFC = T4.RFC
    AND T1.FECHA = T4.FECHA  
;
    

SELECT * FROM dbriskdatamart.JAT_MCV_VAR_PEDRO__${FECHA_CALIFICACION} LIMIT 100;