DROP TABLE IF EXISTS 
    DBMYMWORK.JEA_MCV_UNIVERSO_VARIABLES;

CREATE TABLE IF NOT EXISTS
    DBMYMWORK.JEA_MCV_UNIVERSO_VARIABLES AS

SELECT
  A.*,
  B.CUR_CRED_LIM,
  B.MAX_CRED_LIM_03M,
  B.MIN_CRED_LIM_03M,
  B.AVG_PND_MENOS_CRED_LIM_03M,
  B.AVG_PND_MAS_CRED_LIM_03M,
  B.AVG_CRED_LIM_03M,
  B.MAX_CRED_LIM_06M,
  B.MIN_CRED_LIM_06M,
  B.AVG_PND_MENOS_CRED_LIM_06M,
  B.AVG_PND_MAS_CRED_LIM_06M,
  B.AVG_CRED_LIM_06M,
  B.MAX_CRED_LIM_12M,
  B.MIN_CRED_LIM_12M,
  B.AVG_PND_MENOS_CRED_LIM_12M,
  B.AVG_PND_MAS_CRED_LIM_12M,
  B.AVG_CRED_LIM_12M,
  C.CUR_BAL,
  C.MAX_BAL_03M,
  C.MIN_BAL_03M,
  C.AVG_PND_MENOS_BAL_03M,
  C.AVG_PND_MAS_BAL_03M,
  C.AVG_BAL_03M,
  C.MAX_BAL_06M,
  C.MIN_BAL_06M,
  C.AVG_PND_MENOS_BAL_06M,
  C.AVG_PND_MAS_BAL_06M,
  C.AVG_BAL_06M,
  C.MAX_BAL_12M,
  C.MIN_BAL_12M,
  C.AVG_PND_MENOS_BAL_12M,
  C.AVG_PND_MAS_BAL_12M,
  C.AVG_BAL_12M,
  D.R_BAL_BY_CRED_LIM,
  D.MAX_R_BAL_BY_CRED_LIM_03M,
  D.MIN_R_BAL_BY_CRED_LIM_03M,
  D.AVG_PND_MENOS_R_BAL_BY_CRED_LIM_03M,
  D.AVG_PND_MAS_R_BAL_BY_CRED_LIM_03M,
  D.AVG_R_BAL_BY_CRED_LIM_03M,
  D.MAX_R_BAL_BY_CRED_LIM_06M,
  D.MIN_R_BAL_BY_CRED_LIM_06M,
  D.AVG_PND_MENOS_R_BAL_BY_CRED_LIM_06M,
  D.AVG_PND_MAS_R_BAL_BY_CRED_LIM_06M,
  D.AVG_R_BAL_BY_CRED_LIM_06M,
  D.MAX_R_BAL_BY_CRED_LIM_12M,
  D.MIN_R_BAL_BY_CRED_LIM_12M,
  D.AVG_PND_MENOS_R_BAL_BY_CRED_LIM_12M,
  D.AVG_PND_MAS_R_BAL_BY_CRED_LIM_12M,
  D.AVG_R_BAL_BY_CRED_LIM_12M,
  E.D_CRED_LIM_TO_BAL,
  E.MAX_D_CRED_LIM_TO_BAL_03M,
  E.MIN_D_CRED_LIM_TO_BAL_03M,
  E.AVG_PND_MENOS_D_CRED_LIM_TO_BAL_03M,
  E.AVG_PND_MAS_D_CRED_LIM_TO_BAL_03M,
  E.AVG_D_CRED_LIM_TO_BAL_03M,
  E.MAX_D_CRED_LIM_TO_BAL_06M,
  E.MIN_D_CRED_LIM_TO_BAL_06M,
  E.AVG_PND_MENOS_D_CRED_LIM_TO_BAL_06M,
  E.AVG_PND_MAS_D_CRED_LIM_TO_BAL_06M,
  E.AVG_D_CRED_LIM_TO_BAL_06M,
  E.MAX_D_CRED_LIM_TO_BAL_12M,
  E.MIN_D_CRED_LIM_TO_BAL_12M,
  E.AVG_PND_MENOS_D_CRED_LIM_TO_BAL_12M,
  E.AVG_PND_MAS_D_CRED_LIM_TO_BAL_12M,
  E.AVG_D_CRED_LIM_TO_BAL_12M,
  F.R_BAL_BY_MAX_BAL,
  F.MAX_R_BAL_BY_MAX_BAL_03M,
  F.MIN_R_BAL_BY_MAX_BAL_03M,
  F.AVG_PND_MENOS_R_BAL_BY_MAX_BAL_03M,
  F.AVG_PND_MAS_R_BAL_BY_MAX_BAL_03M,
  F.AVG_R_BAL_BY_MAX_BAL_03M,
  F.MAX_R_BAL_BY_MAX_BAL_06M,
  F.MIN_R_BAL_BY_MAX_BAL_06M,
  F.AVG_PND_MENOS_R_BAL_BY_MAX_BAL_06M,
  F.AVG_PND_MAS_R_BAL_BY_MAX_BAL_06M,
  F.AVG_R_BAL_BY_MAX_BAL_06M,
  F.MAX_R_BAL_BY_MAX_BAL_12M,
  F.MIN_R_BAL_BY_MAX_BAL_12M,
  F.AVG_PND_MENOS_R_BAL_BY_MAX_BAL_12M,
  F.AVG_PND_MAS_R_BAL_BY_MAX_BAL_12M,
  F.AVG_R_BAL_BY_MAX_BAL_12M,
  G.MS_OP,
  G.DIACARTERA,
  G.FECHA_LASTCARTERA,
  G.FECHAVENCIMIENTOACTUAL_GNRL,
  G.DS_CL,
  G.FECHAVENCIMIENTOACTUAL_OR,
  G.DS_OL_CL 
FROM DBMYMWORK.JEA_MCV_UNIVERSO_BANDERAS_LABELS A
LEFT JOIN DBMYMWORK.LGG_MCV_CRED_LIM B
ON A.LLAVE_UNIVERSAL_20 = B.LLAVE_UNIVERSAL_20 AND A.FECHACARTERA = B.FECHACARTERA
LEFT JOIN DBMYMWORK.LGG_MCV_BAL C
ON A.LLAVE_UNIVERSAL_20 = C.LLAVE_UNIVERSAL_20 AND A.FECHACARTERA = C.FECHACARTERA
LEFT JOIN DBMYMWORK.LGG_MCV_R_BAL_BY_CRED_LIM D
ON A.LLAVE_UNIVERSAL_20 = D.LLAVE_UNIVERSAL_20 AND A.FECHACARTERA = D.FECHACARTERA
LEFT JOIN DBMYMWORK.LGG_MCV_D_CRED_LIM_TO_BAL E
ON A.LLAVE_UNIVERSAL_20 = E.LLAVE_UNIVERSAL_20 AND A.FECHACARTERA = E.FECHACARTERA
LEFT JOIN DBMYMWORK.LGG_MCV_R_BAL_BY_MAX_BAL F
ON A.LLAVE_UNIVERSAL_20 = F.LLAVE_UNIVERSAL_20 AND A.FECHACARTERA = F.FECHACARTERA
LEFT JOIN DBMYMWORK.LGG_MCV_MOV_LIN G
ON A.LLAVE_UNIVERSAL_20 = G.LLAVE_UNIVERSAL_20 AND A.FECHACARTERA = G.FECHACARTERA;

CREATE INDEX DBMYMWORK_JEA_MCV_UNIVERSO_VARIABLES_LLAVE_UNIVERSAL_20_IDX 
ON DBMYMWORK.JEA_MCV_UNIVERSO_VARIABLES (LLAVE_UNIVERSAL_20);

CREATE INDEX DBMYMWORK_JEA_MCV_UNIVERSO_VARIABLES_RFC_IDX 
ON DBMYMWORK.JEA_MCV_UNIVERSO_VARIABLES (RFC);

CREATE INDEX DBMYMWORK_JEA_MCV_UNIVERSO_VARIABLES_FECHACARTERA_IDX 
ON DBMYMWORK.JEA_MCV_UNIVERSO_VARIABLES (FECHACARTERA);

