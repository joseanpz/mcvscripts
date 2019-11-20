%hive
DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_BURO_CAL_PM_AGO;

CREATE TABLE  RSS_MCV_NEGOCIOS_BURO_CAL_PM_AGO
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Agosto/RSS_MCV_NEGOCIOS_BURO_CAL_PM_AGO' AS
SELECT 
'fecha' AS fecha,
'rfc' as rfc ,
'12_inst' AS 12_inst,
'bk12_clean' AS bk12_clean,
'bk12_dpd_prom' AS bk12_dpd_prom,
'bk12_ind_qcra' AS bk12_ind_qcra,
'bk12_max_credit_amt' AS bk12_max_credit_amt,
'bk12_num_cred' AS bk12_num_cred,
'bk12_num_exp_paidontime' AS bk12_num_exp_paidontime,
'bk12_num_tc_act' AS bk12_num_tc_act,
'bk12_pct_90plus' AS bk12_pct_90plus,
'bk12_pct_promt' AS bk12_pct_promt,
'bk12_pc_sat' AS bk12_pc_sat,
'bk24_ind_exp' AS bk24_ind_exp,
'bk24_pct_60plus' AS bk24_pct_60plus,
'bk_deuda_cp' AS bk_deuda_cp,
'bk_deuda_tot' AS bk_deuda_tot,
'bk_ind_pmor' AS bk_ind_pmor,
'deuda_tot' AS deuda_tot,
'deuda_tot_cp' AS deuda_tot_cp,
'months_on_file_banking' AS months_on_file_banking,
'months_since_last_open_banking' AS months_since_last_open_banking,
'nbk12_comm_pct_plus' AS nbk12_comm_pct_plus,
'nbk12_num_cred' AS nbk12_num_cred,
'nbk12_pct_promt' AS nbk12_pct_promt,
'nbk12_pct_sat' AS nbk12_pct_sat,
'nbk12_pct_60plus' AS nbk12_pct_60plus,
'nbk12_deuda_cp' AS nbk12_deuda_cp,
'nbk12_deuda_tot' AS nbk12_deuda_tot;
INSERT INTO RSS_MCV_NEGOCIOS_BURO_CAL_PM_AGO
SELECT 
a.fecha,
a.rfc ,
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
FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOSA a
LEFT JOIN dbriskdatamart.MZM_MCV_BURO_CAL_PM_201908 b
on a.FOLIO_RESPUESTA_BC = b.folio and a.rfc=b.rfc
where a.fecha = '201908' ;
