%hive
INSERT INTO RSS_MCV_PEQUE_VAR_PEDRO

ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_VAR_PEDRO' AS
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
LEFT JOIN dbriskdatamart.JAT_MCV_VAR_PEDRO_201902 b
on a.rfc=b.rfc and a.fecha=b.fecha
where a.fecha >=201607 ;