%hive
DROP TABLE IF EXISTS RSS_MCV_PEQUE_VAR_PEDRO_201905;

CREATE TABLE  RSS_MCV_PEQUE_VAR_PEDRO_201905
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_VAR_PEDRO_201905' AS
SELECT 
'fecha' AS fecha,
'rfc' as rfc , 
'pct_dbt_bk' AS pct_dbt_bk,
'saldo_total' AS saldo_total,
'saldoinicial_calculado' AS saldoinicial_calculado,
'saldo_total_rev' AS saldo_total_rev,
'saldoinicial_calculado_rev' AS saldoinicial_calculado_rev,
'utilizacion' AS utilizacion,
'utilizacionrevolventes' AS utilizacionrevolventes,
'sdo' AS sdo,
'pi' AS pi,
'mto_lin_rfc' AS mto_lin_rfc,
'terr_' AS terr_,
'sdo_rev' AS sdo_rev,
'sdo_no_rev' AS sdo_no_rev,
'pct_rev' AS pct_rev,
'vcc_rev_smp' AS vcc_rev_smp,
'dt_vs_sd' AS dt_vs_sd;
INSERT INTO RSS_MCV_PEQUE_VAR_PEDRO_201905
SELECT distinct 
a.fecha,
a.rfc,
b.pct_dbt_bk,
b.saldo_total,
b.saldoinicial_calculado,
b.saldo_total_rev,
b.saldoinicial_calculado_rev,
b.utilizacion,
b.utilizacionrevolventes,
b.sdo,
b.pi,
b.mto_lin_rfc,
b.terr_,
b.sdo_rev,
b.sdo_no_rev,
b.pct_rev,
b.vcc_rev_smp,
b.dt_vs_sd
FROM JEA_MCV_UNIVERSO_RFC a
LEFT JOIN dbriskdatamart.JAT_MCV_VAR_PEDRO_201905 b
on a.rfc=b.rfc and a.fecha=b.fecha
where a.fecha >=201607 ;
