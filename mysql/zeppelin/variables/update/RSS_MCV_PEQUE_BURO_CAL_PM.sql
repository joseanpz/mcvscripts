%hive
INSERT INTO RSS_MCV_PEQUE_BURO_CAL_PM

ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_BURO_CAL_PM' AS
SELECT 
a.fecha , 
a.rfc,
b.12_inst,
b.bk12_clean,
b.bk12_dpd_prom,
b.bk12_ind_qcra,
b.bk12_max_credit_amt,
b.bk12_num_cred,
b.bk12_num_exp_paidontime,
b.bk12_num_tc_act,
b.bk12_pct_90plus,
b.bk12_pct_promt,
b.bk12_pc_sat,
b.bk24_ind_exp,
b.bk24_pct_60plus,
b.bk_deuda_cp,
b.bk_deuda_tot,
b.bk_ind_pmor,
b.deuda_tot,
b.deuda_tot_cp,
b.months_on_file_banking,
b.months_since_last_open_banking,
b.nbk12_comm_pct_plus,
b.nbk12_num_cred,
b.nbk12_pct_promt,
b.nbk12_pct_sat,
b.nbk12_pct_60plus,
b.nbk12_deuda_cp,
b.nbk12_deuda_tot
FROM JEA_MCV_UNIVERSO_RFC a
LEFT JOIN dbriskdatamart.MZM_MCV_BURO_CAL_PM_201902 b
on a.folio_respuesta_bc = b.folio and a.rfc=b.rfc
where a.fecha >=201607 ;