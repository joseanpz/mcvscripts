﻿---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------ SELECCIÓN DE UNIVERSO ----------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%hive

DROP TABLE IF EXISTS dbriskdatamart.MZM_MCV_UNIVERSO_MODELADO__${FECHA_CALIFICACION};
CREATE TABLE dbriskdatamart.MZM_MCV_UNIVERSO_MODELADO__${FECHA_CALIFICACION}
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'

LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MZM/MCV/MCV_MZM_UNIVERSO/MZM_MCV_UNIVERSO_MODELADO__${FECHA_CALIFICACION}' AS 

SELECT

T1.FECHA,
T1.RFC,
MAX_DIAS_ATRASO,
SUM_CARTERA_VENCIDA,
CASE
    WHEN T2.LINEA IS NOT NULL THEN T2.FOLIOCONSULTABC
    WHEN T3.RFC IS NOT NULL THEN T3.FOLIOCONSULTABC
    ELSE T4.FOLIOCONSULTABC
END AS FOLIOCONSULTABC,
CASE
    WHEN T2.LINEA IS NOT NULL THEN T2.FOLIORESPUESTABC
    WHEN T3.RFC IS NOT NULL THEN T3.FOLIORESPUESTABC
    ELSE T4.FOLIORESPUESTABC
END AS FOLIORESPUESTABC,
CASE
    WHEN T2.LINEA IS NOT NULL THEN T2.FECHABC
    WHEN T3.RFC IS NOT NULL THEN T3.FECHABC
    ELSE T4.FECHABC
END AS FECHABC

FROM
    (SELECT FECHA,RFC,MAX(CASE WHEN DIAS_ATRASO IS NULL THEN 0 ELSE DIAS_ATRASO END) AS MAX_DIAS_ATRASO,SUM(CASE WHEN CARTERA_VENCIDA IS NULL THEN 0 ELSE CARTERA_VENCIDA END) AS SUM_CARTERA_VENCIDA, MAX(LINEA) AS LINEA_MUESTRA 
        FROM dbriskdatamart.Tbl_carteracrediticia
            WHERE MIS <> 0
            AND FECHA <= ${FECHA_CALIFICACION}
                GROUP BY FECHA, RFC) T1
                
LEFT JOIN 
   (SELECT DISTINCT FOLIOCONSULTABC, FOLIORESPUESTABC, FECHABC, LINEA, CONCAT(SUBSTR(ANIOMES,1,4),SUBSTR(ANIOMES,6,2)) AS ANIOMES  
        FROM dbriskdatamart.Tbl_Rep_Reservas_SegPer_CV WHERE TIPOINTERVINIENTE = 'ACREDITADO') T2
ON T1.LINEA_MUESTRA=T2.LINEA
AND T1.FECHA=T2.ANIOMES
    
LEFT JOIN 
   (SELECT DISTINCT FOLIOCONSULTABC, FOLIORESPUESTABC, FECHABC, RFC, CONCAT(SUBSTR(ANIOMES,1,4),SUBSTR(ANIOMES,6,2)) AS ANIOMES  
        FROM dbriskdatamart.Tbl_Rep_Reservas_SegPer_CV WHERE TIPOINTERVINIENTE = 'ACREDITADO') T3
ON T1.RFC=T3.RFC
AND T1.FECHA=T3.ANIOMES

LEFT JOIN 
   (SELECT DISTINCT FOLIOCONSULTABC, FOLIORESPUESTABC, FECHABC, CLIENTERFC, CONCAT(SUBSTR(ANIOMES,1,4),SUBSTR(ANIOMES,6,2)) AS ANIOMES  
        FROM dbriskdatamart.Tbl_Rep_Reservas_SegPer_CV WHERE TIPOINTERVINIENTE = 'ACREDITADO') T4
ON T1.RFC=T4.CLIENTERFC
AND T1.FECHA=T4.ANIOMES
;

SELECT * FROM dbriskdatamart.MZM_MCV_UNIVERSO_MODELADO__${FECHA_CALIFICACION} LIMIT 100;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------ FECHAS TOPE ----------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

USE dbriskdatamart;

DROP TABLE IF EXISTS dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION};
CREATE TABLE dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION}
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'

LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MZM/MCV/MZM_MCV_FECHAS__${FECHA_CALIFICACION}' AS 

SELECT 
T1.*, 
CONCAT(SUBSTR(FECHA_03,1,4),SUBSTR(FECHA_03,6,2)) AS FECHA_TOPE_03M,
CONCAT(SUBSTR(FECHA_06,1,4),SUBSTR(FECHA_06,6,2)) AS FECHA_TOPE_06M,
CONCAT(SUBSTR(FECHA_12,1,4),SUBSTR(FECHA_12,6,2)) AS FECHA_TOPE_12M

FROM

(SELECT 
	*, 
	ADD_MONTHS(CAST(CONCAT(SUBSTR(FECHA,1,4),'-',SUBSTR(FECHA,5,2),'-','01') AS DATE),-3) AS FECHA_03,
	ADD_MONTHS(CAST(CONCAT(SUBSTR(FECHA,1,4),'-',SUBSTR(FECHA,5,2),'-','01') AS DATE),-6) AS FECHA_06,
	ADD_MONTHS(CAST(CONCAT(SUBSTR(FECHA,1,4),'-',SUBSTR(FECHA,5,2),'-','01') AS DATE),-12) AS FECHA_12
	
FROM 
	DBRISKDATAMART.MZM_MCV_UNIVERSO_MODELADO__${FECHA_CALIFICACION}) T1
;

select * from dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} limit 100;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------ MZM_MCV_R_BAL_BY_CRED_LIM ----------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

use dbriskdatamart;

DROP TABLE IF EXISTS dbriskdatamart.MZM_MCV_R_BAL_BY_CRED_LIM__${FECHA_CALIFICACION};
CREATE TABLE dbriskdatamart.MZM_MCV_R_BAL_BY_CRED_LIM__${FECHA_CALIFICACION}
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'

LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MZM/MCV/MZM_MCV_R_BAL_BY_CRED_LIM__${FECHA_CALIFICACION}' AS 

SELECT

T1.RFC,
T1.FECHA AS FECHACARTERA,
T1.FECHA_TOPE_03M,
T1.FECHA_TOPE_06M,
T1.FECHA_TOPE_12M,
R_BAL_BY_CRED_LIM,
MAX_R_BAL_BY_CRED_LIM_03M,
MIN_R_BAL_BY_CRED_LIM_03M,
AVG_R_BAL_BY_CRED_LIM_03M,
AVG_PND_MENOS_R_BAL_BY_CRED_LIM_03M,
AVG_PND_MAS_R_BAL_BY_CRED_LIM_03M,
MAX_R_BAL_BY_CRED_LIM_06M,
MIN_R_BAL_BY_CRED_LIM_06M,
AVG_R_BAL_BY_CRED_LIM_06M,
AVG_PND_MENOS_R_BAL_BY_CRED_LIM_06M,
AVG_PND_MAS_R_BAL_BY_CRED_LIM_06M,
MAX_R_BAL_BY_CRED_LIM_12M,
MIN_R_BAL_BY_CRED_LIM_12M,
AVG_R_BAL_BY_CRED_LIM_12M,
AVG_PND_MENOS_R_BAL_BY_CRED_LIM_12M,
AVG_PND_MAS_R_BAL_BY_CRED_LIM_12M
    
FROM 
    DBRISKDATAMART.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
    
LEFT JOIN
    (SELECT T1.RFC,T1.FECHA, MAX(T2.SALDO/T2.MONTO_LINEA) AS R_BAL_BY_CRED_LIM
		FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
		LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA FROM dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) AS T2
			ON T2.FECHA = T1.FECHA
			AND T1.RFC = T2.RFC
			GROUP BY T1.RFC, T1.FECHA) T2
    ON T1.RFC=T2.RFC AND T1.FECHA=T2.FECHA
    
LEFT JOIN
    (SELECT T1.RFC,T1.FECHA, MAX(T2.SALDO/T2.MONTO_LINEA) AS MAX_R_BAL_BY_CRED_LIM_03M
		FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
		LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA FROM dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) AS T2
			ON T1.RFC = T2.RFC
			WHERE T2.FECHA >= T1.FECHA_TOPE_03M AND T2.FECHA <= T1.FECHA
			GROUP BY T1.RFC, T1.FECHA) T3
    ON T1.RFC=T3.RFC AND T1.FECHA=T3.FECHA
    
LEFT JOIN
    (SELECT T1.RFC,T1.FECHA, MIN(T2.SALDO/T2.MONTO_LINEA) AS MIN_R_BAL_BY_CRED_LIM_03M
		FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
		LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA FROM dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) AS T2
			ON T1.RFC = T2.RFC
			WHERE T2.FECHA >= T1.FECHA_TOPE_03M AND T2.FECHA <= T1.FECHA
			GROUP BY T1.RFC, T1.FECHA) T4
    ON T1.RFC=T4.RFC AND T1.FECHA=T4.FECHA
    
LEFT JOIN
    (SELECT T1.RFC,T1.FECHA, AVG(T2.SALDO/T2.MONTO_LINEA) AS AVG_R_BAL_BY_CRED_LIM_03M
		FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
		LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA FROM dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) AS T2
			ON T1.RFC = T2.RFC
			WHERE T2.FECHA >= T1.FECHA_TOPE_03M AND T2.FECHA <= T1.FECHA
			GROUP BY T1.RFC, T1.FECHA) T5
    ON T1.RFC=T5.RFC AND T1.FECHA=T5.FECHA
    
LEFT JOIN

    (SELECT T1.RFC, T1.FECHA , PND_1/PND_2 AS AVG_PND_MENOS_R_BAL_BY_CRED_LIM_03M

    FROM 


        (SELECT T1.RFC, T1.FECHA, SUM((T2.SALDO/T2.MONTO_LINEA) * ((FLOOR(T1.FECHA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHA,100)-MOD(T2.FECHA,100)+1)) AS PND_1
        										FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
        										LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA 
													FROM  dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) T2
        										ON T1.RFC = T2.RFC--  AND T1.FECHA = T2.FECHA
        									WHERE T2.FECHA >= T1.FECHA_TOPE_03M AND T2.FECHA <= T1.FECHA
        									GROUP BY T1.RFC,T1.FECHA) T1
        									
        LEFT JOIN
        									
        (SELECT T1.RFC, T1.FECHA, SUM((FLOOR(T1.FECHA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHA,100)-MOD(T2.FECHA,100)+1) AS PND_2
        										FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
        										LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA 
													FROM  dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) T2
        										ON T1.RFC = T2.RFC--  AND T1.FECHA = T2.FECHA
        									WHERE T2.FECHA >= T1.FECHA_TOPE_03M AND T2.FECHA <= T1.FECHA
        									GROUP BY T1.RFC,T1.FECHA) T2
    	ON T1.RFC=T2.RFC AND T1.FECHA = T2.FECHA) T6
    ON T1.RFC=T6.RFC AND T1.FECHA=T6.FECHA
    
LEFT JOIN

    (SELECT T1.RFC, T1.FECHA , PND_1/PND_2 AS AVG_PND_MAS_R_BAL_BY_CRED_LIM_03M

    FROM 


        (SELECT T1.RFC, T1.FECHA, SUM((T2.SALDO/T2.MONTO_LINEA) * (4-((FLOOR(T1.FECHA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHA,100)-MOD(T2.FECHA,100)))) AS PND_1
        										FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
        										LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA 
													FROM  dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) T2
        										ON T1.RFC = T2.RFC--  AND T1.FECHA = T2.FECHA
        									WHERE T2.FECHA >= T1.FECHA_TOPE_03M AND T2.FECHA <= T1.FECHA
        									GROUP BY T1.RFC,T1.FECHA) T1
        									
        LEFT JOIN
        									
        (SELECT T1.RFC, T1.FECHA, SUM((4-((FLOOR(T1.FECHA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHA,100)-MOD(T2.FECHA,100)))) AS PND_2
        										FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
        										LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA 
													FROM  dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) T2
        										ON T1.RFC = T2.RFC--  AND T1.FECHA = T2.FECHA
        									WHERE T2.FECHA >= T1.FECHA_TOPE_03M AND T2.FECHA <= T1.FECHA
        									GROUP BY T1.RFC,T1.FECHA) T2
    	ON T1.RFC=T2.RFC AND T1.FECHA = T2.FECHA) T7
    ON T1.RFC=T7.RFC AND T1.FECHA=T7.FECHA
    
LEFT JOIN
    (SELECT T1.RFC,T1.FECHA, MAX(T2.SALDO/T2.MONTO_LINEA) AS MAX_R_BAL_BY_CRED_LIM_06M
		FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
		LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA FROM dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) AS T2
			ON T1.RFC = T2.RFC
			WHERE T2.FECHA >= T1.FECHA_TOPE_06M AND T2.FECHA <= T1.FECHA
			GROUP BY T1.RFC, T1.FECHA) T8
    ON T1.RFC=T8.RFC AND T1.FECHA=T8.FECHA
    
LEFT JOIN
    (SELECT T1.RFC,T1.FECHA, MIN(T2.SALDO/T2.MONTO_LINEA) AS MIN_R_BAL_BY_CRED_LIM_06M
		FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
		LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA FROM dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) AS T2
			ON T1.RFC = T2.RFC
			WHERE T2.FECHA >= T1.FECHA_TOPE_06M AND T2.FECHA <= T1.FECHA
			GROUP BY T1.RFC, T1.FECHA) T9
    ON T1.RFC=T9.RFC AND T1.FECHA=T9.FECHA
    
LEFT JOIN
    (SELECT T1.RFC,T1.FECHA, AVG(T2.SALDO/T2.MONTO_LINEA) AS AVG_R_BAL_BY_CRED_LIM_06M
		FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
		LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA FROM dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) AS T2
			ON T1.RFC = T2.RFC
			WHERE T2.FECHA >= T1.FECHA_TOPE_06M AND T2.FECHA <= T1.FECHA
			GROUP BY T1.RFC, T1.FECHA) T10
    ON T1.RFC=T10.RFC AND T1.FECHA=T10.FECHA
    
LEFT JOIN

    (SELECT T1.RFC, T1.FECHA , PND_1/PND_2 AS AVG_PND_MENOS_R_BAL_BY_CRED_LIM_06M

    FROM 


        (SELECT T1.RFC, T1.FECHA, SUM((T2.SALDO/T2.MONTO_LINEA) * ((FLOOR(T1.FECHA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHA,100)-MOD(T2.FECHA,100)+1)) AS PND_1
        										FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
        										LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA 
													FROM  dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) T2
        										ON T1.RFC = T2.RFC--  AND T1.FECHA = T2.FECHA
        									WHERE T2.FECHA >= T1.FECHA_TOPE_06M AND T2.FECHA <= T1.FECHA
        									GROUP BY T1.RFC,T1.FECHA) T1
        									
        LEFT JOIN
        									
        (SELECT T1.RFC, T1.FECHA, SUM((FLOOR(T1.FECHA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHA,100)-MOD(T2.FECHA,100)+1) AS PND_2
        										FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
        										LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA 
													FROM  dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) T2
        										ON T1.RFC = T2.RFC--  AND T1.FECHA = T2.FECHA
        									WHERE T2.FECHA >= T1.FECHA_TOPE_06M AND T2.FECHA <= T1.FECHA
        									GROUP BY T1.RFC,T1.FECHA) T2
    	ON T1.RFC=T2.RFC AND T1.FECHA = T2.FECHA) T11
    ON T1.RFC=T11.RFC AND T1.FECHA=T11.FECHA
    
LEFT JOIN

    (SELECT T1.RFC, T1.FECHA , PND_1/PND_2 AS AVG_PND_MAS_R_BAL_BY_CRED_LIM_06M

    FROM 


        (SELECT T1.RFC, T1.FECHA, SUM((T2.SALDO/T2.MONTO_LINEA) * (7-((FLOOR(T1.FECHA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHA,100)-MOD(T2.FECHA,100)))) AS PND_1
        										FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
        										LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA 
													FROM  dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) T2
        										ON T1.RFC = T2.RFC--  AND T1.FECHA = T2.FECHA
        									WHERE T2.FECHA >= T1.FECHA_TOPE_06M AND T2.FECHA <= T1.FECHA
        									GROUP BY T1.RFC,T1.FECHA) T1
        									
        LEFT JOIN
        									
        (SELECT T1.RFC, T1.FECHA, SUM((7-((FLOOR(T1.FECHA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHA,100)-MOD(T2.FECHA,100)))) AS PND_2
        										FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
        										LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA 
													FROM  dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) T2
        										ON T1.RFC = T2.RFC--  AND T1.FECHA = T2.FECHA
        									WHERE T2.FECHA >= T1.FECHA_TOPE_06M AND T2.FECHA <= T1.FECHA
        									GROUP BY T1.RFC,T1.FECHA) T2
    	ON T1.RFC=T2.RFC AND T1.FECHA = T2.FECHA) T12
    ON T1.RFC=T12.RFC AND T1.FECHA=T12.FECHA

LEFT JOIN
    (SELECT T1.RFC,T1.FECHA, MAX(T2.SALDO/T2.MONTO_LINEA) AS MAX_R_BAL_BY_CRED_LIM_12M
		FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
		LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA FROM dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) AS T2
			ON T1.RFC = T2.RFC
			WHERE T2.FECHA >= T1.FECHA_TOPE_12M AND T2.FECHA <= T1.FECHA
			GROUP BY T1.RFC, T1.FECHA) T13
    ON T1.RFC=T13.RFC AND T1.FECHA=T13.FECHA
    
LEFT JOIN
    (SELECT T1.RFC,T1.FECHA, MIN(T2.SALDO/T2.MONTO_LINEA) AS MIN_R_BAL_BY_CRED_LIM_12M
		FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
		LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA FROM dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) AS T2
			ON T1.RFC = T2.RFC
			WHERE T2.FECHA >= T1.FECHA_TOPE_12M AND T2.FECHA <= T1.FECHA
			GROUP BY T1.RFC, T1.FECHA) T14
    ON T1.RFC=T14.RFC AND T1.FECHA=T14.FECHA
    
LEFT JOIN
    (SELECT T1.RFC,T1.FECHA, AVG(T2.SALDO/T2.MONTO_LINEA) AS AVG_R_BAL_BY_CRED_LIM_12M
		FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
		LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA FROM dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) AS T2
			ON T1.RFC = T2.RFC
			WHERE T2.FECHA >= T1.FECHA_TOPE_12M AND T2.FECHA <= T1.FECHA
			GROUP BY T1.RFC, T1.FECHA) T15
    ON T1.RFC=T15.RFC AND T1.FECHA=T15.FECHA
    
LEFT JOIN

    (SELECT T1.RFC, T1.FECHA , PND_1/PND_2 AS AVG_PND_MENOS_R_BAL_BY_CRED_LIM_12M

    FROM 


        (SELECT T1.RFC, T1.FECHA, SUM((T2.SALDO/T2.MONTO_LINEA) * ((FLOOR(T1.FECHA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHA,100)-MOD(T2.FECHA,100)+1)) AS PND_1
        										FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
        										LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA 
													FROM  dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) T2
        										ON T1.RFC = T2.RFC--  AND T1.FECHA = T2.FECHA
        									WHERE T2.FECHA >= T1.FECHA_TOPE_12M AND T2.FECHA <= T1.FECHA
        									GROUP BY T1.RFC,T1.FECHA) T1
        									
        LEFT JOIN
        									
        (SELECT T1.RFC, T1.FECHA, SUM((FLOOR(T1.FECHA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHA,100)-MOD(T2.FECHA,100)+1) AS PND_2
        										FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
        										LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA 
													FROM  dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) T2
        										ON T1.RFC = T2.RFC--  AND T1.FECHA = T2.FECHA
        									WHERE T2.FECHA >= T1.FECHA_TOPE_12M AND T2.FECHA <= T1.FECHA
        									GROUP BY T1.RFC,T1.FECHA) T2
    	ON T1.RFC=T2.RFC AND T1.FECHA = T2.FECHA) T16
    ON T1.RFC=T16.RFC AND T1.FECHA=T16.FECHA
    
LEFT JOIN

    (SELECT T1.RFC, T1.FECHA , PND_1/PND_2 AS AVG_PND_MAS_R_BAL_BY_CRED_LIM_12M

    FROM 


        (SELECT T1.RFC, T1.FECHA, SUM((T2.SALDO/T2.MONTO_LINEA) * (13-((FLOOR(T1.FECHA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHA,100)-MOD(T2.FECHA,100)))) AS PND_1
        										FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
        										LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA 
													FROM  dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) T2
        										ON T1.RFC = T2.RFC--  AND T1.FECHA = T2.FECHA
        									WHERE T2.FECHA >= T1.FECHA_TOPE_12M AND T2.FECHA <= T1.FECHA
        									GROUP BY T1.RFC,T1.FECHA) T1
        									
        LEFT JOIN
        									
        (SELECT T1.RFC, T1.FECHA, SUM((13-((FLOOR(T1.FECHA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHA,100)-MOD(T2.FECHA,100)))) AS PND_2
        										FROM dbriskdatamart.MZM_MCV_FECHAS__${FECHA_CALIFICACION} T1
        										LEFT JOIN (SELECT RFC,FECHA,SUM(SALDO) AS SALDO, MAX(MONTO_LINEA) AS MONTO_LINEA 
													FROM  dbriskdatamart.TBL_CARTERACREDITICIA GROUP BY RFC,FECHA) T2
        										ON T1.RFC = T2.RFC--  AND T1.FECHA = T2.FECHA
        									WHERE T2.FECHA >= T1.FECHA_TOPE_12M AND T2.FECHA <= T1.FECHA
        									GROUP BY T1.RFC,T1.FECHA) T2
    	ON T1.RFC=T2.RFC AND T1.FECHA = T2.FECHA) T17
    ON T1.RFC=T17.RFC AND T1.FECHA=T17.FECHA;    

SELECT * FROM dbriskdatamart.MZM_MCV_R_BAL_BY_CRED_LIM__${FECHA_CALIFICACION} LIMIT 100;