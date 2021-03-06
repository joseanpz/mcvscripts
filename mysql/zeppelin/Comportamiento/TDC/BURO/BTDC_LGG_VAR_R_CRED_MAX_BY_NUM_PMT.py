%hive

DROP TABLE IF EXISTS dbmymwork.BTDC_LGG_VAR_R_CRED_MAX_BY_NUM_PMT;
CREATE TABLE dbmymwork.BTDC_LGG_VAR_R_CRED_MAX_BY_NUM_PMT
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'

LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES/BTDC_LGG_VAR_R_CRED_MAX_BY_NUM_PMT' AS

SELECT
CUENTADEREFERENCIA,FECHA_CARTERA,

-- NUM
COUNT(R_CRED_MAX_BY_NUM_PMT_BK_AU)  AS NUM_R_CRED_MAX_BY_NUM_PMT_BK_AU ,
COUNT(R_CRED_MAX_BY_NUM_PMT_BK_M)   AS NUM_R_CRED_MAX_BY_NUM_PMT_BK_M  ,
COUNT(R_CRED_MAX_BY_NUM_PMT_BK_PL)  AS NUM_R_CRED_MAX_BY_NUM_PMT_BK_PL ,
COUNT(R_CRED_MAX_BY_NUM_PMT_BK)     AS NUM_R_CRED_MAX_BY_NUM_PMT_BK    ,
COUNT(R_CRED_MAX_BY_NUM_PMT_NBK_AU) AS NUM_R_CRED_MAX_BY_NUM_PMT_NBK_AU,
COUNT(R_CRED_MAX_BY_NUM_PMT_NBK_M)  AS NUM_R_CRED_MAX_BY_NUM_PMT_NBK_M ,
COUNT(R_CRED_MAX_BY_NUM_PMT_NBK_PL) AS NUM_R_CRED_MAX_BY_NUM_PMT_NBK_PL,
COUNT(R_CRED_MAX_BY_NUM_PMT_NBK)    AS NUM_R_CRED_MAX_BY_NUM_PMT_NBK   ,
COUNT(R_CRED_MAX_BY_NUM_PMT_AU)     AS NUM_R_CRED_MAX_BY_NUM_PMT_AU    ,
COUNT(R_CRED_MAX_BY_NUM_PMT_M)      AS NUM_R_CRED_MAX_BY_NUM_PMT_M     ,
COUNT(R_CRED_MAX_BY_NUM_PMT_PL)     AS NUM_R_CRED_MAX_BY_NUM_PMT_PL    ,
COUNT(R_CRED_MAX_BY_NUM_PMT)        AS NUM_R_CRED_MAX_BY_NUM_PMT       ,
COUNT(R_CRED_MAX_BY_NUM_PMT_TU)     AS NUM_R_CRED_MAX_BY_NUM_PMT_TU    ,
COUNT(R_CRED_MAX_BY_NUM_PMT_TU_ALL) AS NUM_R_CRED_MAX_BY_NUM_PMT_TU_ALL,
COUNT(R_CRED_MAX_BY_NUM_PMT_NBK_TU) AS NUM_R_CRED_MAX_BY_NUM_PMT_NBK_TU,

-- MAX
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT_BK_AU)  , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT_BK_AU ,
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT_BK_M)   , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT_BK_M  , 
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT_BK_PL)  , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT_BK_PL ,
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT_BK)     , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT_BK    ,
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT_NBK_AU) , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT_NBK_AU,
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT_NBK_M)  , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT_NBK_M ,
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT_NBK_PL) , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT_NBK_PL,
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT_NBK)    , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT_NBK   ,
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT_AU)     , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT_AU    ,
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT_M)      , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT_M     ,
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT_PL)     , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT_PL    ,
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT)        , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT       ,
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT_TU)     , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT_TU    ,
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT_TU_ALL) , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT_TU_ALL,
ROUND(MAX(R_CRED_MAX_BY_NUM_PMT_NBK_TU) , 4 ) AS MAX_R_CRED_MAX_BY_NUM_PMT_NBK_TU,

-- SUM                           
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_BK_AU)  , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT_BK_AU ,
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_BK_M)   , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT_BK_M  ,
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_BK_PL)  , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT_BK_PL ,
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_BK)     , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT_BK    ,
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_NBK_AU) , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT_NBK_AU,
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_NBK_M)  , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT_NBK_M ,
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_NBK_PL) , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT_NBK_PL,
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_NBK)    , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT_NBK   ,
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_AU)     , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT_AU    ,
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_M)      , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT_M     ,
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_PL)     , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT_PL    ,
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT)        , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT       ,
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_TU)     , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT_TU    ,
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_TU_ALL) , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT_TU_ALL,
ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_NBK_TU) , 4 ) AS SUM_R_CRED_MAX_BY_NUM_PMT_NBK_TU,

-- AVG                                                                                                                                    
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT_BK_AU)  = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_BK_AU) /COUNT(R_CRED_MAX_BY_NUM_PMT_BK_AU)    , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT_BK_AU  ,
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT_BK_M)   = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_BK_M) /COUNT(R_CRED_MAX_BY_NUM_PMT_BK_M)      , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT_BK_M   ,
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT_BK_PL)  = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_BK_PL) /COUNT(R_CRED_MAX_BY_NUM_PMT_BK_PL)    , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT_BK_PL  ,
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT_BK)     = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_BK) /COUNT(R_CRED_MAX_BY_NUM_PMT_BK)          , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT_BK     ,
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT_NBK_AU) = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_NBK_AU) /COUNT(R_CRED_MAX_BY_NUM_PMT_NBK_AU)  , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT_NBK_AU ,
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT_NBK_M)  = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_NBK_M) /COUNT(R_CRED_MAX_BY_NUM_PMT_NBK_M)    , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT_NBK_M  ,
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT_NBK_PL) = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_NBK_PL) /COUNT(R_CRED_MAX_BY_NUM_PMT_NBK_PL)  , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT_NBK_PL ,
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT_NBK)    = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_NBK) /COUNT(R_CRED_MAX_BY_NUM_PMT_NBK)        , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT_NBK    ,
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT_AU)     = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_AU) /COUNT(R_CRED_MAX_BY_NUM_PMT_AU)          , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT_AU     ,
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT_M)      = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_M) /COUNT(R_CRED_MAX_BY_NUM_PMT_M)            , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT_M      ,
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT_PL)     = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_PL) /COUNT(R_CRED_MAX_BY_NUM_PMT_PL)          , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT_PL     , 
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT)        = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT) /COUNT(R_CRED_MAX_BY_NUM_PMT)                , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT        , 
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT_TU)     = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_TU) /COUNT(R_CRED_MAX_BY_NUM_PMT_TU)          , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT_TU     ,
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT_TU_ALL) = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_TU_ALL)/COUNT(R_CRED_MAX_BY_NUM_PMT_TU_ALL)   , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT_TU_ALL ,
CASE WHEN COUNT(R_CRED_MAX_BY_NUM_PMT_NBK_TU) = 0 THEN NULL ELSE ROUND(SUM(R_CRED_MAX_BY_NUM_PMT_NBK_TU)/COUNT(R_CRED_MAX_BY_NUM_PMT_NBK_TU)   , 4 ) END AS AVG_R_CRED_MAX_BY_NUM_PMT_NBK_TU 

FROM dbmymwork.BTDC_LGG_VAR_SEGMENTADAS_1
GROUP BY CUENTADEREFERENCIA,FECHA_CARTERA
;

SELECT * FROM dbmymwork.BTDC_LGG_VAR_R_CRED_MAX_BY_NUM_PMT LIMIT 100;