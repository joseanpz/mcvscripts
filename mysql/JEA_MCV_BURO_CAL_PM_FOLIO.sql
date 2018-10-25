--  Lorena García González
--  Agosto 13, 2018
--  MCV: Buro Califica. Modificación, se crea copia y se agrega folio, el cual obtendremos de las otras tablas de buro.


USE DBMYMWORK;

DROP TABLE IF EXISTS JEA_MCV_BURO_CAL_PM_FOLIO;

CREATE TABLE IF NOT EXISTS JEA_MCV_BURO_CAL_PM_FOLIO 
AS 
SELECT * FROM JEA_MCV_BURO_CAL_PM;

ALTER TABLE JEA_MCV_BURO_CAL_PM_FOLIO ADD INDEX LLAVE(RFC);
ALTER TABLE JEA_MCV_BURO_CAL_PM_FOLIO ADD INDEX LLAVE1(FECHACONSULTA);

--  AGREGAMOS LA INFORMACION DEL FOLIO 

ALTER TABLE JEA_MCV_BURO_CAL_PM_FOLIO ADD COLUMN FOLIO VARCHAR(10) AFTER RFC;

UPDATE JEA_MCV_BURO_CAL_PM_FOLIO  T1
LEFT JOIN (SELECT DISTINCT RFC,FOLIO, FECHACONSULTA 
FROM 
(SELECT RFC,FOLIO,FECHACONSULTA FROM JEA_MCV_CONSULTAS
UNION ALL SELECT RFC,FOLIO,FECHACONSULTA FROM JEA_MCV_HISTORIA)T2)T3
ON T3.RFC = T1.RFC AND T3.FECHACONSULTA = T1.FECHACONSULTA
SET T1.FOLIO = T3.FOLIO;

SELECT * FROM JEA_MCV_BURO_CAL_PM_FOLIO LIMIT 150;

--  CAMBIAMOS '--' POR NULO DE LA TABLA
UPDATE JEA_MCV_BURO_CAL_PM_FOLIO
SET 
12_INST                        = IF(12_INST                        = '--',NULL,12_INST                       ),
BK12_CLEAN                     = IF(BK12_CLEAN                     = '--',NULL,BK12_CLEAN                    ),
BK12_DPD_PROM                  = IF(BK12_DPD_PROM                  = '--',NULL,BK12_DPD_PROM                 ),
BK12_IND_QCRA                  = IF(BK12_IND_QCRA                  = '--',NULL,BK12_IND_QCRA                 ),
BK12_MAX_CREDIT_AMT            = IF(BK12_MAX_CREDIT_AMT            = '--',NULL,BK12_MAX_CREDIT_AMT           ),
BK12_NUM_CRED                  = IF(BK12_NUM_CRED                  = '--',NULL,BK12_NUM_CRED                 ),
BK12_NUM_EXP_PAIDONTIME        = IF(BK12_NUM_EXP_PAIDONTIME        = '--',NULL,BK12_NUM_EXP_PAIDONTIME       ),
BK12_NUM_TC_ACT                = IF(BK12_NUM_TC_ACT                = '--',NULL,BK12_NUM_TC_ACT               ),
BK12_PCT_90PLUS                = IF(BK12_PCT_90PLUS                = '--',NULL,BK12_PCT_90PLUS               ),
BK12_PCT_PROMT                 = IF(BK12_PCT_PROMT                 = '--',NULL,BK12_PCT_PROMT                ),
BK12_PC_SAT                    = IF(BK12_PC_SAT                    = '--',NULL,BK12_PC_SAT                   ),
BK24_IND_EXP                   = IF(BK24_IND_EXP                   = '--',NULL,BK24_IND_EXP                  ),
BK24_PCT_60PLUS                = IF(BK24_PCT_60PLUS                = '--',NULL,BK24_PCT_60PLUS               ),
BK_DEUDA_CP                    = IF(BK_DEUDA_CP                    = '--',NULL,BK_DEUDA_CP                   ),
BK_DEUDA_TOT                   = IF(BK_DEUDA_TOT                   = '--',NULL,BK_DEUDA_TOT                  ),
BK_IND_PMOR                    = IF(BK_IND_PMOR                    = '--',NULL,BK_IND_PMOR                   ),
DEUDA_TOT                      = IF(DEUDA_TOT                      = '--',NULL,DEUDA_TOT                     ),
DEUDA_TOT_CP                   = IF(DEUDA_TOT_CP                   = '--',NULL,DEUDA_TOT_CP                  ),
MONTHS_ON_FILE_BANKING         = IF(MONTHS_ON_FILE_BANKING         = '--',NULL,MONTHS_ON_FILE_BANKING        ),
MONTHS_SINCE_LAST_OPEN_BANKING = IF(MONTHS_SINCE_LAST_OPEN_BANKING = '--',NULL,MONTHS_SINCE_LAST_OPEN_BANKING),
NBK12_COMM_PCT_PLUS            = IF(NBK12_COMM_PCT_PLUS            = '--',NULL,NBK12_COMM_PCT_PLUS           ),
NBK12_NUM_CRED                 = IF(NBK12_NUM_CRED                 = '--',NULL,NBK12_NUM_CRED                ),
NBK12_PCT_PROMT                = IF(NBK12_PCT_PROMT                = '--',NULL,NBK12_PCT_PROMT               ),
NBK12_PCT_SAT                  = IF(NBK12_PCT_SAT                  = '--',NULL,NBK12_PCT_SAT                 ),
NBK12_PCT_60PLUS               = IF(NBK12_PCT_60PLUS               = '--',NULL,NBK12_PCT_60PLUS              ),
NBK12_DEUDA_CP                 = IF(NBK12_DEUDA_CP                 = '--',NULL,NBK12_DEUDA_CP                ),
NBK12_DEUDA_TOT                = IF(NBK12_DEUDA_TOT                = '--',NULL,NBK12_DEUDA_TOT               );







