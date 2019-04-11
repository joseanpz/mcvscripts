/*
Nivel de reisgo: (google sheet)
SI(RANGO.PERCENTIL.EXC(G$2:G;G2:G;4)<=0,25;
	"NULO";
SI(RANGO.PERCENTIL.EXC(G$2:G;G2:G;4)<=0,50;
	"MUY BAJO";
SI(RANGO.PERCENTIL.EXC(G$2:G;G2:G;4)<=0,75;
	"BAJO";
SI(RANGO.PERCENTIL.EXC(G$2:G;G2:G;4)<=0,95;
	"MEDIO";
SI(RANGO.PERCENTIL.EXC(G$2:G;G2:G;4)<=0,99;
	"MEDIO2";
"ALTO")))))

-------------------------------
agrupamiento por rfc
=QUERY('201812'!A1:H14394;"SELECT A, F, MAX(D), MAX(E), MAX(H) GROUP BY A,F")



=SI(RANGO.PERCENTIL.EXC(F$2:F;F2:F;4)<=0,25; "NULO"; SI(RANGO.PERCENTIL.EXC(F$2:F;F2:F;4)<=0,5; "MUY BAJO"; SI(RANGO.PERCENTIL.EXC(F$2:F;F2:F;4)<=0,75; "BAJO"; SI(RANGO.PERCENTIL.EXC(F$2:F;F2:F;4)<=0,95; "MEDIO"; SI(RANGO.PERCENTIL.EXC(F$2:F;F2:F;4)<=0,99; "MEDIO2"; "ALTO")))))





=QUERY('201709_'!A1:H13677;"SELECT A, E, MAX(F), MAX(C), MAX(D), MAX(G) GROUP BY A,E")



=QUERY(C1:H9507;"SELECT H, SUM(C), SUM(G), COUNT(C) GROUP BY H")


*/

SELECT 'RFC', 'LLAVE_UNIVERSAL_20', 'DIAS_ATRASO','BUCKET','LABEL', 'DIAS_ATRASO_06M', 'MAX_BUCKET_06M'
UNION ALL
SELECT RFC,LLAVE_UNIVERSAL_20, DIAS_ATRASO, BUCKET, LABEL, DIAS_ATRASO_06M, MAX_BUCKET_06M 
FROM JEA_MCV_UNIVERSO
WHERE FECHA='201709' 
AND CCI + SOBREGIRO + INTERCOMPANIA + CARTERA_ADQUIRIDA + REESTRUCTURA = 0 
AND LABEL <> 0 
AND (SUBSTR(FECHA,1,4)-YEAR(FECHA_BC))*12 + SUBSTR(FECHA,5,2) - MONTH(FECHA_BC) BETWEEN 0 AND 4
INTO OUTFILE '/data/mysql-files/joseangel/mcv_bucket_label_201709.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';


