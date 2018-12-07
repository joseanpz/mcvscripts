DROP TABLE IF EXISTS 
    DBMYMWORK.JEA_MCV_CATALOGO_LIN_REEST;

CREATE TABLE IF NOT EXISTS
    DBMYMWORK.JEA_MCV_CATALOGO_LIN_REEST AS
SELECT DISTINCT
CASE
    WHEN MONEDA IN ('DOLARE', 'DOLAR') THEN 
      LPAD(CONCAT(LINEAORIGINAL, '02'), 20, '0')
    else 
      LPAD(CONCAT(LINEAORIGINAL, '01'), 20, '0')
END AS LLAVE_UNIVERSAL,
LINEAORIGINAL,
TIPOLINEA
-- FECHACAMBIO,
-- ADMINB6
FROM DBRSKDATAMART.Tbl_MovimientoLineas
WHERE ADMINB6 LIKE '%REE%';