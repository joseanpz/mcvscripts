DROP TABLE IF EXISTS 
    DBMYMWORK.JEA_MCV_UNIVERSO_RFC_AGG;

CREATE TABLE IF NOT EXISTS
    DBMYMWORK.JEA_MCV_UNIVERSO_RFC_AGG AS
SELECT
  RFC,  
  FECHA,
  MAX(SDOVDO_M0) as SDOVDO_MAX_M0,
  MAX(SDOVDO_M1) as SDOVDO_MAX_M1,
  MAX(SDOVDO_M2) as SDOVDO_MAX_M2,
  MAX(SDOVDO_M3) as SDOVDO_MAX_M3,
  MAX(SDOVDO_M4) as SDOVDO_MAX_M4,
  MAX(SDOVDO_M5) as SDOVDO_MAX_M5,
  MAX(SDOVDO_M6) as SDOVDO_MAX_M6
FROM DBMYMWORK.JEA_MCV_UNIVERSO_WDW
GROUP BY RFC, FECHA;

-- Add Indexes
CREATE INDEX UNIVERSO_RFC_AGG_RFC_IDX
ON DBMYMWORK.JEA_MCV_UNIVERSO_RFC_AGG (RFC);

CREATE INDEX UNIVERSO_RFC_AGG_FECHA_IDX
ON DBMYMWORK.JEA_MCV_UNIVERSO_RFC_AGG (FECHA);