%hive
DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_VAR_HI_AGO;

CREATE TABLE  RSS_MCV_NEGOCIOS_VAR_HI_AGO
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 

LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Agosto/RSS_MCV_NEGOCIOS_VAR_HI_AGO' AS
SELECT
'fecha' AS fecha,
'rfc' as rfc ,  
'max_venc29_03m' AS max_venc29_03m,
'max_venc29_06m' AS max_venc29_06m,
'max_venc29_12m' AS max_venc29_12m,
'min_venc29_03m' AS min_venc29_03m,
'min_venc29_06m' AS min_venc29_06m,
'min_venc29_12m' AS min_venc29_12m,
'avg_venc29_03m' AS avg_venc29_03m,
'avg_venc29_06m' AS avg_venc29_06m,
'avg_venc29_12m' AS avg_venc29_12m,
'avg_pnd_menos_venc29_03m' AS avg_pnd_menos_venc29_03m,
'avg_pnd_menos_venc29_06m' AS avg_pnd_menos_venc29_06m,
'avg_pnd_menos_venc29_12m' AS avg_pnd_menos_venc29_12m,
'avg_pnd_mas_venc29_03m' AS avg_pnd_mas_venc29_03m,
'avg_pnd_mas_venc29_06m' AS avg_pnd_mas_venc29_06m,
'avg_pnd_mas_venc29_12m' AS avg_pnd_mas_venc29_12m,
'num_venc29_03m' AS num_venc29_03m,
'num_venc29_06m' AS num_venc29_06m,
'num_venc29_12m' AS num_venc29_12m,
'max_venc59_03m' AS max_venc59_03m,
'max_venc59_06m' AS max_venc59_06m,
'max_venc59_12m' AS max_venc59_12m,
'min_venc59_03m' AS min_venc59_03m,
'min_venc59_06m' AS min_venc59_06m,
'min_venc59_12m' AS min_venc59_12m,
'avg_venc59_03m' AS avg_venc59_03m,
'avg_venc59_06m' AS avg_venc59_06m,
'avg_venc59_12m' AS avg_venc59_12m,
'avg_pnd_menos_venc59_03m' AS avg_pnd_menos_venc59_03m,
'avg_pnd_menos_venc59_06m' AS avg_pnd_menos_venc59_06m,
'avg_pnd_menos_venc59_12m' AS avg_pnd_menos_venc59_12m,
'avg_pnd_mas_venc59_03m' AS avg_pnd_mas_venc59_03m,
'avg_pnd_mas_venc59_06m' AS avg_pnd_mas_venc59_06m,
'avg_pnd_mas_venc59_12m' AS avg_pnd_mas_venc59_12m,
'num_venc59_03m' AS num_venc59_03m,
'num_venc59_06m' AS num_venc59_06m,
'num_venc59_12m' AS num_venc59_12m,
'max_venc89_03m' AS max_venc89_03m,
'max_venc89_06m' AS max_venc89_06m,
'max_venc89_12m' AS max_venc89_12m,
'min_venc89_03m' AS min_venc89_03m,
'min_venc89_06m' AS min_venc89_06m,
'min_venc89_12m' AS min_venc89_12m,
'avg_venc89_03m' AS avg_venc89_03m,
'avg_venc89_06m' AS avg_venc89_06m,
'avg_venc89_12m' AS avg_venc89_12m,
'avg_pnd_menos_venc89_03m' AS avg_pnd_menos_venc89_03m,
'avg_pnd_menos_venc89_06m' AS avg_pnd_menos_venc89_06m,
'avg_pnd_menos_venc89_12m' AS avg_pnd_menos_venc89_12m,
'avg_pnd_mas_venc89_03m' AS avg_pnd_mas_venc89_03m,
'avg_pnd_mas_venc89_06m' AS avg_pnd_mas_venc89_06m,
'avg_pnd_mas_venc89_12m' AS avg_pnd_mas_venc89_12m,
'num_venc89_03m' AS num_venc89_03m,
'num_venc89_06m' AS num_venc89_06m,
'num_venc89_12m' AS num_venc89_12m,
'max_venc90m_03m' AS max_venc90m_03m,
'max_venc90m_06m' AS max_venc90m_06m,
'max_venc90m_12m' AS max_venc90m_12m,
'min_venc90m_03m' AS min_venc90m_03m,
'min_venc90m_06m' AS min_venc90m_06m,
'min_venc90m_12m' AS min_venc90m_12m,
'avg_venc90m_03m' AS avg_venc90m_03m,
'avg_venc90m_06m' AS avg_venc90m_06m,
'avg_venc90m_12m' AS avg_venc90m_12m,
'avg_pnd_menos_venc90m_03m' AS avg_pnd_menos_venc90m_03m,
'avg_pnd_menos_venc90m_06m' AS avg_pnd_menos_venc90m_06m,
'avg_pnd_menos_venc90m_12m' AS avg_pnd_menos_venc90m_12m,
'avg_pnd_mas_venc90m_03m' AS avg_pnd_mas_venc90m_03m,
'avg_pnd_mas_venc90m_06m' AS avg_pnd_mas_venc90m_06m,
'avg_pnd_mas_venc90m_12m' AS avg_pnd_mas_venc90m_12m,
'num_venc90m_03m' AS num_venc90m_03m,
'num_venc90m_06m' AS num_venc90m_06m,
'num_venc90m_12m' AS num_venc90m_12m,
'max_vigenteh_03m' AS max_vigenteh_03m,
'max_vigenteh_06m' AS max_vigenteh_06m,
'max_vigenteh_12m' AS max_vigenteh_12m,
'min_vigenteh_03m' AS min_vigenteh_03m,
'min_vigenteh_06m' AS min_vigenteh_06m,
'min_vigenteh_12m' AS min_vigenteh_12m,
'avg_vigenteh_03m' AS avg_vigenteh_03m,
'avg_vigenteh_06m' AS avg_vigenteh_06m,
'avg_vigenteh_12m' AS avg_vigenteh_12m,
'avg_pnd_menos_vigenteh_03m' AS avg_pnd_menos_vigenteh_03m,
'avg_pnd_menos_vigenteh_06m' AS avg_pnd_menos_vigenteh_06m,
'avg_pnd_menos_vigenteh_12m' AS avg_pnd_menos_vigenteh_12m,
'avg_pnd_mas_vigenteh_03m' AS avg_pnd_mas_vigenteh_03m,
'avg_pnd_mas_vigenteh_06m' AS avg_pnd_mas_vigenteh_06m,
'avg_pnd_mas_vigenteh_12m' AS avg_pnd_mas_vigenteh_12m,
'num_vigenteh_03m' AS num_vigenteh_03m,
'num_vigenteh_06m' AS num_vigenteh_06m,
'num_vigenteh_12m' AS num_vigenteh_12m,
'max_pct_venc29_03m' AS max_pct_venc29_03m,
'max_pct_venc29_06m' AS max_pct_venc29_06m,
'max_pct_venc29_12m' AS max_pct_venc29_12m,
'min_pct_venc29_03m' AS min_pct_venc29_03m,
'min_pct_venc29_06m' AS min_pct_venc29_06m,
'min_pct_venc29_12m' AS min_pct_venc29_12m,
'avg_pct_venc29_03m' AS avg_pct_venc29_03m,
'avg_pct_venc29_06m' AS avg_pct_venc29_06m,
'avg_pct_venc29_12m' AS avg_pct_venc29_12m,
'avg_pnd_menos_pct_venc29_03m' AS avg_pnd_menos_pct_venc29_03m,
'avg_pnd_menos_pct_venc29_06m' AS avg_pnd_menos_pct_venc29_06m,
'avg_pnd_menos_pct_venc29_12m' AS avg_pnd_menos_pct_venc29_12m,
'avg_pnd_mas_pct_venc29_03m' AS avg_pnd_mas_pct_venc29_03m,
'avg_pnd_mas_pct_venc29_06m' AS avg_pnd_mas_pct_venc29_06m,
'avg_pnd_mas_pct_venc29_12m' AS avg_pnd_mas_pct_venc29_12m,
'num_pct_venc29_03m' AS num_pct_venc29_03m,
'num_pct_venc29_06m' AS num_pct_venc29_06m,
'num_pct_venc29_12m' AS num_pct_venc29_12m,
'max_pct_venc59_03m' AS max_pct_venc59_03m,
'max_pct_venc59_06m' AS max_pct_venc59_06m,
'max_pct_venc59_12m' AS max_pct_venc59_12m,
'min_pct_venc59_03m' AS min_pct_venc59_03m,
'min_pct_venc59_06m' AS min_pct_venc59_06m,
'min_pct_venc59_12m' AS min_pct_venc59_12m,
'avg_pct_venc59_03m' AS avg_pct_venc59_03m,
'avg_pct_venc59_06m' AS avg_pct_venc59_06m,
'avg_pct_venc59_12m' AS avg_pct_venc59_12m,
'avg_pnd_menos_pct_venc59_03m' AS avg_pnd_menos_pct_venc59_03m,
'avg_pnd_menos_pct_venc59_06m' AS avg_pnd_menos_pct_venc59_06m,
'avg_pnd_menos_pct_venc59_12m' AS avg_pnd_menos_pct_venc59_12m,
'avg_pnd_mas_pct_venc59_03m' AS avg_pnd_mas_pct_venc59_03m,
'avg_pnd_mas_pct_venc59_06m' AS avg_pnd_mas_pct_venc59_06m,
'avg_pnd_mas_pct_venc59_12m' AS avg_pnd_mas_pct_venc59_12m,
'num_pct_venc59_03m' AS num_pct_venc59_03m,
'num_pct_venc59_06m' AS num_pct_venc59_06m,
'num_pct_venc59_12m' AS num_pct_venc59_12m,
'max_pct_venc89_03m' AS max_pct_venc89_03m,
'max_pct_venc89_06m' AS max_pct_venc89_06m,
'max_pct_venc89_12m' AS max_pct_venc89_12m,
'min_pct_venc89_03m' AS min_pct_venc89_03m,
'min_pct_venc89_06m' AS min_pct_venc89_06m,
'min_pct_venc89_12m' AS min_pct_venc89_12m,
'avg_pct_venc89_03m' AS avg_pct_venc89_03m,
'avg_pct_venc89_06m' AS avg_pct_venc89_06m,
'avg_pct_venc89_12m' AS avg_pct_venc89_12m,
'avg_pnd_menos_pct_venc89_03m' AS avg_pnd_menos_pct_venc89_03m,
'avg_pnd_menos_pct_venc89_06m' AS avg_pnd_menos_pct_venc89_06m,
'avg_pnd_menos_pct_venc89_12m' AS avg_pnd_menos_pct_venc89_12m,
'avg_pnd_mas_pct_venc89_03m' AS avg_pnd_mas_pct_venc89_03m,
'avg_pnd_mas_pct_venc89_06m' AS avg_pnd_mas_pct_venc89_06m,
'avg_pnd_mas_pct_venc89_12m' AS avg_pnd_mas_pct_venc89_12m,
'num_pct_venc89_03m' AS num_pct_venc89_03m,
'num_pct_venc89_06m' AS num_pct_venc89_06m,
'num_pct_venc89_12m' AS num_pct_venc89_12m,
'max_pct_venc90m_03m' AS max_pct_venc90m_03m,
'max_pct_venc90m_06m' AS max_pct_venc90m_06m,
'max_pct_venc90m_12m' AS max_pct_venc90m_12m,
'min_pct_venc90m_03m' AS min_pct_venc90m_03m,
'min_pct_venc90m_06m' AS min_pct_venc90m_06m,
'min_pct_venc90m_12m' AS min_pct_venc90m_12m,
'avg_pct_venc90m_03m' AS avg_pct_venc90m_03m,
'avg_pct_venc90m_06m' AS avg_pct_venc90m_06m,
'avg_pct_venc90m_12m' AS avg_pct_venc90m_12m,
'avg_pnd_menos_pct_venc90m_03m' AS avg_pnd_menos_pct_venc90m_03m,
'avg_pnd_menos_pct_venc90m_06m' AS avg_pnd_menos_pct_venc90m_06m,
'avg_pnd_menos_pct_venc90m_12m' AS avg_pnd_menos_pct_venc90m_12m,
'avg_pnd_mas_pct_venc90m_03m' AS avg_pnd_mas_pct_venc90m_03m,
'avg_pnd_mas_pct_venc90m_06m' AS avg_pnd_mas_pct_venc90m_06m,
'avg_pnd_mas_pct_venc90m_12m' AS avg_pnd_mas_pct_venc90m_12m,
'num_pct_venc90m_03m' AS num_pct_venc90m_03m,
'num_pct_venc90m_06m' AS num_pct_venc90m_06m,
'num_pct_venc90m_12m' AS num_pct_venc90m_12m,
'max_pct_vigenteh_03m' AS max_pct_vigenteh_03m,
'max_pct_vigenteh_06m' AS max_pct_vigenteh_06m,
'max_pct_vigenteh_12m' AS max_pct_vigenteh_12m,
'min_pct_vigenteh_03m' AS min_pct_vigenteh_03m,
'min_pct_vigenteh_06m' AS min_pct_vigenteh_06m,
'min_pct_vigenteh_12m' AS min_pct_vigenteh_12m,
'avg_pct_vigenteh_03m' AS avg_pct_vigenteh_03m,
'avg_pct_vigenteh_06m' AS avg_pct_vigenteh_06m,
'avg_pct_vigenteh_12m' AS avg_pct_vigenteh_12m,
'avg_pnd_menos_pct_vigenteh_03m' AS avg_pnd_menos_pct_vigenteh_03m,
'avg_pnd_menos_pct_vigenteh_06m' AS avg_pnd_menos_pct_vigenteh_06m,
'avg_pnd_menos_pct_vigenteh_12m' AS avg_pnd_menos_pct_vigenteh_12m,
'avg_pnd_mas_pct_vigenteh_03m' AS avg_pnd_mas_pct_vigenteh_03m,
'avg_pnd_mas_pct_vigenteh_06m' AS avg_pnd_mas_pct_vigenteh_06m,
'avg_pnd_mas_pct_vigenteh_12m' AS avg_pnd_mas_pct_vigenteh_12m,
'num_pct_vigenteh_03m' AS num_pct_vigenteh_03m,
'num_pct_vigenteh_06m' AS num_pct_vigenteh_06m,
'num_pct_vigenteh_12m' AS num_pct_vigenteh_12m,
'max_vencido1mas_03m' AS max_vencido1mas_03m,
'max_vencido1mas_06m' AS max_vencido1mas_06m,
'max_vencido1mas_12m' AS max_vencido1mas_12m,
'min_vencido1mas_03m' AS min_vencido1mas_03m,
'min_vencido1mas_06m' AS min_vencido1mas_06m,
'min_vencido1mas_12m' AS min_vencido1mas_12m,
'avg_vencido1mas_03m' AS avg_vencido1mas_03m,
'avg_vencido1mas_06m' AS avg_vencido1mas_06m,
'avg_vencido1mas_12m' AS avg_vencido1mas_12m,
'avg_pnd_menos_vencido1mas_03m' AS avg_pnd_menos_vencido1mas_03m,
'avg_pnd_menos_vencido1mas_06m' AS avg_pnd_menos_vencido1mas_06m,
'avg_pnd_menos_vencido1mas_12m' AS avg_pnd_menos_vencido1mas_12m,
'avg_pnd_mas_vencido1mas_03m' AS avg_pnd_mas_vencido1mas_03m,
'avg_pnd_mas_vencido1mas_06m' AS avg_pnd_mas_vencido1mas_06m,
'avg_pnd_mas_vencido1mas_12m' AS avg_pnd_mas_vencido1mas_12m,
'num_vencido1mas_03m' AS num_vencido1mas_03m,
'num_vencido1mas_06m' AS num_vencido1mas_06m,
'num_vencido1mas_12m' AS num_vencido1mas_12m,
'max_vencido30mas_03m' AS max_vencido30mas_03m,
'max_vencido30mas_06m' AS max_vencido30mas_06m,
'max_vencido30mas_12m' AS max_vencido30mas_12m,
'min_vencido30mas_03m' AS min_vencido30mas_03m,
'min_vencido30mas_06m' AS min_vencido30mas_06m,
'min_vencido30mas_12m' AS min_vencido30mas_12m,
'avg_vencido30mas_03m' AS avg_vencido30mas_03m,
'avg_vencido30mas_06m' AS avg_vencido30mas_06m,
'avg_vencido30mas_12m' AS avg_vencido30mas_12m,
'avg_pnd_menos_vencido30mas_03m' AS avg_pnd_menos_vencido30mas_03m,
'avg_pnd_menos_vencido30mas_06m' AS avg_pnd_menos_vencido30mas_06m,
'avg_pnd_menos_vencido30mas_12m' AS avg_pnd_menos_vencido30mas_12m,
'avg_pnd_mas_vencido30mas_03m' AS avg_pnd_mas_vencido30mas_03m,
'avg_pnd_mas_vencido30mas_06m' AS avg_pnd_mas_vencido30mas_06m,
'avg_pnd_mas_vencido30mas_12m' AS avg_pnd_mas_vencido30mas_12m,
'num_vencido30mas_03m' AS num_vencido30mas_03m,
'num_vencido30mas_06m' AS num_vencido30mas_06m,
'num_vencido30mas_12m' AS num_vencido30mas_12m,
'max_vencido60mas_03m' AS max_vencido60mas_03m,
'max_vencido60mas_06m' AS max_vencido60mas_06m,
'max_vencido60mas_12m' AS max_vencido60mas_12m,
'min_vencido60mas_03m' AS min_vencido60mas_03m,
'min_vencido60mas_06m' AS min_vencido60mas_06m,
'min_vencido60mas_12m' AS min_vencido60mas_12m,
'avg_vencido60mas_03m' AS avg_vencido60mas_03m,
'avg_vencido60mas_06m' AS avg_vencido60mas_06m,
'avg_vencido60mas_12m' AS avg_vencido60mas_12m,
'avg_pnd_menos_vencido60mas_03m' AS avg_pnd_menos_vencido60mas_03m,
'avg_pnd_menos_vencido60mas_06m' AS avg_pnd_menos_vencido60mas_06m,
'avg_pnd_menos_vencido60mas_12m' AS avg_pnd_menos_vencido60mas_12m,
'avg_pnd_mas_vencido60mas_03m' AS avg_pnd_mas_vencido60mas_03m,
'avg_pnd_mas_vencido60mas_06m' AS avg_pnd_mas_vencido60mas_06m,
'avg_pnd_mas_vencido60mas_12m' AS avg_pnd_mas_vencido60mas_12m,
'num_vencido60mas_03m' AS num_vencido60mas_03m,
'num_vencido60mas_06m' AS num_vencido60mas_06m,
'num_vencido60mas_12m' AS num_vencido60mas_12m,
'sum_venc29_03m' AS sum_venc29_03m,
'sum_venc29_06m' AS sum_venc29_06m,
'sum_venc29_12m' AS sum_venc29_12m,
'sum_venc59_03m' AS sum_venc59_03m,
'sum_venc59_06m' AS sum_venc59_06m,
'sum_venc59_12m' AS sum_venc59_12m,
'sum_venc89_03m' AS sum_venc89_03m,
'sum_venc89_06m' AS sum_venc89_06m,
'sum_venc89_12m' AS sum_venc89_12m,
'sum_venc90mas_03m' AS sum_venc90mas_03m,
'sum_venc90mas_06m' AS sum_venc90mas_06m,
'sum_venc90mas_12m' AS sum_venc90mas_12m,
'sum_vigenteh_03m' AS sum_vigenteh_03m,
'sum_vigenteh_06m' AS sum_vigenteh_06m,
'sum_vigenteh_12m' AS sum_vigenteh_12m,
'max_pct_venc1m_03m' AS max_pct_venc1m_03m,
'max_pct_venc1m_06m' AS max_pct_venc1m_06m,
'max_pct_venc1m_12m' AS max_pct_venc1m_12m,
'min_pct_venc1m_03m' AS min_pct_venc1m_03m,
'min_pct_venc1m_06m' AS min_pct_venc1m_06m,
'min_pct_venc1m_12m' AS min_pct_venc1m_12m,
'avg_pct_venc1m_03m' AS avg_pct_venc1m_03m,
'avg_pct_venc1m_06m' AS avg_pct_venc1m_06m,
'avg_pct_venc1m_12m' AS avg_pct_venc1m_12m,
'avg_pnd_menos_pct_venc1m_03m' AS avg_pnd_menos_pct_venc1m_03m,
'avg_pnd_menos_pct_venc1m_06m' AS avg_pnd_menos_pct_venc1m_06m,
'avg_pnd_menos_pct_venc1m_12m' AS avg_pnd_menos_pct_venc1m_12m,
'avg_pnd_mas_pct_venc1m_03m' AS avg_pnd_mas_pct_venc1m_03m,
'avg_pnd_mas_pct_venc1m_06m' AS avg_pnd_mas_pct_venc1m_06m,
'avg_pnd_mas_pct_venc1m_12m' AS avg_pnd_mas_pct_venc1m_12m,
'num_pct_venc1m_03m' AS num_pct_venc1m_03m,
'num_pct_venc1m_06m' AS num_pct_venc1m_06m,
'num_pct_venc1m_12m' AS num_pct_venc1m_12m,
'max_pct_venc30m_03m' AS max_pct_venc30m_03m,
'max_pct_venc30m_06m' AS max_pct_venc30m_06m,
'max_pct_venc30m_12m' AS max_pct_venc30m_12m,
'min_pct_venc30m_03m' AS min_pct_venc30m_03m,
'min_pct_venc30m_06m' AS min_pct_venc30m_06m,
'min_pct_venc30m_12m' AS min_pct_venc30m_12m,
'avg_pct_venc30m_03m' AS avg_pct_venc30m_03m,
'avg_pct_venc30m_06m' AS avg_pct_venc30m_06m,
'avg_pct_venc30m_12m' AS avg_pct_venc30m_12m,
'avg_pnd_menos_pct_venc30m_03m' AS avg_pnd_menos_pct_venc30m_03m,
'avg_pnd_menos_pct_venc30m_06m' AS avg_pnd_menos_pct_venc30m_06m,
'avg_pnd_menos_pct_venc30m_12m' AS avg_pnd_menos_pct_venc30m_12m,
'avg_pnd_mas_pct_venc30m_03m' AS avg_pnd_mas_pct_venc30m_03m,
'avg_pnd_mas_pct_venc30m_06m' AS avg_pnd_mas_pct_venc30m_06m,
'avg_pnd_mas_pct_venc30m_12m' AS avg_pnd_mas_pct_venc30m_12m,
'num_pct_venc30m_03m' AS num_pct_venc30m_03m,
'num_pct_venc30m_06m' AS num_pct_venc30m_06m,
'num_pct_venc30m_12m' AS num_pct_venc30m_12m,
'max_pct_venc60m_03m' AS max_pct_venc60m_03m,
'max_pct_venc60m_06m' AS max_pct_venc60m_06m,
'max_pct_venc60m_12m' AS max_pct_venc60m_12m,
'min_pct_venc60m_03m' AS min_pct_venc60m_03m,
'min_pct_venc60m_06m' AS min_pct_venc60m_06m,
'min_pct_venc60m_12m' AS min_pct_venc60m_12m,
'avg_pct_venc60m_03m' AS avg_pct_venc60m_03m,
'avg_pct_venc60m_06m' AS avg_pct_venc60m_06m,
'avg_pct_venc60m_12m' AS avg_pct_venc60m_12m,
'avg_pnd_menos_pct_venc60m_03m' AS avg_pnd_menos_pct_venc60m_03m,
'avg_pnd_menos_pct_venc60m_06m' AS avg_pnd_menos_pct_venc60m_06m,
'avg_pnd_menos_pct_venc60m_12m' AS avg_pnd_menos_pct_venc60m_12m,
'avg_pnd_mas_pct_venc60m_03m' AS avg_pnd_mas_pct_venc60m_03m,
'avg_pnd_mas_pct_venc60m_06m' AS avg_pnd_mas_pct_venc60m_06m,
'avg_pnd_mas_pct_venc60m_12m' AS avg_pnd_mas_pct_venc60m_12m,
'num_pct_venc60m_03m' AS num_pct_venc60m_03m,
'num_pct_venc60m_06m' AS num_pct_venc60m_06m,
'num_pct_venc60m_12m' AS num_pct_venc60m_12m,
'max_avg_hi_calcar_l_03m' AS max_avg_hi_calcar_l_03m,
'max_avg_hi_calcar_l_06m' AS max_avg_hi_calcar_l_06m,
'max_avg_hi_calcar_l_12m' AS max_avg_hi_calcar_l_12m,
'min_avg_hi_calcar_l_03m' AS min_avg_hi_calcar_l_03m,
'min_avg_hi_calcar_l_06m' AS min_avg_hi_calcar_l_06m,
'min_avg_hi_calcar_l_12m' AS min_avg_hi_calcar_l_12m,
'avg_avg_hi_calcar_l_03m' AS avg_avg_hi_calcar_l_03m,
'avg_avg_hi_calcar_l_06m' AS avg_avg_hi_calcar_l_06m,
'avg_avg_hi_calcar_l_12m' AS avg_avg_hi_calcar_l_12m,
'avg_pnd_menos_avg_hi_calcar_l_03m' AS avg_pnd_menos_avg_hi_calcar_l_03m,
'avg_pnd_menos_avg_hi_calcar_l_06m' AS avg_pnd_menos_avg_hi_calcar_l_06m,
'avg_pnd_menos_avg_hi_calcar_l_12m' AS avg_pnd_menos_avg_hi_calcar_l_12m,
'avg_pnd_mas_avg_hi_calcar_l_03m' AS avg_pnd_mas_avg_hi_calcar_l_03m,
'avg_pnd_mas_avg_hi_calcar_l_06m' AS avg_pnd_mas_avg_hi_calcar_l_06m,
'avg_pnd_mas_avg_hi_calcar_l_12m' AS avg_pnd_mas_avg_hi_calcar_l_12m,
'max_max_hi_calcar_l_03m' AS max_max_hi_calcar_l_03m,
'max_max_hi_calcar_l_06m' AS max_max_hi_calcar_l_06m,
'max_max_hi_calcar_l_12m' AS max_max_hi_calcar_l_12m,
'min_max_hi_calcar_l_03m' AS min_max_hi_calcar_l_03m,
'min_max_hi_calcar_l_06m' AS min_max_hi_calcar_l_06m,
'min_max_hi_calcar_l_12m' AS min_max_hi_calcar_l_12m,
'avg_max_hi_calcar_l_03m' AS avg_max_hi_calcar_l_03m,
'avg_max_hi_calcar_l_06m' AS avg_max_hi_calcar_l_06m,
'avg_max_hi_calcar_l_12m' AS avg_max_hi_calcar_l_12m,
'avg_pnd_menos_max_hi_calcar_l_03m' AS avg_pnd_menos_max_hi_calcar_l_03m,
'avg_pnd_menos_max_hi_calcar_l_06m' AS avg_pnd_menos_max_hi_calcar_l_06m,
'avg_pnd_menos_max_hi_calcar_l_12m' AS avg_pnd_menos_max_hi_calcar_l_12m,
'avg_pnd_mas_max_hi_calcar_l_03m' AS avg_pnd_mas_max_hi_calcar_l_03m,
'avg_pnd_mas_max_hi_calcar_l_06m' AS avg_pnd_mas_max_hi_calcar_l_06m,
'avg_pnd_mas_max_hi_calcar_l_12m' AS avg_pnd_mas_max_hi_calcar_l_12m,
'max_avg_hi_calcar_ceil_03m' AS max_avg_hi_calcar_ceil_03m,
'max_avg_hi_calcar_ceil_06m' AS max_avg_hi_calcar_ceil_06m,
'max_avg_hi_calcar_ceil_12m' AS max_avg_hi_calcar_ceil_12m,
'min_avg_hi_calcar_ceil_03m' AS min_avg_hi_calcar_ceil_03m,
'min_avg_hi_calcar_ceil_06m' AS min_avg_hi_calcar_ceil_06m,
'min_avg_hi_calcar_ceil_12m' AS min_avg_hi_calcar_ceil_12m,
'avg_avg_hi_calcar_ceil_03m' AS avg_avg_hi_calcar_ceil_03m,
'avg_avg_hi_calcar_ceil_06m' AS avg_avg_hi_calcar_ceil_06m,
'avg_avg_hi_calcar_ceil_12m' AS avg_avg_hi_calcar_ceil_12m,
'avg_pnd_menos_avg_hi_calcar_ceil_03m' AS avg_pnd_menos_avg_hi_calcar_ceil_03m,
'avg_pnd_menos_avg_hi_calcar_ceil_06m' AS avg_pnd_menos_avg_hi_calcar_ceil_06m,
'avg_pnd_menos_avg_hi_calcar_ceil_12m' AS avg_pnd_menos_avg_hi_calcar_ceil_12m,
'avg_pnd_mas_avg_hi_calcar_ceil_03m' AS avg_pnd_mas_avg_hi_calcar_ceil_03m,
'avg_pnd_mas_avg_hi_calcar_ceil_06m' AS avg_pnd_mas_avg_hi_calcar_ceil_06m,
'avg_pnd_mas_avg_hi_calcar_ceil_12m' AS avg_pnd_mas_avg_hi_calcar_ceil_12m,
'max_max_hi_calcar_ceil_03m' AS max_max_hi_calcar_ceil_03m,
'max_max_hi_calcar_ceil_06m' AS max_max_hi_calcar_ceil_06m,
'max_max_hi_calcar_ceil_12m' AS max_max_hi_calcar_ceil_12m,
'min_max_hi_calcar_ceil_03m' AS min_max_hi_calcar_ceil_03m,
'min_max_hi_calcar_ceil_06m' AS min_max_hi_calcar_ceil_06m,
'min_max_hi_calcar_ceil_12m' AS min_max_hi_calcar_ceil_12m,
'avg_max_hi_calcar_ceil_03m' AS avg_max_hi_calcar_ceil_03m,
'avg_max_hi_calcar_ceil_06m' AS avg_max_hi_calcar_ceil_06m,
'avg_max_hi_calcar_ceil_12m' AS avg_max_hi_calcar_ceil_12m,
'avg_pnd_menos_max_hi_calcar_ceil_03m' AS avg_pnd_menos_max_hi_calcar_ceil_03m,
'avg_pnd_menos_max_hi_calcar_ceil_06m' AS avg_pnd_menos_max_hi_calcar_ceil_06m,
'avg_pnd_menos_max_hi_calcar_ceil_12m' AS avg_pnd_menos_max_hi_calcar_ceil_12m,
'avg_pnd_mas_max_hi_calcar_ceil_03m' AS avg_pnd_mas_max_hi_calcar_ceil_03m,
'avg_pnd_mas_max_hi_calcar_ceil_06m' AS avg_pnd_mas_max_hi_calcar_ceil_06m,
'avg_pnd_mas_max_hi_calcar_ceil_12m' AS avg_pnd_mas_max_hi_calcar_ceil_12m,
'max_max_hi_calcar_floor_03m' AS max_max_hi_calcar_floor_03m,
'max_max_hi_calcar_floor_06m' AS max_max_hi_calcar_floor_06m,
'max_max_hi_calcar_floor_12m' AS max_max_hi_calcar_floor_12m,
'min_max_hi_calcar_floor_03m' AS min_max_hi_calcar_floor_03m,
'min_max_hi_calcar_floor_06m' AS min_max_hi_calcar_floor_06m,
'min_max_hi_calcar_floor_12m' AS min_max_hi_calcar_floor_12m,
'avg_max_hi_calcar_floor_03m' AS avg_max_hi_calcar_floor_03m,
'avg_max_hi_calcar_floor_06m' AS avg_max_hi_calcar_floor_06m,
'avg_max_hi_calcar_floor_12m' AS avg_max_hi_calcar_floor_12m,
'avg_pnd_menos_max_hi_calcar_floor_03m' AS avg_pnd_menos_max_hi_calcar_floor_03m,
'avg_pnd_menos_max_hi_calcar_floor_06m' AS avg_pnd_menos_max_hi_calcar_floor_06m,
'avg_pnd_menos_max_hi_calcar_floor_12m' AS avg_pnd_menos_max_hi_calcar_floor_12m,
'avg_pnd_mas_max_hi_calcar_floor_03m' AS avg_pnd_mas_max_hi_calcar_floor_03m,
'avg_pnd_mas_max_hi_calcar_floor_06m' AS avg_pnd_mas_max_hi_calcar_floor_06m,
'avg_pnd_mas_max_hi_calcar_floor_12m' AS avg_pnd_mas_max_hi_calcar_floor_12m,
'num_max_hi_calcar_floor_03m' AS num_max_hi_calcar_floor_03m,
'num_max_hi_calcar_floor_06m' AS num_max_hi_calcar_floor_06m,
'num_max_hi_calcar_floor_12m' AS num_max_hi_calcar_floor_12m,
'max_avg_hi_calcar_floor_03m' AS max_avg_hi_calcar_floor_03m,
'max_avg_hi_calcar_floor_06m' AS max_avg_hi_calcar_floor_06m,
'max_avg_hi_calcar_floor_12m' AS max_avg_hi_calcar_floor_12m,
'min_avg_hi_calcar_floor_03m' AS min_avg_hi_calcar_floor_03m,
'min_avg_hi_calcar_floor_06m' AS min_avg_hi_calcar_floor_06m,
'min_avg_hi_calcar_floor_12m' AS min_avg_hi_calcar_floor_12m,
'avg_avg_hi_calcar_floor_03m' AS avg_avg_hi_calcar_floor_03m,
'avg_avg_hi_calcar_floor_06m' AS avg_avg_hi_calcar_floor_06m,
'avg_avg_hi_calcar_floor_12m' AS avg_avg_hi_calcar_floor_12m,
'avg_pnd_menos_avg_hi_calcar_floor_03m' AS avg_pnd_menos_avg_hi_calcar_floor_03m,
'avg_pnd_menos_avg_hi_calcar_floor_06m' AS avg_pnd_menos_avg_hi_calcar_floor_06m,
'avg_pnd_menos_avg_hi_calcar_floor_12m' AS avg_pnd_menos_avg_hi_calcar_floor_12m,
'avg_pnd_mas_avg_hi_calcar_floor_03m' AS avg_pnd_mas_avg_hi_calcar_floor_03m,
'avg_pnd_mas_avg_hi_calcar_floor_06m' AS avg_pnd_mas_avg_hi_calcar_floor_06m,
'avg_pnd_mas_avg_hi_calcar_floor_12m' AS avg_pnd_mas_avg_hi_calcar_floor_12m,
'num_avg_hi_calcar_floor_03m' AS num_avg_hi_calcar_floor_03m,
'num_avg_hi_calcar_floor_06m' AS num_avg_hi_calcar_floor_06m,
'num_avg_hi_calcar_floor_12m' AS num_avg_hi_calcar_floor_12m;
INSERT INTO RSS_MCV_NEGOCIOS_VAR_HI_AGO
SELECT 
a.fecha,
a.rfc ,
b.max_venc29_03m,
b.max_venc29_06m,
b.max_venc29_12m,
b.min_venc29_03m,
b.min_venc29_06m,
b.min_venc29_12m,
b.avg_venc29_03m,
b.avg_venc29_06m,
b.avg_venc29_12m,
b.avg_pnd_menos_venc29_03m,
b.avg_pnd_menos_venc29_06m,
b.avg_pnd_menos_venc29_12m,
b.avg_pnd_mas_venc29_03m,
b.avg_pnd_mas_venc29_06m,
b.avg_pnd_mas_venc29_12m,
b.num_venc29_03m,
b.num_venc29_06m,
b.num_venc29_12m,
b.max_venc59_03m,
b.max_venc59_06m,
b.max_venc59_12m,
b.min_venc59_03m,
b.min_venc59_06m,
b.min_venc59_12m,
b.avg_venc59_03m,
b.avg_venc59_06m,
b.avg_venc59_12m,
b.avg_pnd_menos_venc59_03m,
b.avg_pnd_menos_venc59_06m,
b.avg_pnd_menos_venc59_12m,
b.avg_pnd_mas_venc59_03m,
b.avg_pnd_mas_venc59_06m,
b.avg_pnd_mas_venc59_12m,
b.num_venc59_03m,
b.num_venc59_06m,
b.num_venc59_12m,
b.max_venc89_03m,
b.max_venc89_06m,
b.max_venc89_12m,
b.min_venc89_03m,
b.min_venc89_06m,
b.min_venc89_12m,
b.avg_venc89_03m,
b.avg_venc89_06m,
b.avg_venc89_12m,
b.avg_pnd_menos_venc89_03m,
b.avg_pnd_menos_venc89_06m,
b.avg_pnd_menos_venc89_12m,
b.avg_pnd_mas_venc89_03m,
b.avg_pnd_mas_venc89_06m,
b.avg_pnd_mas_venc89_12m,
b.num_venc89_03m,
b.num_venc89_06m,
b.num_venc89_12m,
b.max_venc90m_03m,
b.max_venc90m_06m,
b.max_venc90m_12m,
b.min_venc90m_03m,
b.min_venc90m_06m,
b.min_venc90m_12m,
b.avg_venc90m_03m,
b.avg_venc90m_06m,
b.avg_venc90m_12m,
b.avg_pnd_menos_venc90m_03m,
b.avg_pnd_menos_venc90m_06m,
b.avg_pnd_menos_venc90m_12m,
b.avg_pnd_mas_venc90m_03m,
b.avg_pnd_mas_venc90m_06m,
b.avg_pnd_mas_venc90m_12m,
b.num_venc90m_03m,
b.num_venc90m_06m,
b.num_venc90m_12m,
b.max_vigenteh_03m,
b.max_vigenteh_06m,
b.max_vigenteh_12m,
b.min_vigenteh_03m,
b.min_vigenteh_06m,
b.min_vigenteh_12m,
b.avg_vigenteh_03m,
b.avg_vigenteh_06m,
b.avg_vigenteh_12m,
b.avg_pnd_menos_vigenteh_03m,
b.avg_pnd_menos_vigenteh_06m,
b.avg_pnd_menos_vigenteh_12m,
b.avg_pnd_mas_vigenteh_03m,
b.avg_pnd_mas_vigenteh_06m,
b.avg_pnd_mas_vigenteh_12m,
b.num_vigenteh_03m,
b.num_vigenteh_06m,
b.num_vigenteh_12m,
b.max_pct_venc29_03m,
b.max_pct_venc29_06m,
b.max_pct_venc29_12m,
b.min_pct_venc29_03m,
b.min_pct_venc29_06m,
b.min_pct_venc29_12m,
b.avg_pct_venc29_03m,
b.avg_pct_venc29_06m,
b.avg_pct_venc29_12m,
b.avg_pnd_menos_pct_venc29_03m,
b.avg_pnd_menos_pct_venc29_06m,
b.avg_pnd_menos_pct_venc29_12m,
b.avg_pnd_mas_pct_venc29_03m,
b.avg_pnd_mas_pct_venc29_06m,
b.avg_pnd_mas_pct_venc29_12m,
b.num_pct_venc29_03m,
b.num_pct_venc29_06m,
b.num_pct_venc29_12m,
b.max_pct_venc59_03m,
b.max_pct_venc59_06m,
b.max_pct_venc59_12m,
b.min_pct_venc59_03m,
b.min_pct_venc59_06m,
b.min_pct_venc59_12m,
b.avg_pct_venc59_03m,
b.avg_pct_venc59_06m,
b.avg_pct_venc59_12m,
b.avg_pnd_menos_pct_venc59_03m,
b.avg_pnd_menos_pct_venc59_06m,
b.avg_pnd_menos_pct_venc59_12m,
b.avg_pnd_mas_pct_venc59_03m,
b.avg_pnd_mas_pct_venc59_06m,
b.avg_pnd_mas_pct_venc59_12m,
b.num_pct_venc59_03m,
b.num_pct_venc59_06m,
b.num_pct_venc59_12m,
b.max_pct_venc89_03m,
b.max_pct_venc89_06m,
b.max_pct_venc89_12m,
b.min_pct_venc89_03m,
b.min_pct_venc89_06m,
b.min_pct_venc89_12m,
b.avg_pct_venc89_03m,
b.avg_pct_venc89_06m,
b.avg_pct_venc89_12m,
b.avg_pnd_menos_pct_venc89_03m,
b.avg_pnd_menos_pct_venc89_06m,
b.avg_pnd_menos_pct_venc89_12m,
b.avg_pnd_mas_pct_venc89_03m,
b.avg_pnd_mas_pct_venc89_06m,
b.avg_pnd_mas_pct_venc89_12m,
b.num_pct_venc89_03m,
b.num_pct_venc89_06m,
b.num_pct_venc89_12m,
b.max_pct_venc90m_03m,
b.max_pct_venc90m_06m,
b.max_pct_venc90m_12m,
b.min_pct_venc90m_03m,
b.min_pct_venc90m_06m,
b.min_pct_venc90m_12m,
b.avg_pct_venc90m_03m,
b.avg_pct_venc90m_06m,
b.avg_pct_venc90m_12m,
b.avg_pnd_menos_pct_venc90m_03m,
b.avg_pnd_menos_pct_venc90m_06m,
b.avg_pnd_menos_pct_venc90m_12m,
b.avg_pnd_mas_pct_venc90m_03m,
b.avg_pnd_mas_pct_venc90m_06m,
b.avg_pnd_mas_pct_venc90m_12m,
b.num_pct_venc90m_03m,
b.num_pct_venc90m_06m,
b.num_pct_venc90m_12m,
b.max_pct_vigenteh_03m,
b.max_pct_vigenteh_06m,
b.max_pct_vigenteh_12m,
b.min_pct_vigenteh_03m,
b.min_pct_vigenteh_06m,
b.min_pct_vigenteh_12m,
b.avg_pct_vigenteh_03m,
b.avg_pct_vigenteh_06m,
b.avg_pct_vigenteh_12m,
b.avg_pnd_menos_pct_vigenteh_03m,
b.avg_pnd_menos_pct_vigenteh_06m,
b.avg_pnd_menos_pct_vigenteh_12m,
b.avg_pnd_mas_pct_vigenteh_03m,
b.avg_pnd_mas_pct_vigenteh_06m,
b.avg_pnd_mas_pct_vigenteh_12m,
b.num_pct_vigenteh_03m,
b.num_pct_vigenteh_06m,
b.num_pct_vigenteh_12m,
b.max_vencido1mas_03m,
b.max_vencido1mas_06m,
b.max_vencido1mas_12m,
b.min_vencido1mas_03m,
b.min_vencido1mas_06m,
b.min_vencido1mas_12m,
b.avg_vencido1mas_03m,
b.avg_vencido1mas_06m,
b.avg_vencido1mas_12m,
b.avg_pnd_menos_vencido1mas_03m,
b.avg_pnd_menos_vencido1mas_06m,
b.avg_pnd_menos_vencido1mas_12m,
b.avg_pnd_mas_vencido1mas_03m,
b.avg_pnd_mas_vencido1mas_06m,
b.avg_pnd_mas_vencido1mas_12m,
b.num_vencido1mas_03m,
b.num_vencido1mas_06m,
b.num_vencido1mas_12m,
b.max_vencido30mas_03m,
b.max_vencido30mas_06m,
b.max_vencido30mas_12m,
b.min_vencido30mas_03m,
b.min_vencido30mas_06m,
b.min_vencido30mas_12m,
b.avg_vencido30mas_03m,
b.avg_vencido30mas_06m,
b.avg_vencido30mas_12m,
b.avg_pnd_menos_vencido30mas_03m,
b.avg_pnd_menos_vencido30mas_06m,
b.avg_pnd_menos_vencido30mas_12m,
b.avg_pnd_mas_vencido30mas_03m,
b.avg_pnd_mas_vencido30mas_06m,
b.avg_pnd_mas_vencido30mas_12m,
b.num_vencido30mas_03m,
b.num_vencido30mas_06m,
b.num_vencido30mas_12m,
b.max_vencido60mas_03m,
b.max_vencido60mas_06m,
b.max_vencido60mas_12m,
b.min_vencido60mas_03m,
b.min_vencido60mas_06m,
b.min_vencido60mas_12m,
b.avg_vencido60mas_03m,
b.avg_vencido60mas_06m,
b.avg_vencido60mas_12m,
b.avg_pnd_menos_vencido60mas_03m,
b.avg_pnd_menos_vencido60mas_06m,
b.avg_pnd_menos_vencido60mas_12m,
b.avg_pnd_mas_vencido60mas_03m,
b.avg_pnd_mas_vencido60mas_06m,
b.avg_pnd_mas_vencido60mas_12m,
b.num_vencido60mas_03m,
b.num_vencido60mas_06m,
b.num_vencido60mas_12m,
b.sum_venc29_03m,
b.sum_venc29_06m,
b.sum_venc29_12m,
b.sum_venc59_03m,
b.sum_venc59_06m,
b.sum_venc59_12m,
b.sum_venc89_03m,
b.sum_venc89_06m,
b.sum_venc89_12m,
b.sum_venc90mas_03m,
b.sum_venc90mas_06m,
b.sum_venc90mas_12m,
b.sum_vigenteh_03m,
b.sum_vigenteh_06m,
b.sum_vigenteh_12m,
b.max_pct_venc1m_03m,
b.max_pct_venc1m_06m,
b.max_pct_venc1m_12m,
b.min_pct_venc1m_03m,
b.min_pct_venc1m_06m,
b.min_pct_venc1m_12m,
b.avg_pct_venc1m_03m,
b.avg_pct_venc1m_06m,
b.avg_pct_venc1m_12m,
b.avg_pnd_menos_pct_venc1m_03m,
b.avg_pnd_menos_pct_venc1m_06m,
b.avg_pnd_menos_pct_venc1m_12m,
b.avg_pnd_mas_pct_venc1m_03m,
b.avg_pnd_mas_pct_venc1m_06m,
b.avg_pnd_mas_pct_venc1m_12m,
b.num_pct_venc1m_03m,
b.num_pct_venc1m_06m,
b.num_pct_venc1m_12m,
b.max_pct_venc30m_03m,
b.max_pct_venc30m_06m,
b.max_pct_venc30m_12m,
b.min_pct_venc30m_03m,
b.min_pct_venc30m_06m,
b.min_pct_venc30m_12m,
b.avg_pct_venc30m_03m,
b.avg_pct_venc30m_06m,
b.avg_pct_venc30m_12m,
b.avg_pnd_menos_pct_venc30m_03m,
b.avg_pnd_menos_pct_venc30m_06m,
b.avg_pnd_menos_pct_venc30m_12m,
b.avg_pnd_mas_pct_venc30m_03m,
b.avg_pnd_mas_pct_venc30m_06m,
b.avg_pnd_mas_pct_venc30m_12m,
b.num_pct_venc30m_03m,
b.num_pct_venc30m_06m,
b.num_pct_venc30m_12m,
b.max_pct_venc60m_03m,
b.max_pct_venc60m_06m,
b.max_pct_venc60m_12m,
b.min_pct_venc60m_03m,
b.min_pct_venc60m_06m,
b.min_pct_venc60m_12m,
b.avg_pct_venc60m_03m,
b.avg_pct_venc60m_06m,
b.avg_pct_venc60m_12m,
b.avg_pnd_menos_pct_venc60m_03m,
b.avg_pnd_menos_pct_venc60m_06m,
b.avg_pnd_menos_pct_venc60m_12m,
b.avg_pnd_mas_pct_venc60m_03m,
b.avg_pnd_mas_pct_venc60m_06m,
b.avg_pnd_mas_pct_venc60m_12m,
b.num_pct_venc60m_03m,
b.num_pct_venc60m_06m,
b.num_pct_venc60m_12m,
b.max_avg_hi_calcar_l_03m,
b.max_avg_hi_calcar_l_06m,
b.max_avg_hi_calcar_l_12m,
b.min_avg_hi_calcar_l_03m,
b.min_avg_hi_calcar_l_06m,
b.min_avg_hi_calcar_l_12m,
b.avg_avg_hi_calcar_l_03m,
b.avg_avg_hi_calcar_l_06m,
b.avg_avg_hi_calcar_l_12m,
b.avg_pnd_menos_avg_hi_calcar_l_03m,
b.avg_pnd_menos_avg_hi_calcar_l_06m,
b.avg_pnd_menos_avg_hi_calcar_l_12m,
b.avg_pnd_mas_avg_hi_calcar_l_03m,
b.avg_pnd_mas_avg_hi_calcar_l_06m,
b.avg_pnd_mas_avg_hi_calcar_l_12m,
b.max_max_hi_calcar_l_03m,
b.max_max_hi_calcar_l_06m,
b.max_max_hi_calcar_l_12m,
b.min_max_hi_calcar_l_03m,
b.min_max_hi_calcar_l_06m,
b.min_max_hi_calcar_l_12m,
b.avg_max_hi_calcar_l_03m,
b.avg_max_hi_calcar_l_06m,
b.avg_max_hi_calcar_l_12m,
b.avg_pnd_menos_max_hi_calcar_l_03m,
b.avg_pnd_menos_max_hi_calcar_l_06m,
b.avg_pnd_menos_max_hi_calcar_l_12m,
b.avg_pnd_mas_max_hi_calcar_l_03m,
b.avg_pnd_mas_max_hi_calcar_l_06m,
b.avg_pnd_mas_max_hi_calcar_l_12m,
b.max_avg_hi_calcar_ceil_03m,
b.max_avg_hi_calcar_ceil_06m,
b.max_avg_hi_calcar_ceil_12m,
b.min_avg_hi_calcar_ceil_03m,
b.min_avg_hi_calcar_ceil_06m,
b.min_avg_hi_calcar_ceil_12m,
b.avg_avg_hi_calcar_ceil_03m,
b.avg_avg_hi_calcar_ceil_06m,
b.avg_avg_hi_calcar_ceil_12m,
b.avg_pnd_menos_avg_hi_calcar_ceil_03m,
b.avg_pnd_menos_avg_hi_calcar_ceil_06m,
b.avg_pnd_menos_avg_hi_calcar_ceil_12m,
b.avg_pnd_mas_avg_hi_calcar_ceil_03m,
b.avg_pnd_mas_avg_hi_calcar_ceil_06m,
b.avg_pnd_mas_avg_hi_calcar_ceil_12m,
b.max_max_hi_calcar_ceil_03m,
b.max_max_hi_calcar_ceil_06m,
b.max_max_hi_calcar_ceil_12m,
b.min_max_hi_calcar_ceil_03m,
b.min_max_hi_calcar_ceil_06m,
b.min_max_hi_calcar_ceil_12m,
b.avg_max_hi_calcar_ceil_03m,
b.avg_max_hi_calcar_ceil_06m,
b.avg_max_hi_calcar_ceil_12m,
b.avg_pnd_menos_max_hi_calcar_ceil_03m,
b.avg_pnd_menos_max_hi_calcar_ceil_06m,
b.avg_pnd_menos_max_hi_calcar_ceil_12m,
b.avg_pnd_mas_max_hi_calcar_ceil_03m,
b.avg_pnd_mas_max_hi_calcar_ceil_06m,
b.avg_pnd_mas_max_hi_calcar_ceil_12m,
b.max_max_hi_calcar_floor_03m,
b.max_max_hi_calcar_floor_06m,
b.max_max_hi_calcar_floor_12m,
b.min_max_hi_calcar_floor_03m,
b.min_max_hi_calcar_floor_06m,
b.min_max_hi_calcar_floor_12m,
b.avg_max_hi_calcar_floor_03m,
b.avg_max_hi_calcar_floor_06m,
b.avg_max_hi_calcar_floor_12m,
b.avg_pnd_menos_max_hi_calcar_floor_03m,
b.avg_pnd_menos_max_hi_calcar_floor_06m,
b.avg_pnd_menos_max_hi_calcar_floor_12m,
b.avg_pnd_mas_max_hi_calcar_floor_03m,
b.avg_pnd_mas_max_hi_calcar_floor_06m,
b.avg_pnd_mas_max_hi_calcar_floor_12m,
b.num_max_hi_calcar_floor_03m,
b.num_max_hi_calcar_floor_06m,
b.num_max_hi_calcar_floor_12m,
b.max_avg_hi_calcar_floor_03m,
b.max_avg_hi_calcar_floor_06m,
b.max_avg_hi_calcar_floor_12m,
b.min_avg_hi_calcar_floor_03m,
b.min_avg_hi_calcar_floor_06m,
b.min_avg_hi_calcar_floor_12m,
b.avg_avg_hi_calcar_floor_03m,
b.avg_avg_hi_calcar_floor_06m,
b.avg_avg_hi_calcar_floor_12m,
b.avg_pnd_menos_avg_hi_calcar_floor_03m,
b.avg_pnd_menos_avg_hi_calcar_floor_06m,
b.avg_pnd_menos_avg_hi_calcar_floor_12m,
b.avg_pnd_mas_avg_hi_calcar_floor_03m,
b.avg_pnd_mas_avg_hi_calcar_floor_06m,
b.avg_pnd_mas_avg_hi_calcar_floor_12m,
b.num_avg_hi_calcar_floor_03m,
b.num_avg_hi_calcar_floor_06m,
b.num_avg_hi_calcar_floor_12m

FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOSA a
LEFT JOIN dbriskdatamart.JAT_MCV_VAR_HI_201908 b
on a.FOLIO_RESPUESTA_BC = b.folio 
where a.fecha = '201908' ;