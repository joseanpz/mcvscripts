--Se creo tabla con fechas mayor o igual a Enero 2014 y solo con líneas que contenían información
CREATE TABLE MFH_CUENTAS_FECHAS_CV(
SELECT * FROM DBRSKDATAMART.Tbl_CarteraCrediticia 
WHERE FECHA > 201312 AND LINEA <> '' AND LINEA IS NOT NULL)

																																														
/*
CREATE TABLE MFH_CARTERA_VENCIDA
(SELECT LLAVE_UNIVERSAL ,RFC, FECHA_DATE AS MES_ANCLA, FECHA, CARTERA_VENCIDA
FROM MFH_CUENTAS_FECHAS_CV)
*/

CREATE TABLE MFH_CARTERA_VENCIDA
(SELECT RIGHT(LLAVE_UNIVERSAL,20) as LLAVE_UNIVERSAL ,RFC, FECHA_DATE AS MES_ANCLA, FECHA, CARTERA_VENCIDA
FROM MFH_CUENTAS_FECHAS_CV)

--SE AGREGAN LLAVES
alter table MFH_CARTERA_VENCIDA                 			 
add  key(LLAVE_UNIVERSAL);

alter table MFH_CUENTAS_FECHAS_CV
add  key(LLAVE_UNIVERSAL);


--SE AGREGAN COLUMNAS PARA VACIAR DATOS DE CARTERAS VENCIDAS DE 6 MESES POSTERIORES A LA FECHA ANCLA
alter table MFH_CARTERA_VENCIDA
add   SDOVDO_M1 double;

alter table MFH_CARTERA_VENCIDA
add   SDOVDO_M2 double;

alter table MFH_CARTERA_VENCIDA
add   SDOVDO_M3 double;

alter table MFH_CARTERA_VENCIDA
add   SDOVDO_M4 double;

alter table MFH_CARTERA_VENCIDA
add   SDOVDO_M5 double;

alter table MFH_CARTERA_VENCIDA
add   SDOVDO_M6 double;

--Se actualizo la fecha completa en relacion a aquellos campos que aparecian nulos (Verificar si hay nulos existentes y actualizar)

 UPDATE MFH_CARTERA_VENCIDA
 SET MES_ANCLA = '2017-05-01'
 WHERE FECHA ='201705'
 AND MES_ANCLA IS NULL

 UPDATE MFH_CARTERA_VENCIDA
 SET MES_ANCLA = '2017-06-01'
 WHERE FECHA ='201706'
 AND MES_ANCLA IS NULL
 
 
--Actualizar el nombre de la columna y el número de meses  entre fechas 
update  MFH_CARTERA_VENCIDA a
left join MFH_CUENTAS_FECHAS_CV b on a.LLAVE_UNIVERSAL = RIGHT(b.LLAVE_UNIVERSAL,20)
set SDOVDO_M1 =
		case 
			when b.CARTERA_VENCIDA is null then 0
			else b.CARTERA_VENCIDA
	end
where timestampdiff(month, MES_ANCLA, b.FECHA_DATE) = 1;

update  MFH_CARTERA_VENCIDA a
left join MFH_CUENTAS_FECHAS_CV b on a.LLAVE_UNIVERSAL = RIGHT(b.LLAVE_UNIVERSAL,20)
set SDOVDO_M2 =
		case 
			when b.CARTERA_VENCIDA is null then 0
			else b.CARTERA_VENCIDA
	end
where timestampdiff(month, MES_ANCLA, b.FECHA_DATE) = 2;

update  MFH_CARTERA_VENCIDA a
left join MFH_CUENTAS_FECHAS_CV b on a.LLAVE_UNIVERSAL = RIGHT(b.LLAVE_UNIVERSAL,20)
set SDOVDO_M3 =
		case 
			when b.CARTERA_VENCIDA is null then 0
			else b.CARTERA_VENCIDA
	end
where timestampdiff(month, MES_ANCLA, b.FECHA_DATE) = 3;

update  MFH_CARTERA_VENCIDA a
left join MFH_CUENTAS_FECHAS_CV b on a.LLAVE_UNIVERSAL = RIGHT(b.LLAVE_UNIVERSAL,20)
set SDOVDO_M4 =
		case 
			when b.CARTERA_VENCIDA is null then 0
			else b.CARTERA_VENCIDA
	end
where timestampdiff(month, MES_ANCLA, b.FECHA_DATE) = 4;

update  MFH_CARTERA_VENCIDA a
left join MFH_CUENTAS_FECHAS_CV b on a.LLAVE_UNIVERSAL = RIGHT(b.LLAVE_UNIVERSAL,20)
set SDOVDO_M5 =
		case 
			when b.CARTERA_VENCIDA is null then 0
			else b.CARTERA_VENCIDA
	end
where timestampdiff(month, MES_ANCLA, b.FECHA_DATE) = 5;

update  MFH_CARTERA_VENCIDA a
left join MFH_CUENTAS_FECHAS_CV b on a.LLAVE_UNIVERSAL = RIGHT(b.LLAVE_UNIVERSAL,20)
set SDOVDO_M6 =
		case 
			when b.CARTERA_VENCIDA is null then 0
			else b.CARTERA_VENCIDA
	end
where timestampdiff(month, MES_ANCLA, b.FECHA_DATE) = 6;



  
  
SELECT * INTO OUTFILE '../data/msql-files/joseangel/cartera_vencida3.csv'
  FIELDS TERMINATED BY '|' 
  LINES TERMINATED BY '\n'
  FROM MFH_CARTERA_VENCIDA;

/*

update  MFH_CARTERA_VENCIDA a
left join MFH_CUENTAS_FECHAS_CV b on a.LLAVE_UNIVERSAL = b.LLAVE_UNIVERSAL
set SDOVDO_M1 =
		case 
			when b.CARTERA_VENCIDA is null then 0
			else b.CARTERA_VENCIDA
	end
where timestampdiff(month, MES_ANCLA, b.FECHA_DATE) = 1;



SELECT *, timestampdiff(month, MES_ANCLA, b.FECHA_DATE) FROM MFH_CARTERA_VENCIDA a
left join MFH_CUENTAS_FECHAS_CV b on a.LLAVE_UNIVERSAL = b.LLAVE_UNIVERSAL
select timestampdiff(month, '2017-12-01', '2018-01-01');



SELECT * FROM MFH_CARTERA_VENCIDA WHERE LLAVE_UNIVERSAL ='0000000000000000004295001';



SELECT LLAVE_UNIVERSAL, FECHA,FECHA_DATE, RFC,CARTERA_VENCIDA  FROM MFH_CUENTAS_FECHAS_CV
WHERE LLAVE_UNIVERSAL ='0000000000000000004295001'
and FECHA > 201312;
*/

