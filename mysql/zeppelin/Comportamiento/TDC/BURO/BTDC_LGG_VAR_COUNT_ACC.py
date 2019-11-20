%hive

DROP TABLE IF EXISTS dbmymwork.BTDC_LGG_VAR_COUNT_ACC;
CREATE TABLE dbmymwork.BTDC_LGG_VAR_COUNT_ACC
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'

LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES/BTDC_LGG_VAR_COUNT_ACC' AS

SELECT
CUENTADEREFERENCIA,FECHA_CARTERA,

--  Cerradas 3 meses


SUM(CASE WHEN  MS_CL_BK_AU_CL_ACC  <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_AU_U03M ,
SUM(CASE WHEN  MS_CL_BK_M_CL_ACC   <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_M_U03M ,
SUM(CASE WHEN  MS_CL_BK_PL_CL_ACC  <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_PL_U03M ,
SUM(CASE WHEN  MS_CL_BK_R_CL_ACC   <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_R_U03M ,
SUM(CASE WHEN  MS_CL_BK_CL_ACC     <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_U03M ,
SUM(CASE WHEN  MS_CL_NBK_AU_CL_ACC <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_AU_U03M,
SUM(CASE WHEN  MS_CL_NBK_M_CL_ACC  <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_M_U03M ,
SUM(CASE WHEN  MS_CL_NBK_PL_CL_ACC <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_PL_U03M,
SUM(CASE WHEN  MS_CL_NBK_R_CL_ACC  <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_R_U03M ,
SUM(CASE WHEN  MS_CL_NBK_CL_ACC    <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_U03M ,
SUM(CASE WHEN  MS_CL_AMX_CL_ACC    <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_AMX_U03M ,
SUM(CASE WHEN  MS_CL_AU_CL_ACC     <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_AU_U03M ,
SUM(CASE WHEN  MS_CL_M_CL_ACC      <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_M_U03M ,
SUM(CASE WHEN  MS_CL_PL_CL_ACC     <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_PL_U03M ,
SUM(CASE WHEN  MS_CL_R_CL_ACC      <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_R_U03M ,
SUM(CASE WHEN  MS_CL_CL_ACC        <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_U03M ,
SUM(CASE WHEN  MS_CL_TU_CL_ACC     <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_TU_U03M ,
SUM(CASE WHEN  MS_CL_TU_ALL_CL_ACC <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_TU_ALL_U03M,
SUM(CASE WHEN  MS_CL_NBK_TU_CL_ACC <= 3 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_TU_U03M,

--  Cerradas 6 meses

SUM(CASE WHEN  MS_CL_BK_AU_CL_ACC  <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_AU_U06M ,
SUM(CASE WHEN  MS_CL_BK_M_CL_ACC   <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_M_U06M ,
SUM(CASE WHEN  MS_CL_BK_PL_CL_ACC  <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_PL_U06M ,
SUM(CASE WHEN  MS_CL_BK_R_CL_ACC   <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_R_U06M ,
SUM(CASE WHEN  MS_CL_BK_CL_ACC     <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_U06M ,
SUM(CASE WHEN  MS_CL_NBK_AU_CL_ACC <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_AU_U06M,
SUM(CASE WHEN  MS_CL_NBK_M_CL_ACC  <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_M_U06M ,
SUM(CASE WHEN  MS_CL_NBK_PL_CL_ACC <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_PL_U06M,
SUM(CASE WHEN  MS_CL_NBK_R_CL_ACC  <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_R_U06M ,
SUM(CASE WHEN  MS_CL_NBK_CL_ACC    <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_U06M ,
SUM(CASE WHEN  MS_CL_AMX_CL_ACC    <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_AMX_U06M ,
SUM(CASE WHEN  MS_CL_AU_CL_ACC     <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_AU_U06M ,
SUM(CASE WHEN  MS_CL_M_CL_ACC      <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_M_U06M ,
SUM(CASE WHEN  MS_CL_PL_CL_ACC     <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_PL_U06M ,
SUM(CASE WHEN  MS_CL_R_CL_ACC      <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_R_U06M ,
SUM(CASE WHEN  MS_CL_CL_ACC        <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_U06M ,
SUM(CASE WHEN  MS_CL_TU_CL_ACC     <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_TU_U06M ,
SUM(CASE WHEN  MS_CL_TU_ALL_CL_ACC <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_TU_ALL_U06M,
SUM(CASE WHEN  MS_CL_NBK_TU_CL_ACC <= 6 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_TU_U06M,

--  Cerradas 9 meses
SUM(CASE WHEN  MS_CL_BK_AU_CL_ACC  <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_AU_U09M ,
SUM(CASE WHEN  MS_CL_BK_M_CL_ACC   <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_M_U09M ,
SUM(CASE WHEN  MS_CL_BK_PL_CL_ACC  <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_PL_U09M ,
SUM(CASE WHEN  MS_CL_BK_R_CL_ACC   <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_R_U09M ,
SUM(CASE WHEN  MS_CL_BK_CL_ACC     <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_BK_U09M ,
SUM(CASE WHEN  MS_CL_NBK_AU_CL_ACC <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_AU_U09M,
SUM(CASE WHEN  MS_CL_NBK_M_CL_ACC  <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_M_U09M ,
SUM(CASE WHEN  MS_CL_NBK_PL_CL_ACC <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_PL_U09M,
SUM(CASE WHEN  MS_CL_NBK_R_CL_ACC  <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_R_U09M ,
SUM(CASE WHEN  MS_CL_NBK_CL_ACC    <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_U09M ,
SUM(CASE WHEN  MS_CL_AMX_CL_ACC    <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_AMX_U09M ,
SUM(CASE WHEN  MS_CL_AU_CL_ACC     <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_AU_U09M ,
SUM(CASE WHEN  MS_CL_M_CL_ACC      <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_M_U09M ,
SUM(CASE WHEN  MS_CL_PL_CL_ACC     <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_PL_U09M ,
SUM(CASE WHEN  MS_CL_R_CL_ACC      <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_R_U09M ,
SUM(CASE WHEN  MS_CL_CL_ACC        <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_U09M ,
SUM(CASE WHEN  MS_CL_TU_CL_ACC     <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_TU_U09M ,
SUM(CASE WHEN  MS_CL_TU_ALL_CL_ACC <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_TU_ALL_U09M,
SUM(CASE WHEN  MS_CL_NBK_TU_CL_ACC <= 9 THEN 1 ELSE 0 END) AS NUM_CL_ACC_NBK_TU_U09M,
 

 
--  ABIERTAS 3 MESES

SUM(CASE WHEN MS_OP_BK_AU_CL_ACC  <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_AU_CL_ACC_U03M  ,
SUM(CASE WHEN MS_OP_BK_AU_OP_ACC  <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_AU_OP_ACC_U03M  ,
SUM(CASE WHEN MS_OP_BK_AU         <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_AU_U03M         ,
SUM(CASE WHEN MS_OP_BK_M_CL_ACC   <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_M_CL_ACC_U03M   ,
SUM(CASE WHEN MS_OP_BK_M_OP_ACC   <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_M_OP_ACC_U03M   ,
SUM(CASE WHEN MS_OP_BK_M          <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_M_U03M          ,
SUM(CASE WHEN MS_OP_BK_PL_CL_ACC  <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_PL_CL_ACC_U03M  ,
SUM(CASE WHEN MS_OP_BK_PL_OP_ACC  <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_PL_OP_ACC_U03M  ,
SUM(CASE WHEN MS_OP_BK_PL         <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_PL_U03M         ,
SUM(CASE WHEN MS_OP_BK_R_CL_ACC   <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_R_CL_ACC_U03M   ,
SUM(CASE WHEN MS_OP_BK_R_OP_ACC   <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_R_OP_ACC_U03M   ,
SUM(CASE WHEN MS_OP_BK_R          <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_R_U03M          ,
SUM(CASE WHEN MS_OP_BK_CL_ACC     <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_CL_ACC_U03M    ,
SUM(CASE WHEN MS_OP_BK_OP_ACC     <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_OP_ACC_U03M    ,
SUM(CASE WHEN MS_OP_BK            <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_U03M           ,
SUM(CASE WHEN MS_OP_NBK_AU_CL_ACC <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_AU_CL_ACC_U03M ,
SUM(CASE WHEN MS_OP_NBK_AU_OP_ACC <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_AU_OP_ACC_U03M ,
SUM(CASE WHEN MS_OP_NBK_AU        <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_AU_U03M        ,
SUM(CASE WHEN MS_OP_NBK_M_CL_ACC  <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_M_CL_ACC_U03M  ,
SUM(CASE WHEN MS_OP_NBK_M_OP_ACC  <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_M_OP_ACC_U03M  ,
SUM(CASE WHEN MS_OP_NBK_M         <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_M_U03M         ,
SUM(CASE WHEN MS_OP_NBK_PL_CL_ACC <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_PL_CL_ACC_U03M ,
SUM(CASE WHEN MS_OP_NBK_PL_OP_ACC <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_PL_OP_ACC_U03M ,
SUM(CASE WHEN MS_OP_NBK_PL        <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_PL_U03M        ,
SUM(CASE WHEN MS_OP_NBK_R_CL_ACC  <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_R_CL_ACC_U03M  ,
SUM(CASE WHEN MS_OP_NBK_R_OP_ACC  <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_R_OP_ACC_U03M  ,
SUM(CASE WHEN MS_OP_NBK_R         <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_R_U03M         ,
SUM(CASE WHEN MS_OP_NBK_CL_ACC    <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_CL_ACC_U03M   ,
SUM(CASE WHEN MS_OP_NBK_OP_ACC    <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_OP_ACC_U03M   ,
SUM(CASE WHEN MS_OP_NBK           <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_U03M          ,
SUM(CASE WHEN MS_OP_AMX_CL_ACC    <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AMX_CL_ACC_U03M   ,
SUM(CASE WHEN MS_OP_AMX_OP_ACC    <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AMX_OP_ACC_U03M   ,
SUM(CASE WHEN MS_OP_AMX           <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AMX_U03M          ,
SUM(CASE WHEN MS_OP_AU_CL_ACC     <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AU_CL_ACC_U03M    ,
SUM(CASE WHEN MS_OP_AU_OP_ACC     <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AU_OP_ACC_U03M    ,
SUM(CASE WHEN MS_OP_AU            <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AU_U03M           ,
SUM(CASE WHEN MS_OP_M_CL_ACC      <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_M_CL_ACC_U03M     ,
SUM(CASE WHEN MS_OP_M_OP_ACC      <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_M_OP_ACC_U03M     ,
SUM(CASE WHEN MS_OP_M             <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_M_U03M            ,
SUM(CASE WHEN MS_OP_PL_CL_ACC     <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_PL_CL_ACC_U03M    ,
SUM(CASE WHEN MS_OP_PL_OP_ACC     <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_PL_OP_ACC_U03M    ,
SUM(CASE WHEN MS_OP_PL            <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_PL_U03M           ,
SUM(CASE WHEN MS_OP_R_CL_ACC      <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_R_CL_ACC_U03M     ,
SUM(CASE WHEN MS_OP_R_OP_ACC      <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_R_OP_ACC_U03M     ,
SUM(CASE WHEN MS_OP_R             <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_R_U03M            ,
SUM(CASE WHEN MS_OP_CL_ACC        <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_CL_ACC_U03M        ,
SUM(CASE WHEN MS_OP_OP_ACC        <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_OP_ACC_U03M        ,
SUM(CASE WHEN MS_OP               <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_U03M               ,
SUM(CASE WHEN MS_OP_TU_ALL        <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_ALL_U03M        ,
SUM(CASE WHEN MS_OP_TU            <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_U03M           ,
SUM(CASE WHEN MS_OP_TU_ALL_OP_ACC <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_ALL_OP_ACC_U03M ,
SUM(CASE WHEN MS_OP_TU_OP_ACC     <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_OP_ACC_U03M    ,
SUM(CASE WHEN MS_OP_TU_ALL_CL_ACC <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_ALL_CL_ACC_U03M ,
SUM(CASE WHEN MS_OP_TU_CL_ACC     <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_CL_ACC_U03M    ,
SUM(CASE WHEN MS_OP_NBK_TU        <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_TU_U03M        ,
SUM(CASE WHEN MS_OP_NBK_TU_OP_ACC <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_TU_OP_ACC_U03M ,
SUM(CASE WHEN MS_OP_NBK_TU_CL_ACC <= 3 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_TU_CL_ACC_U03M ,


SUM(CASE WHEN MS_OP_BK_AU_CL_ACC  <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_AU_CL_ACC_U06M  ,
SUM(CASE WHEN MS_OP_BK_AU_OP_ACC  <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_AU_OP_ACC_U06M  ,
SUM(CASE WHEN MS_OP_BK_AU         <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_AU_U06M         ,
SUM(CASE WHEN MS_OP_BK_M_CL_ACC   <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_M_CL_ACC_U06M   ,
SUM(CASE WHEN MS_OP_BK_M_OP_ACC   <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_M_OP_ACC_U06M   ,
SUM(CASE WHEN MS_OP_BK_M          <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_M_U06M          ,
SUM(CASE WHEN MS_OP_BK_PL_CL_ACC  <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_PL_CL_ACC_U06M  ,
SUM(CASE WHEN MS_OP_BK_PL_OP_ACC  <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_PL_OP_ACC_U06M  ,
SUM(CASE WHEN MS_OP_BK_PL         <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_PL_U06M         ,
SUM(CASE WHEN MS_OP_BK_R_CL_ACC   <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_R_CL_ACC_U06M   ,
SUM(CASE WHEN MS_OP_BK_R_OP_ACC   <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_R_OP_ACC_U06M   ,
SUM(CASE WHEN MS_OP_BK_R          <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_R_U06M          ,
SUM(CASE WHEN MS_OP_BK_CL_ACC     <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_CL_ACC_U06M    ,
SUM(CASE WHEN MS_OP_BK_OP_ACC     <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_OP_ACC_U06M    ,
SUM(CASE WHEN MS_OP_BK            <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_U06M           ,
SUM(CASE WHEN MS_OP_NBK_AU_CL_ACC <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_AU_CL_ACC_U06M ,
SUM(CASE WHEN MS_OP_NBK_AU_OP_ACC <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_AU_OP_ACC_U06M ,
SUM(CASE WHEN MS_OP_NBK_AU        <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_AU_U06M        ,
SUM(CASE WHEN MS_OP_NBK_M_CL_ACC  <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_M_CL_ACC_U06M  ,
SUM(CASE WHEN MS_OP_NBK_M_OP_ACC  <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_M_OP_ACC_U06M  ,
SUM(CASE WHEN MS_OP_NBK_M         <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_M_U06M         ,
SUM(CASE WHEN MS_OP_NBK_PL_CL_ACC <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_PL_CL_ACC_U06M ,
SUM(CASE WHEN MS_OP_NBK_PL_OP_ACC <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_PL_OP_ACC_U06M ,
SUM(CASE WHEN MS_OP_NBK_PL        <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_PL_U06M        ,
SUM(CASE WHEN MS_OP_NBK_R_CL_ACC  <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_R_CL_ACC_U06M  ,
SUM(CASE WHEN MS_OP_NBK_R_OP_ACC  <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_R_OP_ACC_U06M  ,
SUM(CASE WHEN MS_OP_NBK_R         <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_R_U06M         ,
SUM(CASE WHEN MS_OP_NBK_CL_ACC    <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_CL_ACC_U06M   ,
SUM(CASE WHEN MS_OP_NBK_OP_ACC    <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_OP_ACC_U06M   ,
SUM(CASE WHEN MS_OP_NBK           <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_U06M          ,
SUM(CASE WHEN MS_OP_AMX_CL_ACC    <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AMX_CL_ACC_U06M   ,
SUM(CASE WHEN MS_OP_AMX_OP_ACC    <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AMX_OP_ACC_U06M   ,
SUM(CASE WHEN MS_OP_AMX           <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AMX_U06M          ,
SUM(CASE WHEN MS_OP_AU_CL_ACC     <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AU_CL_ACC_U06M    ,
SUM(CASE WHEN MS_OP_AU_OP_ACC     <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AU_OP_ACC_U06M    ,
SUM(CASE WHEN MS_OP_AU            <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AU_U06M           ,
SUM(CASE WHEN MS_OP_M_CL_ACC      <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_M_CL_ACC_U06M     ,
SUM(CASE WHEN MS_OP_M_OP_ACC      <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_M_OP_ACC_U06M     ,
SUM(CASE WHEN MS_OP_M             <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_M_U06M            ,
SUM(CASE WHEN MS_OP_PL_CL_ACC     <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_PL_CL_ACC_U06M    ,
SUM(CASE WHEN MS_OP_PL_OP_ACC     <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_PL_OP_ACC_U06M    ,
SUM(CASE WHEN MS_OP_PL            <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_PL_U06M           ,
SUM(CASE WHEN MS_OP_R_CL_ACC      <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_R_CL_ACC_U06M     ,
SUM(CASE WHEN MS_OP_R_OP_ACC      <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_R_OP_ACC_U06M     ,
SUM(CASE WHEN MS_OP_R             <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_R_U06M            ,
SUM(CASE WHEN MS_OP_CL_ACC        <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_CL_ACC_U06M        ,
SUM(CASE WHEN MS_OP_OP_ACC        <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_OP_ACC_U06M        ,
SUM(CASE WHEN MS_OP               <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_U06M               ,
SUM(CASE WHEN MS_OP_TU_ALL        <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_ALL_U06M        ,
SUM(CASE WHEN MS_OP_TU            <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_U06M           ,
SUM(CASE WHEN MS_OP_TU_ALL_OP_ACC <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_ALL_OP_ACC_U06M ,
SUM(CASE WHEN MS_OP_TU_OP_ACC     <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_OP_ACC_U06M    ,
SUM(CASE WHEN MS_OP_TU_ALL_CL_ACC <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_ALL_CL_ACC_U06M ,
SUM(CASE WHEN MS_OP_TU_CL_ACC     <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_CL_ACC_U06M    ,
SUM(CASE WHEN MS_OP_NBK_TU        <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_TU_U06M        ,
SUM(CASE WHEN MS_OP_NBK_TU_OP_ACC <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_TU_OP_ACC_U06M ,
SUM(CASE WHEN MS_OP_NBK_TU_CL_ACC <= 6 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_TU_CL_ACC_U06M ,


SUM(CASE WHEN MS_OP_BK_AU_CL_ACC  <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_AU_CL_ACC_U09M  ,
SUM(CASE WHEN MS_OP_BK_AU_OP_ACC  <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_AU_OP_ACC_U09M  ,
SUM(CASE WHEN MS_OP_BK_AU         <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_AU_U09M         ,
SUM(CASE WHEN MS_OP_BK_M_CL_ACC   <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_M_CL_ACC_U09M   ,
SUM(CASE WHEN MS_OP_BK_M_OP_ACC   <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_M_OP_ACC_U09M   ,
SUM(CASE WHEN MS_OP_BK_M          <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_M_U09M          ,
SUM(CASE WHEN MS_OP_BK_PL_CL_ACC  <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_PL_CL_ACC_U09M  ,
SUM(CASE WHEN MS_OP_BK_PL_OP_ACC  <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_PL_OP_ACC_U09M  ,
SUM(CASE WHEN MS_OP_BK_PL         <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_PL_U09M         ,
SUM(CASE WHEN MS_OP_BK_R_CL_ACC   <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_R_CL_ACC_U09M   ,
SUM(CASE WHEN MS_OP_BK_R_OP_ACC   <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_R_OP_ACC_U09M   ,
SUM(CASE WHEN MS_OP_BK_R          <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_R_U09M          ,
SUM(CASE WHEN MS_OP_BK_CL_ACC     <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_CL_ACC_U09M    ,
SUM(CASE WHEN MS_OP_BK_OP_ACC     <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_OP_ACC_U09M    ,
SUM(CASE WHEN MS_OP_BK            <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_BK_U09M           ,
SUM(CASE WHEN MS_OP_NBK_AU_CL_ACC <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_AU_CL_ACC_U09M ,
SUM(CASE WHEN MS_OP_NBK_AU_OP_ACC <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_AU_OP_ACC_U09M ,
SUM(CASE WHEN MS_OP_NBK_AU        <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_AU_U09M        ,
SUM(CASE WHEN MS_OP_NBK_M_CL_ACC  <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_M_CL_ACC_U09M  ,
SUM(CASE WHEN MS_OP_NBK_M_OP_ACC  <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_M_OP_ACC_U09M  ,
SUM(CASE WHEN MS_OP_NBK_M         <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_M_U09M         ,
SUM(CASE WHEN MS_OP_NBK_PL_CL_ACC <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_PL_CL_ACC_U09M ,
SUM(CASE WHEN MS_OP_NBK_PL_OP_ACC <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_PL_OP_ACC_U09M ,
SUM(CASE WHEN MS_OP_NBK_PL        <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_PL_U09M        ,
SUM(CASE WHEN MS_OP_NBK_R_CL_ACC  <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_R_CL_ACC_U09M  ,
SUM(CASE WHEN MS_OP_NBK_R_OP_ACC  <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_R_OP_ACC_U09M  ,
SUM(CASE WHEN MS_OP_NBK_R         <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_R_U09M         ,
SUM(CASE WHEN MS_OP_NBK_CL_ACC    <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_CL_ACC_U09M   ,
SUM(CASE WHEN MS_OP_NBK_OP_ACC    <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_OP_ACC_U09M   ,
SUM(CASE WHEN MS_OP_NBK           <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_U09M          ,
SUM(CASE WHEN MS_OP_AMX_CL_ACC    <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AMX_CL_ACC_U09M   ,
SUM(CASE WHEN MS_OP_AMX_OP_ACC    <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AMX_OP_ACC_U09M   ,
SUM(CASE WHEN MS_OP_AMX           <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AMX_U09M          ,
SUM(CASE WHEN MS_OP_AU_CL_ACC     <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AU_CL_ACC_U09M    ,
SUM(CASE WHEN MS_OP_AU_OP_ACC     <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AU_OP_ACC_U09M    ,
SUM(CASE WHEN MS_OP_AU            <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_AU_U09M           ,
SUM(CASE WHEN MS_OP_M_CL_ACC      <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_M_CL_ACC_U09M     ,
SUM(CASE WHEN MS_OP_M_OP_ACC      <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_M_OP_ACC_U09M     ,
SUM(CASE WHEN MS_OP_M             <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_M_U09M            ,
SUM(CASE WHEN MS_OP_PL_CL_ACC     <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_PL_CL_ACC_U09M    ,
SUM(CASE WHEN MS_OP_PL_OP_ACC     <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_PL_OP_ACC_U09M    ,
SUM(CASE WHEN MS_OP_PL            <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_PL_U09M           ,
SUM(CASE WHEN MS_OP_R_CL_ACC      <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_R_CL_ACC_U09M     ,
SUM(CASE WHEN MS_OP_R_OP_ACC      <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_R_OP_ACC_U09M     ,
SUM(CASE WHEN MS_OP_R             <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_R_U09M            ,
SUM(CASE WHEN MS_OP_CL_ACC        <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_CL_ACC_U09M        ,
SUM(CASE WHEN MS_OP_OP_ACC        <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_OP_ACC_U09M        ,
SUM(CASE WHEN MS_OP               <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_U09M               ,
SUM(CASE WHEN MS_OP_TU_ALL        <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_ALL_U09M        ,
SUM(CASE WHEN MS_OP_TU            <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_U09M           ,
SUM(CASE WHEN MS_OP_TU_ALL_OP_ACC <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_ALL_OP_ACC_U09M ,
SUM(CASE WHEN MS_OP_TU_OP_ACC     <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_OP_ACC_U09M    ,
SUM(CASE WHEN MS_OP_TU_ALL_CL_ACC <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_ALL_CL_ACC_U09M ,
SUM(CASE WHEN MS_OP_TU_CL_ACC     <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_TU_CL_ACC_U09M    ,
SUM(CASE WHEN MS_OP_NBK_TU        <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_TU_U09M        ,
SUM(CASE WHEN MS_OP_NBK_TU_OP_ACC <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_TU_OP_ACC_U09M ,
SUM(CASE WHEN MS_OP_NBK_TU_CL_ACC <= 9 THEN 1 ELSE 0 END ) AS NUM_OP_ACC_NBK_TU_CL_ACC_U09M 

from 
dbmymwork.BTDC_LGG_VAR_SEGMENTADAS_1
GROUP BY CUENTADEREFERENCIA,FECHA_CARTERA;

SELECT * FROM dbmymwork.BTDC_LGG_VAR_COUNT_ACC limit 100;