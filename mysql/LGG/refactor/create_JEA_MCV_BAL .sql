DROP TABLE IF EXISTS DBMYMWORK.JEA_MCV_BAL ;

CREATE TABLE IF NOT EXISTS DBMYMWORK.JEA_MCV_BAL AS 
SELECT 
  A.LLAVE_UNIVERSAL_20, 
  A.RFC, 
  A.CLIENTE, 
  A.LINEA, 
  A.FECHA,
  A.MESESDC,
  B.SALDO,
  MAX(C.SALDO) AS MAX_BAL_03M
FROM 
  DBMYMWORK.JEA_MCV_UNIVERSO A
  LEFT JOIN DBMYMWORK.JEA_MCV_CARTERA_COMERCIAL_RFC_SALDO B
  ON A.FECHA = B.FECHA AND A.RFC = B.RFC 
  LEFT JOIN DBMYMWORK.JEA_MCV_CARTERA_COMERCIAL_RFC_SALDO C
  ON A.RFC = C.RFC AND C.MESESDC >= A.MESESDC - 3 AND C.MESESDC <= A.MESESDC
GROUP BY 1,2,3,4,5,6,7;

UPDATE 	
	LGG_MCV_BAL T1 

T1.CUR_BAL= (
SELECT T2.SALDO
FROM (SELECT RFC,FECHA,SUM(SALDO) AS SALDO FROM DBMYMWORK.JEA_MCV_CARTERA_CREDITICIA_LINEA GROUP BY 1,2) AS T2
WHERE T2.FECHA = T1.FECHACARTERA
AND T1.RFC = T2.RFC), 




T1.MAX_BAL_03M = (
SELECT MAX(SALDO)
FROM (SELECT RFC,FECHA,SUM(SALDO) AS SALDO FROM DBMYMWORK.JEA_MCV_CARTERA_CREDITICIA_LINEA GROUP BY 1,2) AS T2
WHERE T2.FECHA >= T1.FECHA_TOPE_03M AND T2.FECHA <= T1.FECHACARTERA
AND T1.RFC = T2.RFC),         	

T1.MIN_BAL_03M = (
SELECT MIN(SALDO)
FROM (SELECT RFC,FECHA,SUM(SALDO) AS SALDO FROM DBMYMWORK.JEA_MCV_CARTERA_CREDITICIA_LINEA GROUP BY 1,2)AS T2
WHERE T2.FECHA >= T1.FECHA_TOPE_03M AND T2.FECHA <= T1.FECHACARTERA
AND T1.RFC = T2.RFC),       

T1.AVG_BAL_03M = (
SELECT AVG(SALDO)
FROM (SELECT RFC,FECHA,SUM(SALDO) AS SALDO FROM DBMYMWORK.JEA_MCV_CARTERA_CREDITICIA_LINEA GROUP BY 1,2) AS T2
WHERE T2.FECHA >= T1.FECHA_TOPE_03M AND T2.FECHA <= T1.FECHACARTERA
AND T1.RFC = T2.RFC),

T1.AVG_PND_MENOS_BAL_03M = (
SELECT SUM(SALDO * ((FLOOR(T1.FECHACARTERA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHACARTERA,100)-MOD(T2.FECHA,100)+1))
FROM (SELECT RFC,FECHA,SUM(SALDO) AS SALDO FROM DBMYMWORK.JEA_MCV_CARTERA_CREDITICIA_LINEA GROUP BY 1,2) AS T2
WHERE T2.FECHA >= T1.FECHA_TOPE_03M AND T2.FECHA <= T1.FECHACARTERA
AND T1.RFC = T2.RFC)/
(SELECT SUM((FLOOR(T1.FECHACARTERA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHACARTERA,100)-MOD(T2.FECHA,100)+1)
FROM (SELECT RFC,FECHA,SUM(SALDO) AS SALDO FROM DBMYMWORK.JEA_MCV_CARTERA_CREDITICIA_LINEA GROUP BY 1,2) AS T2
WHERE T2.FECHA >= T1.FECHA_TOPE_03M AND T2.FECHA <= T1.FECHACARTERA
AND T1.RFC = T2.RFC),         	

T1.AVG_PND_MAS_BAL_03M = (
SELECT SUM(SALDO * (4-((FLOOR(T1.FECHACARTERA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHACARTERA,100)-MOD(T2.FECHA,100))))
FROM (SELECT RFC,FECHA,SUM(SALDO) AS SALDO FROM DBMYMWORK.JEA_MCV_CARTERA_CREDITICIA_LINEA GROUP BY 1,2)AS T2
WHERE T2.FECHA >= T1.FECHA_TOPE_03M AND T2.FECHA <= T1.FECHACARTERA
AND T1.RFC = T2.RFC)/
(SELECT SUM((4-((FLOOR(T1.FECHACARTERA/100)-FLOOR(T2.FECHA/100))*12+MOD(T1.FECHACARTERA,100)-MOD(T2.FECHA,100))))
FROM (SELECT RFC,FECHA,SUM(SALDO) AS SALDO FROM DBMYMWORK.JEA_MCV_CARTERA_CREDITICIA_LINEA GROUP BY 1,2) AS T2
WHERE T2.FECHA >= T1.FECHA_TOPE_03M AND T2.FECHA <= T1.FECHACARTERA
AND T1.RFC = T2.RFC); 