%hive

DROP TABLE IF EXISTS dbmymwork.BTDC_LGG_VAR_NUM_GRW_MOP;
CREATE TABLE dbmymwork.BTDC_LGG_VAR_NUM_GRW_MOP
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'

LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES/ BTDC_LGG_VAR_NUM_GRW_MOP' AS

SELECT
CUENTADEREFERENCIA,
FECHA_CARTERA,

AVG(NUM_GRW_MOP_BK_AU_CL_ACC    ) AS AVG_NUM_GRW_MOP_BK_AU_CL_ACC    ,
AVG(NUM_GRW_MOP_BK_AU_OP_ACC    ) AS AVG_NUM_GRW_MOP_BK_AU_OP_ACC    ,
AVG(NUM_GRW_MOP_BK_AU           ) AS AVG_NUM_GRW_MOP_BK_AU           ,
AVG(NUM_GRW_MOP_BK_M_CL_ACC     ) AS AVG_NUM_GRW_MOP_BK_M_CL_ACC     ,
AVG(NUM_GRW_MOP_BK_M_OP_ACC     ) AS AVG_NUM_GRW_MOP_BK_M_OP_ACC     ,
AVG(NUM_GRW_MOP_BK_M            ) AS AVG_NUM_GRW_MOP_BK_M            ,
AVG(NUM_GRW_MOP_BK_PL_CL_ACC    ) AS AVG_NUM_GRW_MOP_BK_PL_CL_ACC    ,
AVG(NUM_GRW_MOP_BK_PL_OP_ACC    ) AS AVG_NUM_GRW_MOP_BK_PL_OP_ACC    ,
AVG(NUM_GRW_MOP_BK_PL           ) AS AVG_NUM_GRW_MOP_BK_PL           ,
AVG(NUM_GRW_MOP_BK_R_CL_ACC     ) AS AVG_NUM_GRW_MOP_BK_R_CL_ACC     ,
AVG(NUM_GRW_MOP_BK_R_OP_ACC     ) AS AVG_NUM_GRW_MOP_BK_R_OP_ACC     ,
AVG(NUM_GRW_MOP_BK_R            ) AS AVG_NUM_GRW_MOP_BK_R            ,
AVG(NUM_GRW_MOP_BK_CL_ACC       ) AS AVG_NUM_GRW_MOP_BK_CL_ACC       ,
AVG(NUM_GRW_MOP_BK_OP_ACC       ) AS AVG_NUM_GRW_MOP_BK_OP_ACC       ,
AVG(NUM_GRW_MOP_BK              ) AS AVG_NUM_GRW_MOP_BK              ,
AVG(NUM_GRW_MOP_NBK_AU_CL_ACC   ) AS AVG_NUM_GRW_MOP_NBK_AU_CL_ACC   ,
AVG(NUM_GRW_MOP_NBK_AU_OP_ACC   ) AS AVG_NUM_GRW_MOP_NBK_AU_OP_ACC   ,
AVG(NUM_GRW_MOP_NBK_AU          ) AS AVG_NUM_GRW_MOP_NBK_AU          ,
AVG(NUM_GRW_MOP_NBK_M_CL_ACC    ) AS AVG_NUM_GRW_MOP_NBK_M_CL_ACC    ,
AVG(NUM_GRW_MOP_NBK_M_OP_ACC    ) AS AVG_NUM_GRW_MOP_NBK_M_OP_ACC    ,
AVG(NUM_GRW_MOP_NBK_M           ) AS AVG_NUM_GRW_MOP_NBK_M           ,
AVG(NUM_GRW_MOP_NBK_PL_CL_ACC   ) AS AVG_NUM_GRW_MOP_NBK_PL_CL_ACC   ,
AVG(NUM_GRW_MOP_NBK_PL_OP_ACC   ) AS AVG_NUM_GRW_MOP_NBK_PL_OP_ACC   ,
AVG(NUM_GRW_MOP_NBK_PL          ) AS AVG_NUM_GRW_MOP_NBK_PL          ,
AVG(NUM_GRW_MOP_NBK_R_CL_ACC    ) AS AVG_NUM_GRW_MOP_NBK_R_CL_ACC    ,
AVG(NUM_GRW_MOP_NBK_R_OP_ACC    ) AS AVG_NUM_GRW_MOP_NBK_R_OP_ACC    ,
AVG(NUM_GRW_MOP_NBK_R           ) AS AVG_NUM_GRW_MOP_NBK_R           ,
AVG(NUM_GRW_MOP_NBK_CL_ACC      ) AS AVG_NUM_GRW_MOP_NBK_CL_ACC      ,
AVG(NUM_GRW_MOP_NBK_OP_ACC      ) AS AVG_NUM_GRW_MOP_NBK_OP_ACC      ,
AVG(NUM_GRW_MOP_NBK             ) AS AVG_NUM_GRW_MOP_NBK             ,
AVG(NUM_GRW_MOP_AMX_CL_ACC      ) AS AVG_NUM_GRW_MOP_AMX_CL_ACC      ,
AVG(NUM_GRW_MOP_AMX_OP_ACC      ) AS AVG_NUM_GRW_MOP_AMX_OP_ACC      ,
AVG(NUM_GRW_MOP_AMX             ) AS AVG_NUM_GRW_MOP_AMX             ,
AVG(NUM_GRW_MOP_AU_CL_ACC       ) AS AVG_NUM_GRW_MOP_AU_CL_ACC       ,
AVG(NUM_GRW_MOP_AU_OP_ACC       ) AS AVG_NUM_GRW_MOP_AU_OP_ACC       ,
AVG(NUM_GRW_MOP_AU              ) AS AVG_NUM_GRW_MOP_AU              ,
AVG(NUM_GRW_MOP_M_CL_ACC        ) AS AVG_NUM_GRW_MOP_M_CL_ACC        ,
AVG(NUM_GRW_MOP_M_OP_ACC        ) AS AVG_NUM_GRW_MOP_M_OP_ACC        ,
AVG(NUM_GRW_MOP_M               ) AS AVG_NUM_GRW_MOP_M               ,
AVG(NUM_GRW_MOP_PL_CL_ACC       ) AS AVG_NUM_GRW_MOP_PL_CL_ACC       ,
AVG(NUM_GRW_MOP_PL_OP_ACC       ) AS AVG_NUM_GRW_MOP_PL_OP_ACC       ,
AVG(NUM_GRW_MOP_PL              ) AS AVG_NUM_GRW_MOP_PL              ,
AVG(NUM_GRW_MOP_R_CL_ACC        ) AS AVG_NUM_GRW_MOP_R_CL_ACC        ,
AVG(NUM_GRW_MOP_R_OP_ACC        ) AS AVG_NUM_GRW_MOP_R_OP_ACC        ,
AVG(NUM_GRW_MOP_R               ) AS AVG_NUM_GRW_MOP_R               ,
AVG(NUM_GRW_MOP_CL_ACC          ) AS AVG_NUM_GRW_MOP_CL_ACC          ,
AVG(NUM_GRW_MOP_OP_ACC          ) AS AVG_NUM_GRW_MOP_OP_ACC          ,

COUNT(NUM_GRW_MOP_BK_AU_CL_ACC  ) AS NUM_NUM_GRW_MOP_BK_AU_CL_ACC  ,
COUNT(NUM_GRW_MOP_BK_AU_OP_ACC  ) AS NUM_NUM_GRW_MOP_BK_AU_OP_ACC  ,
COUNT(NUM_GRW_MOP_BK_AU         ) AS NUM_NUM_GRW_MOP_BK_AU         ,
COUNT(NUM_GRW_MOP_BK_M_CL_ACC   ) AS NUM_NUM_GRW_MOP_BK_M_CL_ACC   ,
COUNT(NUM_GRW_MOP_BK_M_OP_ACC   ) AS NUM_NUM_GRW_MOP_BK_M_OP_ACC   ,
COUNT(NUM_GRW_MOP_BK_M          ) AS NUM_NUM_GRW_MOP_BK_M          ,
COUNT(NUM_GRW_MOP_BK_PL_CL_ACC  ) AS NUM_NUM_GRW_MOP_BK_PL_CL_ACC  ,
COUNT(NUM_GRW_MOP_BK_PL_OP_ACC  ) AS NUM_NUM_GRW_MOP_BK_PL_OP_ACC  ,
COUNT(NUM_GRW_MOP_BK_PL         ) AS NUM_NUM_GRW_MOP_BK_PL         ,
COUNT(NUM_GRW_MOP_BK_R_CL_ACC   ) AS NUM_NUM_GRW_MOP_BK_R_CL_ACC   ,
COUNT(NUM_GRW_MOP_BK_R_OP_ACC   ) AS NUM_NUM_GRW_MOP_BK_R_OP_ACC   ,
COUNT(NUM_GRW_MOP_BK_R          ) AS NUM_NUM_GRW_MOP_BK_R          ,
COUNT(NUM_GRW_MOP_BK_CL_ACC     ) AS NUM_NUM_GRW_MOP_BK_CL_ACC     ,
COUNT(NUM_GRW_MOP_BK_OP_ACC     ) AS NUM_NUM_GRW_MOP_BK_OP_ACC     ,
COUNT(NUM_GRW_MOP_BK            ) AS NUM_NUM_GRW_MOP_BK            ,
COUNT(NUM_GRW_MOP_NBK_AU_CL_ACC ) AS NUM_NUM_GRW_MOP_NBK_AU_CL_ACC ,
COUNT(NUM_GRW_MOP_NBK_AU_OP_ACC ) AS NUM_NUM_GRW_MOP_NBK_AU_OP_ACC ,
COUNT(NUM_GRW_MOP_NBK_AU        ) AS NUM_NUM_GRW_MOP_NBK_AU        ,
COUNT(NUM_GRW_MOP_NBK_M_CL_ACC  ) AS NUM_NUM_GRW_MOP_NBK_M_CL_ACC  ,
COUNT(NUM_GRW_MOP_NBK_M_OP_ACC  ) AS NUM_NUM_GRW_MOP_NBK_M_OP_ACC  ,
COUNT(NUM_GRW_MOP_NBK_M         ) AS NUM_NUM_GRW_MOP_NBK_M         ,
COUNT(NUM_GRW_MOP_NBK_PL_CL_ACC ) AS NUM_NUM_GRW_MOP_NBK_PL_CL_ACC ,
COUNT(NUM_GRW_MOP_NBK_PL_OP_ACC ) AS NUM_NUM_GRW_MOP_NBK_PL_OP_ACC ,
COUNT(NUM_GRW_MOP_NBK_PL        ) AS NUM_NUM_GRW_MOP_NBK_PL        ,
COUNT(NUM_GRW_MOP_NBK_R_CL_ACC  ) AS NUM_NUM_GRW_MOP_NBK_R_CL_ACC  ,
COUNT(NUM_GRW_MOP_NBK_R_OP_ACC  ) AS NUM_NUM_GRW_MOP_NBK_R_OP_ACC  ,
COUNT(NUM_GRW_MOP_NBK_R         ) AS NUM_NUM_GRW_MOP_NBK_R         ,
COUNT(NUM_GRW_MOP_NBK_CL_ACC    ) AS NUM_NUM_GRW_MOP_NBK_CL_ACC    ,
COUNT(NUM_GRW_MOP_NBK_OP_ACC    ) AS NUM_NUM_GRW_MOP_NBK_OP_ACC    ,
COUNT(NUM_GRW_MOP_NBK           ) AS NUM_NUM_GRW_MOP_NBK           ,
COUNT(NUM_GRW_MOP_AMX_CL_ACC    ) AS NUM_NUM_GRW_MOP_AMX_CL_ACC    ,
COUNT(NUM_GRW_MOP_AMX_OP_ACC    ) AS NUM_NUM_GRW_MOP_AMX_OP_ACC    ,
COUNT(NUM_GRW_MOP_AMX           ) AS NUM_NUM_GRW_MOP_AMX           ,
COUNT(NUM_GRW_MOP_AU_CL_ACC     ) AS NUM_NUM_GRW_MOP_AU_CL_ACC     ,
COUNT(NUM_GRW_MOP_AU_OP_ACC     ) AS NUM_NUM_GRW_MOP_AU_OP_ACC     ,
COUNT(NUM_GRW_MOP_AU            ) AS NUM_NUM_GRW_MOP_AU            ,
COUNT(NUM_GRW_MOP_M_CL_ACC      ) AS NUM_NUM_GRW_MOP_M_CL_ACC      ,
COUNT(NUM_GRW_MOP_M_OP_ACC      ) AS NUM_NUM_GRW_MOP_M_OP_ACC      ,
COUNT(NUM_GRW_MOP_M             ) AS NUM_NUM_GRW_MOP_M             ,
COUNT(NUM_GRW_MOP_PL_CL_ACC     ) AS NUM_NUM_GRW_MOP_PL_CL_ACC     ,
COUNT(NUM_GRW_MOP_PL_OP_ACC     ) AS NUM_NUM_GRW_MOP_PL_OP_ACC     ,
COUNT(NUM_GRW_MOP_PL            ) AS NUM_NUM_GRW_MOP_PL            ,
COUNT(NUM_GRW_MOP_R_CL_ACC      ) AS NUM_NUM_GRW_MOP_R_CL_ACC      ,
COUNT(NUM_GRW_MOP_R_OP_ACC      ) AS NUM_NUM_GRW_MOP_R_OP_ACC      ,
COUNT(NUM_GRW_MOP_R             ) AS NUM_NUM_GRW_MOP_R             ,
COUNT(NUM_GRW_MOP_CL_ACC        ) AS NUM_NUM_GRW_MOP_CL_ACC        ,
COUNT(NUM_GRW_MOP_OP_ACC        ) AS NUM_NUM_GRW_MOP_OP_ACC        ,
                                                    
MAX(NUM_GRW_MOP_BK_AU_CL_ACC    ) AS MAX_NUM_GRW_MOP_BK_AU_CL_ACC  ,
MAX(NUM_GRW_MOP_BK_AU_OP_ACC    ) AS MAX_NUM_GRW_MOP_BK_AU_OP_ACC  ,
MAX(NUM_GRW_MOP_BK_AU           ) AS MAX_NUM_GRW_MOP_BK_AU         ,
MAX(NUM_GRW_MOP_BK_M_CL_ACC     ) AS MAX_NUM_GRW_MOP_BK_M_CL_ACC   ,
MAX(NUM_GRW_MOP_BK_M_OP_ACC     ) AS MAX_NUM_GRW_MOP_BK_M_OP_ACC   ,
MAX(NUM_GRW_MOP_BK_M            ) AS MAX_NUM_GRW_MOP_BK_M          ,
MAX(NUM_GRW_MOP_BK_PL_CL_ACC    ) AS MAX_NUM_GRW_MOP_BK_PL_CL_ACC  ,
MAX(NUM_GRW_MOP_BK_PL_OP_ACC    ) AS MAX_NUM_GRW_MOP_BK_PL_OP_ACC  ,
MAX(NUM_GRW_MOP_BK_PL           ) AS MAX_NUM_GRW_MOP_BK_PL         ,
MAX(NUM_GRW_MOP_BK_R_CL_ACC     ) AS MAX_NUM_GRW_MOP_BK_R_CL_ACC   ,
MAX(NUM_GRW_MOP_BK_R_OP_ACC     ) AS MAX_NUM_GRW_MOP_BK_R_OP_ACC   ,
MAX(NUM_GRW_MOP_BK_R            ) AS MAX_NUM_GRW_MOP_BK_R          ,
MAX(NUM_GRW_MOP_BK_CL_ACC       ) AS MAX_NUM_GRW_MOP_BK_CL_ACC     ,
MAX(NUM_GRW_MOP_BK_OP_ACC       ) AS MAX_NUM_GRW_MOP_BK_OP_ACC     ,
MAX(NUM_GRW_MOP_BK              ) AS MAX_NUM_GRW_MOP_BK            ,
MAX(NUM_GRW_MOP_NBK_AU_CL_ACC   ) AS MAX_NUM_GRW_MOP_NBK_AU_CL_ACC ,
MAX(NUM_GRW_MOP_NBK_AU_OP_ACC   ) AS MAX_NUM_GRW_MOP_NBK_AU_OP_ACC ,
MAX(NUM_GRW_MOP_NBK_AU          ) AS MAX_NUM_GRW_MOP_NBK_AU        ,
MAX(NUM_GRW_MOP_NBK_M_CL_ACC    ) AS MAX_NUM_GRW_MOP_NBK_M_CL_ACC  ,
MAX(NUM_GRW_MOP_NBK_M_OP_ACC    ) AS MAX_NUM_GRW_MOP_NBK_M_OP_ACC  ,
MAX(NUM_GRW_MOP_NBK_M           ) AS MAX_NUM_GRW_MOP_NBK_M         ,
MAX(NUM_GRW_MOP_NBK_PL_CL_ACC   ) AS MAX_NUM_GRW_MOP_NBK_PL_CL_ACC ,
MAX(NUM_GRW_MOP_NBK_PL_OP_ACC   ) AS MAX_NUM_GRW_MOP_NBK_PL_OP_ACC ,
MAX(NUM_GRW_MOP_NBK_PL          ) AS MAX_NUM_GRW_MOP_NBK_PL        ,
MAX(NUM_GRW_MOP_NBK_R_CL_ACC    ) AS MAX_NUM_GRW_MOP_NBK_R_CL_ACC  ,
MAX(NUM_GRW_MOP_NBK_R_OP_ACC    ) AS MAX_NUM_GRW_MOP_NBK_R_OP_ACC  ,
MAX(NUM_GRW_MOP_NBK_R           ) AS MAX_NUM_GRW_MOP_NBK_R         ,
MAX(NUM_GRW_MOP_NBK_CL_ACC      ) AS MAX_NUM_GRW_MOP_NBK_CL_ACC    ,
MAX(NUM_GRW_MOP_NBK_OP_ACC      ) AS MAX_NUM_GRW_MOP_NBK_OP_ACC    ,
MAX(NUM_GRW_MOP_NBK             ) AS MAX_NUM_GRW_MOP_NBK           ,
MAX(NUM_GRW_MOP_AMX_CL_ACC      ) AS MAX_NUM_GRW_MOP_AMX_CL_ACC    ,
MAX(NUM_GRW_MOP_AMX_OP_ACC      ) AS MAX_NUM_GRW_MOP_AMX_OP_ACC    ,
MAX(NUM_GRW_MOP_AMX             ) AS MAX_NUM_GRW_MOP_AMX           ,
MAX(NUM_GRW_MOP_AU_CL_ACC       ) AS MAX_NUM_GRW_MOP_AU_CL_ACC     ,
MAX(NUM_GRW_MOP_AU_OP_ACC       ) AS MAX_NUM_GRW_MOP_AU_OP_ACC     ,
MAX(NUM_GRW_MOP_AU              ) AS MAX_NUM_GRW_MOP_AU            ,
MAX(NUM_GRW_MOP_M_CL_ACC        ) AS MAX_NUM_GRW_MOP_M_CL_ACC      ,
MAX(NUM_GRW_MOP_M_OP_ACC        ) AS MAX_NUM_GRW_MOP_M_OP_ACC      ,
MAX(NUM_GRW_MOP_M               ) AS MAX_NUM_GRW_MOP_M             ,
MAX(NUM_GRW_MOP_PL_CL_ACC       ) AS MAX_NUM_GRW_MOP_PL_CL_ACC     ,
MAX(NUM_GRW_MOP_PL_OP_ACC       ) AS MAX_NUM_GRW_MOP_PL_OP_ACC     ,
MAX(NUM_GRW_MOP_PL              ) AS MAX_NUM_GRW_MOP_PL            ,
MAX(NUM_GRW_MOP_R_CL_ACC        ) AS MAX_NUM_GRW_MOP_R_CL_ACC      ,
MAX(NUM_GRW_MOP_R_OP_ACC        ) AS MAX_NUM_GRW_MOP_R_OP_ACC      ,
MAX(NUM_GRW_MOP_R               ) AS MAX_NUM_GRW_MOP_R             ,
MAX(NUM_GRW_MOP_CL_ACC          ) AS MAX_NUM_GRW_MOP_CL_ACC        ,
MAX(NUM_GRW_MOP_OP_ACC          ) AS MAX_NUM_GRW_MOP_OP_ACC        ,

MIN(NUM_GRW_MOP_BK_AU_CL_ACC    ) AS MIN_NUM_GRW_MOP_BK_AU_CL_ACC  ,
MIN(NUM_GRW_MOP_BK_AU_OP_ACC    ) AS MIN_NUM_GRW_MOP_BK_AU_OP_ACC  ,
MIN(NUM_GRW_MOP_BK_AU           ) AS MIN_NUM_GRW_MOP_BK_AU         ,
MIN(NUM_GRW_MOP_BK_M_CL_ACC     ) AS MIN_NUM_GRW_MOP_BK_M_CL_ACC   ,
MIN(NUM_GRW_MOP_BK_M_OP_ACC     ) AS MIN_NUM_GRW_MOP_BK_M_OP_ACC   ,
MIN(NUM_GRW_MOP_BK_M            ) AS MIN_NUM_GRW_MOP_BK_M          ,
MIN(NUM_GRW_MOP_BK_PL_CL_ACC    ) AS MIN_NUM_GRW_MOP_BK_PL_CL_ACC  ,
MIN(NUM_GRW_MOP_BK_PL_OP_ACC    ) AS MIN_NUM_GRW_MOP_BK_PL_OP_ACC  ,
MIN(NUM_GRW_MOP_BK_PL           ) AS MIN_NUM_GRW_MOP_BK_PL         ,
MIN(NUM_GRW_MOP_BK_R_CL_ACC     ) AS MIN_NUM_GRW_MOP_BK_R_CL_ACC   ,
MIN(NUM_GRW_MOP_BK_R_OP_ACC     ) AS MIN_NUM_GRW_MOP_BK_R_OP_ACC   ,
MIN(NUM_GRW_MOP_BK_R            ) AS MIN_NUM_GRW_MOP_BK_R          ,
MIN(NUM_GRW_MOP_BK_CL_ACC       ) AS MIN_NUM_GRW_MOP_BK_CL_ACC     ,
MIN(NUM_GRW_MOP_BK_OP_ACC       ) AS MIN_NUM_GRW_MOP_BK_OP_ACC     ,
MIN(NUM_GRW_MOP_BK              ) AS MIN_NUM_GRW_MOP_BK            ,
MIN(NUM_GRW_MOP_NBK_AU_CL_ACC   ) AS MIN_NUM_GRW_MOP_NBK_AU_CL_ACC ,
MIN(NUM_GRW_MOP_NBK_AU_OP_ACC   ) AS MIN_NUM_GRW_MOP_NBK_AU_OP_ACC ,
MIN(NUM_GRW_MOP_NBK_AU          ) AS MIN_NUM_GRW_MOP_NBK_AU        ,
MIN(NUM_GRW_MOP_NBK_M_CL_ACC    ) AS MIN_NUM_GRW_MOP_NBK_M_CL_ACC  ,
MIN(NUM_GRW_MOP_NBK_M_OP_ACC    ) AS MIN_NUM_GRW_MOP_NBK_M_OP_ACC  ,
MIN(NUM_GRW_MOP_NBK_M           ) AS MIN_NUM_GRW_MOP_NBK_M         ,
MIN(NUM_GRW_MOP_NBK_PL_CL_ACC   ) AS MIN_NUM_GRW_MOP_NBK_PL_CL_ACC ,
MIN(NUM_GRW_MOP_NBK_PL_OP_ACC   ) AS MIN_NUM_GRW_MOP_NBK_PL_OP_ACC ,
MIN(NUM_GRW_MOP_NBK_PL          ) AS MIN_NUM_GRW_MOP_NBK_PL        ,
MIN(NUM_GRW_MOP_NBK_R_CL_ACC    ) AS MIN_NUM_GRW_MOP_NBK_R_CL_ACC  ,
MIN(NUM_GRW_MOP_NBK_R_OP_ACC    ) AS MIN_NUM_GRW_MOP_NBK_R_OP_ACC  ,
MIN(NUM_GRW_MOP_NBK_R           ) AS MIN_NUM_GRW_MOP_NBK_R         ,
MIN(NUM_GRW_MOP_NBK_CL_ACC      ) AS MIN_NUM_GRW_MOP_NBK_CL_ACC    ,
MIN(NUM_GRW_MOP_NBK_OP_ACC      ) AS MIN_NUM_GRW_MOP_NBK_OP_ACC    ,
MIN(NUM_GRW_MOP_NBK             ) AS MIN_NUM_GRW_MOP_NBK           ,
MIN(NUM_GRW_MOP_AMX_CL_ACC      ) AS MIN_NUM_GRW_MOP_AMX_CL_ACC    ,
MIN(NUM_GRW_MOP_AMX_OP_ACC      ) AS MIN_NUM_GRW_MOP_AMX_OP_ACC    ,
MIN(NUM_GRW_MOP_AMX             ) AS MIN_NUM_GRW_MOP_AMX           ,
MIN(NUM_GRW_MOP_AU_CL_ACC       ) AS MIN_NUM_GRW_MOP_AU_CL_ACC     ,
MIN(NUM_GRW_MOP_AU_OP_ACC       ) AS MIN_NUM_GRW_MOP_AU_OP_ACC     ,
MIN(NUM_GRW_MOP_AU              ) AS MIN_NUM_GRW_MOP_AU            ,
MIN(NUM_GRW_MOP_M_CL_ACC        ) AS MIN_NUM_GRW_MOP_M_CL_ACC      ,
MIN(NUM_GRW_MOP_M_OP_ACC        ) AS MIN_NUM_GRW_MOP_M_OP_ACC      ,
MIN(NUM_GRW_MOP_M               ) AS MIN_NUM_GRW_MOP_M             ,
MIN(NUM_GRW_MOP_PL_CL_ACC       ) AS MIN_NUM_GRW_MOP_PL_CL_ACC     ,
MIN(NUM_GRW_MOP_PL_OP_ACC       ) AS MIN_NUM_GRW_MOP_PL_OP_ACC     ,
MIN(NUM_GRW_MOP_PL              ) AS MIN_NUM_GRW_MOP_PL            ,
MIN(NUM_GRW_MOP_R_CL_ACC        ) AS MIN_NUM_GRW_MOP_R_CL_ACC      ,
MIN(NUM_GRW_MOP_R_OP_ACC        ) AS MIN_NUM_GRW_MOP_R_OP_ACC      ,
MIN(NUM_GRW_MOP_R               ) AS MIN_NUM_GRW_MOP_R             ,
MIN(NUM_GRW_MOP_CL_ACC          ) AS MIN_NUM_GRW_MOP_CL_ACC        ,
MIN(NUM_GRW_MOP_OP_ACC          ) AS MIN_NUM_GRW_MOP_OP_ACC        ,

MAX(NUM_GRW_MOP_BK_AU_CL_ACC ) - MIN(NUM_GRW_MOP_BK_AU_CL_ACC  )  AS DIF_NUM_GRW_MOP_BK_AU_CL_ACC  ,
MAX(NUM_GRW_MOP_BK_AU_OP_ACC ) - MIN(NUM_GRW_MOP_BK_AU_OP_ACC  )  AS DIF_NUM_GRW_MOP_BK_AU_OP_ACC  ,
MAX(NUM_GRW_MOP_BK_AU        ) - MIN(NUM_GRW_MOP_BK_AU         )  AS DIF_NUM_GRW_MOP_BK_AU         ,
MAX(NUM_GRW_MOP_BK_M_CL_ACC  ) - MIN(NUM_GRW_MOP_BK_M_CL_ACC   )  AS DIF_NUM_GRW_MOP_BK_M_CL_ACC   ,
MAX(NUM_GRW_MOP_BK_M_OP_ACC  ) - MIN(NUM_GRW_MOP_BK_M_OP_ACC   )  AS DIF_NUM_GRW_MOP_BK_M_OP_ACC   ,
MAX(NUM_GRW_MOP_BK_M         ) - MIN(NUM_GRW_MOP_BK_M          )  AS DIF_NUM_GRW_MOP_BK_M          ,
MAX(NUM_GRW_MOP_BK_PL_CL_ACC ) - MIN(NUM_GRW_MOP_BK_PL_CL_ACC  )  AS DIF_NUM_GRW_MOP_BK_PL_CL_ACC  ,
MAX(NUM_GRW_MOP_BK_PL_OP_ACC ) - MIN(NUM_GRW_MOP_BK_PL_OP_ACC  )  AS DIF_NUM_GRW_MOP_BK_PL_OP_ACC  ,
MAX(NUM_GRW_MOP_BK_PL        ) - MIN(NUM_GRW_MOP_BK_PL         )  AS DIF_NUM_GRW_MOP_BK_PL         ,
MAX(NUM_GRW_MOP_BK_R_CL_ACC  ) - MIN(NUM_GRW_MOP_BK_R_CL_ACC   )  AS DIF_NUM_GRW_MOP_BK_R_CL_ACC   ,
MAX(NUM_GRW_MOP_BK_R_OP_ACC  ) - MIN(NUM_GRW_MOP_BK_R_OP_ACC   )  AS DIF_NUM_GRW_MOP_BK_R_OP_ACC   ,
MAX(NUM_GRW_MOP_BK_R         ) - MIN(NUM_GRW_MOP_BK_R          )  AS DIF_NUM_GRW_MOP_BK_R          ,
MAX(NUM_GRW_MOP_BK_CL_ACC    ) - MIN(NUM_GRW_MOP_BK_CL_ACC     )  AS DIF_NUM_GRW_MOP_BK_CL_ACC     ,
MAX(NUM_GRW_MOP_BK_OP_ACC    ) - MIN(NUM_GRW_MOP_BK_OP_ACC     )  AS DIF_NUM_GRW_MOP_BK_OP_ACC     ,
MAX(NUM_GRW_MOP_BK           ) - MIN(NUM_GRW_MOP_BK            )  AS DIF_NUM_GRW_MOP_BK            ,
MAX(NUM_GRW_MOP_NBK_AU_CL_ACC) - MIN(NUM_GRW_MOP_NBK_AU_CL_ACC )  AS DIF_NUM_GRW_MOP_NBK_AU_CL_ACC ,
MAX(NUM_GRW_MOP_NBK_AU_OP_ACC) - MIN(NUM_GRW_MOP_NBK_AU_OP_ACC )  AS DIF_NUM_GRW_MOP_NBK_AU_OP_ACC ,
MAX(NUM_GRW_MOP_NBK_AU       ) - MIN(NUM_GRW_MOP_NBK_AU        )  AS DIF_NUM_GRW_MOP_NBK_AU        ,
MAX(NUM_GRW_MOP_NBK_M_CL_ACC ) - MIN(NUM_GRW_MOP_NBK_M_CL_ACC  )  AS DIF_NUM_GRW_MOP_NBK_M_CL_ACC  ,
MAX(NUM_GRW_MOP_NBK_M_OP_ACC ) - MIN(NUM_GRW_MOP_NBK_M_OP_ACC  )  AS DIF_NUM_GRW_MOP_NBK_M_OP_ACC  ,
MAX(NUM_GRW_MOP_NBK_M        ) - MIN(NUM_GRW_MOP_NBK_M         )  AS DIF_NUM_GRW_MOP_NBK_M         ,
MAX(NUM_GRW_MOP_NBK_PL_CL_ACC) - MIN(NUM_GRW_MOP_NBK_PL_CL_ACC )  AS DIF_NUM_GRW_MOP_NBK_PL_CL_ACC ,
MAX(NUM_GRW_MOP_NBK_PL_OP_ACC) - MIN(NUM_GRW_MOP_NBK_PL_OP_ACC )  AS DIF_NUM_GRW_MOP_NBK_PL_OP_ACC ,
MAX(NUM_GRW_MOP_NBK_PL       ) - MIN(NUM_GRW_MOP_NBK_PL        )  AS DIF_NUM_GRW_MOP_NBK_PL        ,
MAX(NUM_GRW_MOP_NBK_R_CL_ACC ) - MIN(NUM_GRW_MOP_NBK_R_CL_ACC  )  AS DIF_NUM_GRW_MOP_NBK_R_CL_ACC  ,
MAX(NUM_GRW_MOP_NBK_R_OP_ACC ) - MIN(NUM_GRW_MOP_NBK_R_OP_ACC  )  AS DIF_NUM_GRW_MOP_NBK_R_OP_ACC  ,
MAX(NUM_GRW_MOP_NBK_R        ) - MIN(NUM_GRW_MOP_NBK_R         )  AS DIF_NUM_GRW_MOP_NBK_R         ,
MAX(NUM_GRW_MOP_NBK_CL_ACC   ) - MIN(NUM_GRW_MOP_NBK_CL_ACC    )  AS DIF_NUM_GRW_MOP_NBK_CL_ACC    ,
MAX(NUM_GRW_MOP_NBK_OP_ACC   ) - MIN(NUM_GRW_MOP_NBK_OP_ACC    )  AS DIF_NUM_GRW_MOP_NBK_OP_ACC    ,
MAX(NUM_GRW_MOP_NBK          ) - MIN(NUM_GRW_MOP_NBK           )  AS DIF_NUM_GRW_MOP_NBK           ,
MAX(NUM_GRW_MOP_AMX_CL_ACC   ) - MIN(NUM_GRW_MOP_AMX_CL_ACC    )  AS DIF_NUM_GRW_MOP_AMX_CL_ACC    ,
MAX(NUM_GRW_MOP_AMX_OP_ACC   ) - MIN(NUM_GRW_MOP_AMX_OP_ACC    )  AS DIF_NUM_GRW_MOP_AMX_OP_ACC    ,
MAX(NUM_GRW_MOP_AMX          ) - MIN(NUM_GRW_MOP_AMX           )  AS DIF_NUM_GRW_MOP_AMX           ,
MAX(NUM_GRW_MOP_AU_CL_ACC    ) - MIN(NUM_GRW_MOP_AU_CL_ACC     )  AS DIF_NUM_GRW_MOP_AU_CL_ACC     ,
MAX(NUM_GRW_MOP_AU_OP_ACC    ) - MIN(NUM_GRW_MOP_AU_OP_ACC     )  AS DIF_NUM_GRW_MOP_AU_OP_ACC     ,
MAX(NUM_GRW_MOP_AU           ) - MIN(NUM_GRW_MOP_AU            )  AS DIF_NUM_GRW_MOP_AU            ,
MAX(NUM_GRW_MOP_M_CL_ACC     ) - MIN(NUM_GRW_MOP_M_CL_ACC      )  AS DIF_NUM_GRW_MOP_M_CL_ACC      ,
MAX(NUM_GRW_MOP_M_OP_ACC     ) - MIN(NUM_GRW_MOP_M_OP_ACC      )  AS DIF_NUM_GRW_MOP_M_OP_ACC      ,
MAX(NUM_GRW_MOP_M            ) - MIN(NUM_GRW_MOP_M             )  AS DIF_NUM_GRW_MOP_M             ,
MAX(NUM_GRW_MOP_PL_CL_ACC    ) - MIN(NUM_GRW_MOP_PL_CL_ACC     )  AS DIF_NUM_GRW_MOP_PL_CL_ACC     ,
MAX(NUM_GRW_MOP_PL_OP_ACC    ) - MIN(NUM_GRW_MOP_PL_OP_ACC     )  AS DIF_NUM_GRW_MOP_PL_OP_ACC     ,
MAX(NUM_GRW_MOP_PL           ) - MIN(NUM_GRW_MOP_PL            )  AS DIF_NUM_GRW_MOP_PL            ,
MAX(NUM_GRW_MOP_R_CL_ACC     ) - MIN(NUM_GRW_MOP_R_CL_ACC      )  AS DIF_NUM_GRW_MOP_R_CL_ACC      ,
MAX(NUM_GRW_MOP_R_OP_ACC     ) - MIN(NUM_GRW_MOP_R_OP_ACC      )  AS DIF_NUM_GRW_MOP_R_OP_ACC      ,
MAX(NUM_GRW_MOP_R            ) - MIN(NUM_GRW_MOP_R             )  AS DIF_NUM_GRW_MOP_R             ,
MAX(NUM_GRW_MOP_CL_ACC       ) - MIN(NUM_GRW_MOP_CL_ACC        )  AS DIF_NUM_GRW_MOP_CL_ACC        ,
MAX(NUM_GRW_MOP_OP_ACC       ) - MIN(NUM_GRW_MOP_OP_ACC        )  AS DIF_NUM_GRW_MOP_OP_ACC        ,

SUM(NUM_GRW_MOP_BK_AU_CL_ACC ) AS SUM_NUM_GRW_MOP_BK_AU_CL_ACC    ,
SUM(NUM_GRW_MOP_BK_AU_OP_ACC ) AS SUM_NUM_GRW_MOP_BK_AU_OP_ACC    ,
SUM(NUM_GRW_MOP_BK_AU        ) AS SUM_NUM_GRW_MOP_BK_AU           ,
SUM(NUM_GRW_MOP_BK_M_CL_ACC  ) AS SUM_NUM_GRW_MOP_BK_M_CL_ACC     ,
SUM(NUM_GRW_MOP_BK_M_OP_ACC  ) AS SUM_NUM_GRW_MOP_BK_M_OP_ACC     ,
SUM(NUM_GRW_MOP_BK_M         ) AS SUM_NUM_GRW_MOP_BK_M            ,
SUM(NUM_GRW_MOP_BK_PL_CL_ACC ) AS SUM_NUM_GRW_MOP_BK_PL_CL_ACC    ,
SUM(NUM_GRW_MOP_BK_PL_OP_ACC ) AS SUM_NUM_GRW_MOP_BK_PL_OP_ACC    ,
SUM(NUM_GRW_MOP_BK_PL        ) AS SUM_NUM_GRW_MOP_BK_PL           ,
SUM(NUM_GRW_MOP_BK_R_CL_ACC  ) AS SUM_NUM_GRW_MOP_BK_R_CL_ACC     ,
SUM(NUM_GRW_MOP_BK_R_OP_ACC  ) AS SUM_NUM_GRW_MOP_BK_R_OP_ACC     ,
SUM(NUM_GRW_MOP_BK_R         ) AS SUM_NUM_GRW_MOP_BK_R            ,
SUM(NUM_GRW_MOP_BK_CL_ACC    ) AS SUM_NUM_GRW_MOP_BK_CL_ACC       ,
SUM(NUM_GRW_MOP_BK_OP_ACC    ) AS SUM_NUM_GRW_MOP_BK_OP_ACC       ,
SUM(NUM_GRW_MOP_BK           ) AS SUM_NUM_GRW_MOP_BK              ,
SUM(NUM_GRW_MOP_NBK_AU_CL_ACC) AS SUM_NUM_GRW_MOP_NBK_AU_CL_ACC   ,
SUM(NUM_GRW_MOP_NBK_AU_OP_ACC) AS SUM_NUM_GRW_MOP_NBK_AU_OP_ACC   ,
SUM(NUM_GRW_MOP_NBK_AU       ) AS SUM_NUM_GRW_MOP_NBK_AU          ,
SUM(NUM_GRW_MOP_NBK_M_CL_ACC ) AS SUM_NUM_GRW_MOP_NBK_M_CL_ACC    ,
SUM(NUM_GRW_MOP_NBK_M_OP_ACC ) AS SUM_NUM_GRW_MOP_NBK_M_OP_ACC    ,
SUM(NUM_GRW_MOP_NBK_M        ) AS SUM_NUM_GRW_MOP_NBK_M           ,
SUM(NUM_GRW_MOP_NBK_PL_CL_ACC) AS SUM_NUM_GRW_MOP_NBK_PL_CL_ACC   ,
SUM(NUM_GRW_MOP_NBK_PL_OP_ACC) AS SUM_NUM_GRW_MOP_NBK_PL_OP_ACC   ,
SUM(NUM_GRW_MOP_NBK_PL       ) AS SUM_NUM_GRW_MOP_NBK_PL          ,
SUM(NUM_GRW_MOP_NBK_R_CL_ACC ) AS SUM_NUM_GRW_MOP_NBK_R_CL_ACC    ,
SUM(NUM_GRW_MOP_NBK_R_OP_ACC ) AS SUM_NUM_GRW_MOP_NBK_R_OP_ACC    ,
SUM(NUM_GRW_MOP_NBK_R        ) AS SUM_NUM_GRW_MOP_NBK_R           ,
SUM(NUM_GRW_MOP_NBK_CL_ACC   ) AS SUM_NUM_GRW_MOP_NBK_CL_ACC      ,
SUM(NUM_GRW_MOP_NBK_OP_ACC   ) AS SUM_NUM_GRW_MOP_NBK_OP_ACC      ,
SUM(NUM_GRW_MOP_NBK          ) AS SUM_NUM_GRW_MOP_NBK             ,
SUM(NUM_GRW_MOP_AMX_CL_ACC   ) AS SUM_NUM_GRW_MOP_AMX_CL_ACC      ,
SUM(NUM_GRW_MOP_AMX_OP_ACC   ) AS SUM_NUM_GRW_MOP_AMX_OP_ACC      ,
SUM(NUM_GRW_MOP_AMX          ) AS SUM_NUM_GRW_MOP_AMX             ,
SUM(NUM_GRW_MOP_AU_CL_ACC    ) AS SUM_NUM_GRW_MOP_AU_CL_ACC       ,
SUM(NUM_GRW_MOP_AU_OP_ACC    ) AS SUM_NUM_GRW_MOP_AU_OP_ACC       ,
SUM(NUM_GRW_MOP_AU           ) AS SUM_NUM_GRW_MOP_AU              ,
SUM(NUM_GRW_MOP_M_CL_ACC     ) AS SUM_NUM_GRW_MOP_M_CL_ACC        ,
SUM(NUM_GRW_MOP_M_OP_ACC     ) AS SUM_NUM_GRW_MOP_M_OP_ACC        ,
SUM(NUM_GRW_MOP_M            ) AS SUM_NUM_GRW_MOP_M               ,
SUM(NUM_GRW_MOP_PL_CL_ACC    ) AS SUM_NUM_GRW_MOP_PL_CL_ACC       ,
SUM(NUM_GRW_MOP_PL_OP_ACC    ) AS SUM_NUM_GRW_MOP_PL_OP_ACC       ,
SUM(NUM_GRW_MOP_PL           ) AS SUM_NUM_GRW_MOP_PL              ,
SUM(NUM_GRW_MOP_R_CL_ACC     ) AS SUM_NUM_GRW_MOP_R_CL_ACC        ,
SUM(NUM_GRW_MOP_R_OP_ACC     ) AS SUM_NUM_GRW_MOP_R_OP_ACC        ,
SUM(NUM_GRW_MOP_R            ) AS SUM_NUM_GRW_MOP_R               ,
SUM(NUM_GRW_MOP_CL_ACC       ) AS SUM_NUM_GRW_MOP_CL_ACC          ,
SUM(NUM_GRW_MOP_OP_ACC       ) AS SUM_NUM_GRW_MOP_OP_ACC          ,

--  COMUNICACIONES Y SERVICIOS

COUNT(NUM_GRW_MOP_TU_ALL        ) AS NUM_NUM_GRW_MOP_TU_ALL        ,
COUNT(NUM_GRW_MOP_TU            ) AS NUM_NUM_GRW_MOP_TU            ,
COUNT(NUM_GRW_MOP_TU_ALL_OP_ACC ) AS NUM_NUM_GRW_MOP_TU_ALL_OP_ACC ,
COUNT(NUM_GRW_MOP_TU_OP_ACC     ) AS NUM_NUM_GRW_MOP_TU_OP_ACC     ,
COUNT(NUM_GRW_MOP_TU_ALL_CL_ACC ) AS NUM_NUM_GRW_MOP_TU_ALL_CL_ACC ,
COUNT(NUM_GRW_MOP_TU_CL_ACC     ) AS NUM_NUM_GRW_MOP_TU_CL_ACC     ,
COUNT(NUM_GRW_MOP_NBK_TU        ) AS NUM_NUM_GRW_MOP_NBK_TU        ,
COUNT(NUM_GRW_MOP_NBK_TU_OP_ACC ) AS NUM_NUM_GRW_MOP_NBK_TU_OP_ACC ,
COUNT(NUM_GRW_MOP_NBK_TU_CL_ACC ) AS NUM_NUM_GRW_MOP_NBK_TU_CL_ACC ,

MAX(NUM_GRW_MOP_TU_ALL        ) AS MAX_NUM_GRW_MOP_TU_ALL        ,
MAX(NUM_GRW_MOP_TU            ) AS MAX_NUM_GRW_MOP_TU            ,
MAX(NUM_GRW_MOP_TU_ALL_OP_ACC ) AS MAX_NUM_GRW_MOP_TU_ALL_OP_ACC ,
MAX(NUM_GRW_MOP_TU_OP_ACC     ) AS MAX_NUM_GRW_MOP_TU_OP_ACC     ,
MAX(NUM_GRW_MOP_TU_ALL_CL_ACC ) AS MAX_NUM_GRW_MOP_TU_ALL_CL_ACC ,
MAX(NUM_GRW_MOP_TU_CL_ACC     ) AS MAX_NUM_GRW_MOP_TU_CL_ACC     ,
MAX(NUM_GRW_MOP_NBK_TU        ) AS MAX_NUM_GRW_MOP_NBK_TU        ,
MAX(NUM_GRW_MOP_NBK_TU_OP_ACC ) AS MAX_NUM_GRW_MOP_NBK_TU_OP_ACC ,
MAX(NUM_GRW_MOP_NBK_TU_CL_ACC ) AS MAX_NUM_GRW_MOP_NBK_TU_CL_ACC ,

MIN(NUM_GRW_MOP_TU_ALL        ) AS MIN_NUM_GRW_MOP_TU_ALL        ,
MIN(NUM_GRW_MOP_TU            ) AS MIN_NUM_GRW_MOP_TU            ,
MIN(NUM_GRW_MOP_TU_ALL_OP_ACC ) AS MIN_NUM_GRW_MOP_TU_ALL_OP_ACC ,
MIN(NUM_GRW_MOP_TU_OP_ACC     ) AS MIN_NUM_GRW_MOP_TU_OP_ACC     ,
MIN(NUM_GRW_MOP_TU_ALL_CL_ACC ) AS MIN_NUM_GRW_MOP_TU_ALL_CL_ACC ,
MIN(NUM_GRW_MOP_TU_CL_ACC     ) AS MIN_NUM_GRW_MOP_TU_CL_ACC     ,
MIN(NUM_GRW_MOP_NBK_TU        ) AS MIN_NUM_GRW_MOP_NBK_TU        ,
MIN(NUM_GRW_MOP_NBK_TU_OP_ACC ) AS MIN_NUM_GRW_MOP_NBK_TU_OP_ACC ,
MIN(NUM_GRW_MOP_NBK_TU_CL_ACC ) AS MIN_NUM_GRW_MOP_NBK_TU_CL_ACC ,

MAX(NUM_GRW_MOP_TU_ALL        ) - MIN(NUM_GRW_MOP_TU_ALL       ) AS  DIF_NUM_GRW_MOP_TU_ALL        ,
MAX(NUM_GRW_MOP_TU            ) - MIN(NUM_GRW_MOP_TU           ) AS  DIF_NUM_GRW_MOP_TU            ,
MAX(NUM_GRW_MOP_TU_ALL_OP_ACC ) - MIN(NUM_GRW_MOP_TU_ALL_OP_ACC) AS  DIF_NUM_GRW_MOP_TU_ALL_OP_ACC ,
MAX(NUM_GRW_MOP_TU_OP_ACC     ) - MIN(NUM_GRW_MOP_TU_OP_ACC    ) AS  DIF_NUM_GRW_MOP_TU_OP_ACC     ,
MAX(NUM_GRW_MOP_TU_ALL_CL_ACC ) - MIN(NUM_GRW_MOP_TU_ALL_CL_ACC) AS  DIF_NUM_GRW_MOP_TU_ALL_CL_ACC ,
MAX(NUM_GRW_MOP_TU_CL_ACC     ) - MIN(NUM_GRW_MOP_TU_CL_ACC    ) AS  DIF_NUM_GRW_MOP_TU_CL_ACC     ,
MAX(NUM_GRW_MOP_NBK_TU        ) - MIN(NUM_GRW_MOP_NBK_TU       ) AS  DIF_NUM_GRW_MOP_NBK_TU        ,
MAX(NUM_GRW_MOP_NBK_TU_OP_ACC ) - MIN(NUM_GRW_MOP_NBK_TU_OP_ACC) AS  DIF_NUM_GRW_MOP_NBK_TU_OP_ACC ,
MAX(NUM_GRW_MOP_NBK_TU_CL_ACC ) - MIN(NUM_GRW_MOP_NBK_TU_CL_ACC) AS  DIF_NUM_GRW_MOP_NBK_TU_CL_ACC ,
	
SUM(NUM_GRW_MOP_TU_ALL        )  AS SUM_NUM_GRW_MOP_TU_ALL        ,
SUM(NUM_GRW_MOP_TU            )  AS SUM_NUM_GRW_MOP_TU            ,
SUM(NUM_GRW_MOP_TU_ALL_OP_ACC )  AS SUM_NUM_GRW_MOP_TU_ALL_OP_ACC ,
SUM(NUM_GRW_MOP_TU_OP_ACC     )  AS SUM_NUM_GRW_MOP_TU_OP_ACC     ,
SUM(NUM_GRW_MOP_TU_ALL_CL_ACC )  AS SUM_NUM_GRW_MOP_TU_ALL_CL_ACC ,
SUM(NUM_GRW_MOP_TU_CL_ACC     )  AS SUM_NUM_GRW_MOP_TU_CL_ACC     ,
SUM(NUM_GRW_MOP_NBK_TU        )  AS SUM_NUM_GRW_MOP_NBK_TU        ,-- NUM_GRW_MOP_BK_AU_CL_ACC
SUM(NUM_GRW_MOP_NBK_TU_CL_ACC )  AS SUM_NUM_GRW_MOP_NBK_TU_CL_ACC ,
SUM(NUM_GRW_MOP_NBK_TU_OP_ACC )  AS SUM_NUM_GRW_MOP_NBK_TU_OP_ACC ,

AVG(NUM_GRW_MOP_TU_ALL        ) AS AVG_NUM_GRW_MOP_TU_ALL        ,
AVG(NUM_GRW_MOP_TU            ) AS AVG_NUM_GRW_MOP_TU            ,
AVG(NUM_GRW_MOP_TU_ALL_OP_ACC ) AS AVG_NUM_GRW_MOP_TU_ALL_OP_ACC ,
AVG(NUM_GRW_MOP_TU_OP_ACC     ) AS AVG_NUM_GRW_MOP_TU_OP_ACC     ,
AVG(NUM_GRW_MOP_TU_ALL_CL_ACC ) AS AVG_NUM_GRW_MOP_TU_ALL_CL_ACC ,
AVG(NUM_GRW_MOP_TU_CL_ACC     ) AS AVG_NUM_GRW_MOP_TU_CL_ACC     ,
AVG(NUM_GRW_MOP_NBK_TU        ) AS AVG_NUM_GRW_MOP_NBK_TU        ,
AVG(NUM_GRW_MOP_NBK_TU_OP_ACC ) AS AVG_NUM_GRW_MOP_NBK_TU_OP_ACC ,
AVG(NUM_GRW_MOP_NBK_TU_CL_ACC ) AS AVG_NUM_GRW_MOP_NBK_TU_CL_ACC 

FROM dbmymwork.BTDC_LGG_VAR_SEGMENTADAS_3
GROUP BY 
CUENTADEREFERENCIA,
FECHA_CARTERA
;

SELECT * FROM dbmymwork.BTDC_LGG_VAR_NUM_GRW_MOP LIMIT 100;