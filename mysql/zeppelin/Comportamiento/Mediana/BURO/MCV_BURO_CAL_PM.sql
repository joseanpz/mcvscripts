%hive

USE dbriskdatamart;

DROP TABLE IF EXISTS dbriskdatamart.MZM_MCV_BURO_CAL_PM__${FECHA_CALIFICACION};
CREATE TABLE dbriskdatamart.MZM_MCV_BURO_CAL_PM__${FECHA_CALIFICACION}
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'

LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MZM/MCV/MZM_MCV_BURO_CAL_PM__${FECHA_CALIFICACION}' AS

SELECT
T1.FOLIO,
T1.RFC,
T1.fechaconsulta,
IF(T2.CalificacionCarteraBanxico  = '',NULL,T2.CalificacionCarteraBanxico ) AS CalificacionCarteraBanxico    ,
IF(INST_12                        = '--',NULL,INST_12                       ) AS 12_INST                       ,
IF(BK12_CLEAN                     = '--',NULL,BK12_CLEAN                    ) AS BK12_CLEAN                    ,
IF(BK12_DPD_PROM                  = '--',NULL,BK12_DPD_PROM                 ) AS BK12_DPD_PROM                 ,
IF(BK12_IND_QCRA                  = '--',NULL,BK12_IND_QCRA                 ) AS BK12_IND_QCRA                 ,
IF(BK12_MAX_CREDIT_AMT            = '--',NULL,BK12_MAX_CREDIT_AMT           ) AS BK12_MAX_CREDIT_AMT           ,
IF(BK12_NUM_CRED                  = '--',NULL,BK12_NUM_CRED                 ) AS BK12_NUM_CRED                 ,
IF(BK12_NUM_EXP_PAIDONTIME        = '--',NULL,BK12_NUM_EXP_PAIDONTIME       ) AS BK12_NUM_EXP_PAIDONTIME       ,
IF(BK12_NUM_TC_ACT                = '--',NULL,BK12_NUM_TC_ACT               ) AS BK12_NUM_TC_ACT               ,
IF(BK12_PCT_90PLUS                = '--',NULL,BK12_PCT_90PLUS               ) AS BK12_PCT_90PLUS               ,
IF(BK12_PCT_PROMT                 = '--',NULL,BK12_PCT_PROMT                ) AS BK12_PCT_PROMT                ,
IF(bk12_pct_sat                   = '--',NULL,bk12_pct_sat                  ) AS BK12_PC_SAT                   ,
IF(BK24_IND_EXP                   = '--',NULL,BK24_IND_EXP                  ) AS BK24_IND_EXP                  ,
IF(BK24_PCT_60PLUS                = '--',NULL,BK24_PCT_60PLUS               ) AS BK24_PCT_60PLUS               ,
IF(BK_DEUDA_CP                    = '--',NULL,BK_DEUDA_CP                   ) AS BK_DEUDA_CP                   ,
IF(BK_DEUDA_TOT                   = '--',NULL,BK_DEUDA_TOT                  ) AS BK_DEUDA_TOT                  ,
IF(BK_IND_PMOR                    = '--',NULL,BK_IND_PMOR                   ) AS BK_IND_PMOR                   ,
IF(DEUDA_TOT                      = '--',NULL,DEUDA_TOT                     ) AS DEUDA_TOT                     ,
IF(DEUDA_TOT_CP                   = '--',NULL,DEUDA_TOT_CP                  ) AS DEUDA_TOT_CP                  ,
IF(MONTHS_ON_FILE_BANKING         = '--',NULL,MONTHS_ON_FILE_BANKING        ) AS MONTHS_ON_FILE_BANKING        ,
IF(MONTHS_SINCE_LAST_OPEN_BANKING = '--',NULL,MONTHS_SINCE_LAST_OPEN_BANKING) AS MONTHS_SINCE_LAST_OPEN_BANKING,
IF(NBK12_COMM_PCT_PLUS            = '--',NULL,NBK12_COMM_PCT_PLUS           ) AS NBK12_COMM_PCT_PLUS           ,
IF(NBK12_NUM_CRED                 = '--',NULL,NBK12_NUM_CRED                ) AS NBK12_NUM_CRED                ,
IF(NBK12_PCT_PROMT                = '--',NULL,NBK12_PCT_PROMT               ) AS NBK12_PCT_PROMT               ,
IF(NBK12_PCT_SAT                  = '--',NULL,NBK12_PCT_SAT                 ) AS NBK12_PCT_SAT                 ,
IF(nbk24_pct_60plus               = '--',NULL,nbk24_pct_60plus              ) AS NBK12_PCT_60PLUS              ,
IF(nbk_deuda_cp                 = '--',NULL,nbk_deuda_cp                ) AS NBK12_DEUDA_CP                ,
IF(nbk_deuda_tot                = '--',NULL,nbk_deuda_tot               ) AS NBK12_DEUDA_TOT               


FROM 
    tbl_burocalificapm_recurrente T1
    
LEFT JOIN 
    (SELECT DISTINCT RFC, FOLIO, FECHACONSULTA, CalificacionCarteraBanxico FROM Tbl_BuroConsultasPM_recurrente) T2
ON  T1.FOLIO =T2.FOLIO;

SELECT * FROM dbriskdatamart.MZM_MCV_BURO_CAL_PM__${FECHA_CALIFICACION} LIMIT 100;
