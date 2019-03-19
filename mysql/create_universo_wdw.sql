DROP TABLE IF EXISTS 
    DBMYMWORK.JEA_MCV_UNIVERSO_WDW;

CREATE TABLE IF NOT EXISTS
    DBMYMWORK.JEA_MCV_UNIVERSO_WDW AS
SELECT
  RFC,  
  LLAVE_UNIVERSAL_20,
  FECHA,
  CLIENTE,
  LINEA,
  MESESDC,
  MONTO_LINEA,
  DIAS_ATRASO,
  CCI,
  SOBREGIRO,
  INTERCOMPANIA,
  CARTERA_ADQUIRIDA,
  REESTRUCTURA,
  REVOLVENTE,
  BUCKET,
  MONTO_CLS,
  CARTERA_VENCIDA,
  CASE
      WHEN COALESCE(CARTERA_VENCIDA, 0) = 0 THEN 0
      ELSE 1
  END AS SDOVDO_M0,
  CASE
      WHEN COALESCE(CARTERA_VENCIDA, 0) = 0 
          AND COALESCE(SDOVDO_M1, 0) = 0 THEN 0
      ELSE 1
  END AS SDOVDO_M1,
  CASE
      WHEN COALESCE(CARTERA_VENCIDA, 0) = 0
          AND COALESCE(SDOVDO_M1, 0) = 0
          AND COALESCE(SDOVDO_M2, 0) = 0 THEN 0
      ELSE 1
  END AS SDOVDO_M2,
  CASE
      WHEN COALESCE(CARTERA_VENCIDA, 0) = 0
          AND COALESCE(SDOVDO_M1, 0) = 0
          AND COALESCE(SDOVDO_M2, 0) = 0
          AND COALESCE(SDOVDO_M3, 0) = 0 THEN 0
      ELSE 1
  END AS SDOVDO_M3,
  CASE
     WHEN COALESCE(CARTERA_VENCIDA, 0) = 0
          AND COALESCE(SDOVDO_M1, 0) = 0
          AND COALESCE(SDOVDO_M2, 0) = 0
          AND COALESCE(SDOVDO_M3, 0) = 0
          AND COALESCE(SDOVDO_M4, 0) = 0 THEN 0
      ELSE 1
  END AS SDOVDO_M4,
  CASE
      WHEN COALESCE(CARTERA_VENCIDA, 0) = 0
          AND COALESCE(SDOVDO_M1, 0) = 0
          AND COALESCE(SDOVDO_M2, 0) = 0
          AND COALESCE(SDOVDO_M3, 0) = 0
          AND COALESCE(SDOVDO_M4, 0) = 0
          AND COALESCE(SDOVDO_M5, 0) = 0 THEN 0
      ELSE 1
  END AS SDOVDO_M5,
  CASE
      WHEN COALESCE(CARTERA_VENCIDA, 0) = 0
          AND COALESCE(SDOVDO_M1, 0) = 0
          AND COALESCE(SDOVDO_M2, 0) = 0
          AND COALESCE(SDOVDO_M3, 0) = 0
          AND COALESCE(SDOVDO_M4, 0) = 0
          AND COALESCE(SDOVDO_M5, 0) = 0
          AND COALESCE(SDOVDO_M6, 0) = 0 THEN 0
      ELSE 1
  END AS SDOVDO_M6
FROM DBMYMWORK.JEA_MCV_UNIVERSO_SDOVDO;


-- Add Indexes
CREATE INDEX UNIVERSO_WDW_RFC_IDX
ON DBMYMWORK.JEA_MCV_UNIVERSO_WDW (RFC);

CREATE INDEX UNIVERSO_WDW_FECHA_IDX
ON DBMYMWORK.JEA_MCV_UNIVERSO_WDW (FECHA);

CREATE INDEX UNIVERSO_WDW_LLAVE_UNIVERSAL_IDX
ON DBMYMWORK.JEA_MCV_UNIVERSO_WDW (LLAVE_UNIVERSAL_20);

CREATE UNIQUE INDEX UNIVERSO_WDW_LLAVE_UNIVERSAL_FECHA_IDX
ON DBMYMWORK.JEA_MCV_UNIVERSO_WDW (LLAVE_UNIVERSAL_20, FECHA);