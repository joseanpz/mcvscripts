%hive
DROP TABLE IF EXISTS RSS_MCV_PEQUE_VAR_CR_RESUMEN;

CREATE TABLE  RSS_MCV_PEQUE_VAR_CR_RESUMEN
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_VAR_CR_RESUMEN' AS
SELECT   
'fecha' AS fecha,
'rfc' as rfc ,
'num_op_acc' AS num_op_acc,
'num_bk_op_acc' AS num_bk_op_acc,
'num_bk_pq_op_acc' AS num_bk_pq_op_acc,
'num_bk_cs_op_acc' AS num_bk_cs_op_acc,
'num_bk_lsg_op_acc' AS num_bk_lsg_op_acc,
'num_bk_r_op_acc' AS num_bk_r_op_acc,
'num_bk_cf_op_acc' AS num_bk_cf_op_acc,
'num_bk_other_op_acc' AS num_bk_other_op_acc,
'num_lse_op_acc' AS num_lse_op_acc,
'num_lse_pq_op_acc' AS num_lse_pq_op_acc,
'num_lse_cs_op_acc' AS num_lse_cs_op_acc,
'num_lse_lsg_op_acc' AS num_lse_lsg_op_acc,
'num_lse_r_op_acc' AS num_lse_r_op_acc,
'num_lse_cf_op_acc' AS num_lse_cf_op_acc,
'num_lse_other_op_acc' AS num_lse_other_op_acc,
'num_un_cre_op_acc' AS num_un_cre_op_acc,
'num_un_cre_pq_op_acc' AS num_un_cre_pq_op_acc,
'num_un_cre_cs_op_acc' AS num_un_cre_cs_op_acc,
'num_un_cre_lsg_op_acc' AS num_un_cre_lsg_op_acc,
'num_un_cre_r_op_acc' AS num_un_cre_r_op_acc,
'num_un_cre_cf_op_acc' AS num_un_cre_cf_op_acc,
'num_un_cre_other_op_acc' AS num_un_cre_other_op_acc,
'num_other_fin_op_acc' AS num_other_fin_op_acc,
'num_other_fin_pq_op_acc' AS num_other_fin_pq_op_acc,
'num_other_fin_cs_op_acc' AS num_other_fin_cs_op_acc,
'num_other_fin_lsg_op_acc' AS num_other_fin_lsg_op_acc,
'num_other_fin_r_op_acc' AS num_other_fin_r_op_acc,
'num_other_fin_cf_op_acc' AS num_other_fin_cf_op_acc,
'num_other_fin_other_op_acc' AS num_other_fin_other_op_acc,
'num_gbn_op_acc' AS num_gbn_op_acc,
'num_gbn_pq_op_acc' AS num_gbn_pq_op_acc,
'num_gbn_cs_op_acc' AS num_gbn_cs_op_acc,
'num_gbn_lsg_op_acc' AS num_gbn_lsg_op_acc,
'num_gbn_r_op_acc' AS num_gbn_r_op_acc,
'num_gbn_cf_op_acc' AS num_gbn_cf_op_acc,
'num_gbn_other_op_acc' AS num_gbn_other_op_acc,
'num_brg_op_acc' AS num_brg_op_acc,
'num_brg_pq_op_acc' AS num_brg_pq_op_acc,
'num_brg_cs_op_acc' AS num_brg_cs_op_acc,
'num_brg_lsg_op_acc' AS num_brg_lsg_op_acc,
'num_brg_r_op_acc' AS num_brg_r_op_acc,
'num_brg_cf_op_acc' AS num_brg_cf_op_acc,
'num_brg_other_op_acc' AS num_brg_other_op_acc,
'num_brg_lse_op_acc' AS num_brg_lse_op_acc,
'num_brg_lse_pq_op_acc' AS num_brg_lse_pq_op_acc,
'num_brg_lse_cs_op_acc' AS num_brg_lse_cs_op_acc,
'num_brg_lse_lsg_op_acc' AS num_brg_lse_lsg_op_acc,
'num_brg_lse_r_op_acc' AS num_brg_lse_r_op_acc,
'num_brg_lse_cf_op_acc' AS num_brg_lse_cf_op_acc,
'num_brg_lse_other_op_acc' AS num_brg_lse_other_op_acc,
'num_cl_acc' AS num_cl_acc,
'num_bk_cl_acc' AS num_bk_cl_acc,
'num_bk_pq_cl_acc' AS num_bk_pq_cl_acc,
'num_bk_cs_cl_acc' AS num_bk_cs_cl_acc,
'num_bk_lsg_cl_acc' AS num_bk_lsg_cl_acc,
'num_bk_r_cl_acc' AS num_bk_r_cl_acc,
'num_bk_cf_cl_acc' AS num_bk_cf_cl_acc,
'num_bk_other_cl_acc' AS num_bk_other_cl_acc,
'num_lse_cl_acc' AS num_lse_cl_acc,
'num_lse_pq_cl_acc' AS num_lse_pq_cl_acc,
'num_lse_cs_cl_acc' AS num_lse_cs_cl_acc,
'num_lse_lsg_cl_acc' AS num_lse_lsg_cl_acc,
'num_lse_r_cl_acc' AS num_lse_r_cl_acc,
'num_lse_cf_cl_acc' AS num_lse_cf_cl_acc,
'num_lse_other_cl_acc' AS num_lse_other_cl_acc,
'num_un_cre_cl_acc' AS num_un_cre_cl_acc,
'num_un_cre_pq_cl_acc' AS num_un_cre_pq_cl_acc,
'num_un_cre_cs_cl_acc' AS num_un_cre_cs_cl_acc,
'num_un_cre_lsg_cl_acc' AS num_un_cre_lsg_cl_acc,
'num_un_cre_r_cl_acc' AS num_un_cre_r_cl_acc,
'num_un_cre_cf_cl_acc' AS num_un_cre_cf_cl_acc,
'num_un_cre_other_cl_acc' AS num_un_cre_other_cl_acc,
'num_other_fin_cl_acc' AS num_other_fin_cl_acc,
'num_other_fin_pq_cl_acc' AS num_other_fin_pq_cl_acc,
'num_other_fin_cs_cl_acc' AS num_other_fin_cs_cl_acc,
'num_other_fin_lsg_cl_acc' AS num_other_fin_lsg_cl_acc,
'num_other_fin_r_cl_acc' AS num_other_fin_r_cl_acc,
'num_other_fin_cf_cl_acc' AS num_other_fin_cf_cl_acc,
'num_other_fin_other_cl_acc' AS num_other_fin_other_cl_acc,
'num_gbn_cl_acc' AS num_gbn_cl_acc,
'num_gbn_pq_cl_acc' AS num_gbn_pq_cl_acc,
'num_gbn_cs_cl_acc' AS num_gbn_cs_cl_acc,
'num_gbn_lsg_cl_acc' AS num_gbn_lsg_cl_acc,
'num_gbn_r_cl_acc' AS num_gbn_r_cl_acc,
'num_gbn_cf_cl_acc' AS num_gbn_cf_cl_acc,
'num_gbn_other_cl_acc' AS num_gbn_other_cl_acc,
'num_brg_cl_acc' AS num_brg_cl_acc,
'num_brg_pq_cl_acc' AS num_brg_pq_cl_acc,
'num_brg_cs_cl_acc' AS num_brg_cs_cl_acc,
'num_brg_lsg_cl_acc' AS num_brg_lsg_cl_acc,
'num_brg_r_cl_acc' AS num_brg_r_cl_acc,
'num_brg_cf_cl_acc' AS num_brg_cf_cl_acc,
'num_brg_other_cl_acc' AS num_brg_other_cl_acc,
'num_brg_lse_cl_acc' AS num_brg_lse_cl_acc,
'num_brg_lse_pq_cl_acc' AS num_brg_lse_pq_cl_acc,
'num_brg_lse_cs_cl_acc' AS num_brg_lse_cs_cl_acc,
'num_brg_lse_lsg_cl_acc' AS num_brg_lse_lsg_cl_acc,
'num_brg_lse_r_cl_acc' AS num_brg_lse_r_cl_acc,
'num_brg_lse_cf_cl_acc' AS num_brg_lse_cf_cl_acc,
'num_brg_lse_other_cl_acc' AS num_brg_lse_other_cl_acc,
'pct_op_acc' AS pct_op_acc,
'pct_bk_op_acc' AS pct_bk_op_acc,
'pct_bk_pq_op_acc' AS pct_bk_pq_op_acc,
'pct_bk_cs_op_acc' AS pct_bk_cs_op_acc,
'pct_bk_lsg_op_acc' AS pct_bk_lsg_op_acc,
'pct_bk_r_op_acc' AS pct_bk_r_op_acc,
'pct_bk_cf_op_acc' AS pct_bk_cf_op_acc,
'pct_bk_other_op_acc' AS pct_bk_other_op_acc,
'pct_lse_op_acc' AS pct_lse_op_acc,
'pct_lse_pq_op_acc' AS pct_lse_pq_op_acc,
'pct_lse_cs_op_acc' AS pct_lse_cs_op_acc,
'pct_lse_lsg_op_acc' AS pct_lse_lsg_op_acc,
'pct_lse_r_op_acc' AS pct_lse_r_op_acc,
'pct_lse_cf_op_acc' AS pct_lse_cf_op_acc,
'pct_lse_other_op_acc' AS pct_lse_other_op_acc,
'pct_un_cre_op_acc' AS pct_un_cre_op_acc,
'pct_un_cre_pq_op_acc' AS pct_un_cre_pq_op_acc,
'pct_un_cre_cs_op_acc' AS pct_un_cre_cs_op_acc,
'pct_un_cre_lsg_op_acc' AS pct_un_cre_lsg_op_acc,
'pct_un_cre_r_op_acc' AS pct_un_cre_r_op_acc,
'pct_un_cre_cf_op_acc' AS pct_un_cre_cf_op_acc,
'pct_un_cre_other_op_acc' AS pct_un_cre_other_op_acc,
'pct_other_fin_op_acc' AS pct_other_fin_op_acc,
'pct_other_fin_pq_op_acc' AS pct_other_fin_pq_op_acc,
'pct_other_fin_cs_op_acc' AS pct_other_fin_cs_op_acc,
'pct_other_fin_lsg_op_acc' AS pct_other_fin_lsg_op_acc,
'pct_other_fin_r_op_acc' AS pct_other_fin_r_op_acc,
'pct_other_fin_cf_op_acc' AS pct_other_fin_cf_op_acc,
'pct_other_fin_other_op_acc' AS pct_other_fin_other_op_acc,
'pct_gbn_op_acc' AS pct_gbn_op_acc,
'pct_gbn_pq_op_acc' AS pct_gbn_pq_op_acc,
'pct_gbn_cs_op_acc' AS pct_gbn_cs_op_acc,
'pct_gbn_lsg_op_acc' AS pct_gbn_lsg_op_acc,
'pct_gbn_r_op_acc' AS pct_gbn_r_op_acc,
'pct_gbn_cf_op_acc' AS pct_gbn_cf_op_acc,
'pct_gbn_other_op_acc' AS pct_gbn_other_op_acc,
'pct_brg_op_acc' AS pct_brg_op_acc,
'pct_brg_pq_op_acc' AS pct_brg_pq_op_acc,
'pct_brg_cs_op_acc' AS pct_brg_cs_op_acc,
'pct_brg_lsg_op_acc' AS pct_brg_lsg_op_acc,
'pct_brg_r_op_acc' AS pct_brg_r_op_acc,
'pct_brg_cf_op_acc' AS pct_brg_cf_op_acc,
'pct_brg_other_op_acc' AS pct_brg_other_op_acc,
'pct_brg_lse_op_acc' AS pct_brg_lse_op_acc,
'pct_brg_lse_pq_op_acc' AS pct_brg_lse_pq_op_acc,
'pct_brg_lse_cs_op_acc' AS pct_brg_lse_cs_op_acc,
'pct_brg_lse_lsg_op_acc' AS pct_brg_lse_lsg_op_acc,
'pct_brg_lse_r_op_acc' AS pct_brg_lse_r_op_acc,
'pct_brg_lse_cf_op_acc' AS pct_brg_lse_cf_op_acc,
'pct_brg_lse_other_op_acc' AS pct_brg_lse_other_op_acc,
'pct_cl_acc' AS pct_cl_acc,
'pct_bk_cl_acc' AS pct_bk_cl_acc,
'pct_bk_pq_cl_acc' AS pct_bk_pq_cl_acc,
'pct_bk_cs_cl_acc' AS pct_bk_cs_cl_acc,
'pct_bk_lsg_cl_acc' AS pct_bk_lsg_cl_acc,
'pct_bk_r_cl_acc' AS pct_bk_r_cl_acc,
'pct_bk_cf_cl_acc' AS pct_bk_cf_cl_acc,
'pct_bk_other_cl_acc' AS pct_bk_other_cl_acc,
'pct_lse_cl_acc' AS pct_lse_cl_acc,
'pct_lse_pq_cl_acc' AS pct_lse_pq_cl_acc,
'pct_lse_cs_cl_acc' AS pct_lse_cs_cl_acc,
'pct_lse_lsg_cl_acc' AS pct_lse_lsg_cl_acc,
'pct_lse_r_cl_acc' AS pct_lse_r_cl_acc,
'pct_lse_cf_cl_acc' AS pct_lse_cf_cl_acc,
'pct_lse_other_cl_acc' AS pct_lse_other_cl_acc,
'pct_un_cre_cl_acc' AS pct_un_cre_cl_acc,
'pct_un_cre_pq_cl_acc' AS pct_un_cre_pq_cl_acc,
'pct_un_cre_cs_cl_acc' AS pct_un_cre_cs_cl_acc,
'pct_un_cre_lsg_cl_acc' AS pct_un_cre_lsg_cl_acc,
'pct_un_cre_r_cl_acc' AS pct_un_cre_r_cl_acc,
'pct_un_cre_cf_cl_acc' AS pct_un_cre_cf_cl_acc,
'pct_un_cre_other_cl_acc' AS pct_un_cre_other_cl_acc,
'pct_other_fin_cl_acc' AS pct_other_fin_cl_acc,
'pct_other_fin_pq_cl_acc' AS pct_other_fin_pq_cl_acc,
'pct_other_fin_cs_cl_acc' AS pct_other_fin_cs_cl_acc,
'pct_other_fin_lsg_cl_acc' AS pct_other_fin_lsg_cl_acc,
'pct_other_fin_r_cl_acc' AS pct_other_fin_r_cl_acc,
'pct_other_fin_cf_cl_acc' AS pct_other_fin_cf_cl_acc,
'pct_other_fin_other_cl_acc' AS pct_other_fin_other_cl_acc,
'pct_gbn_cl_acc' AS pct_gbn_cl_acc,
'pct_gbn_pq_cl_acc' AS pct_gbn_pq_cl_acc,
'pct_gbn_cs_cl_acc' AS pct_gbn_cs_cl_acc,
'pct_gbn_lsg_cl_acc' AS pct_gbn_lsg_cl_acc,
'pct_gbn_r_cl_acc' AS pct_gbn_r_cl_acc,
'pct_gbn_cf_cl_acc' AS pct_gbn_cf_cl_acc,
'pct_gbn_other_cl_acc' AS pct_gbn_other_cl_acc,
'pct_brg_cl_acc' AS pct_brg_cl_acc,
'pct_brg_pq_cl_acc' AS pct_brg_pq_cl_acc,
'pct_brg_cs_cl_acc' AS pct_brg_cs_cl_acc,
'pct_brg_lsg_cl_acc' AS pct_brg_lsg_cl_acc,
'pct_brg_r_cl_acc' AS pct_brg_r_cl_acc,
'pct_brg_cf_cl_acc' AS pct_brg_cf_cl_acc,
'pct_brg_other_cl_acc' AS pct_brg_other_cl_acc,
'pct_brg_lse_cl_acc' AS pct_brg_lse_cl_acc,
'pct_brg_lse_pq_cl_acc' AS pct_brg_lse_pq_cl_acc,
'pct_brg_lse_cs_cl_acc' AS pct_brg_lse_cs_cl_acc,
'pct_brg_lse_lsg_cl_acc' AS pct_brg_lse_lsg_cl_acc,
'pct_brg_lse_r_cl_acc' AS pct_brg_lse_r_cl_acc,
'pct_brg_lse_cf_cl_acc' AS pct_brg_lse_cf_cl_acc,
'pct_brg_lse_other_cl_acc' AS pct_brg_lse_other_cl_acc;
INSERT INTO  RSS_MCV_PEQUE_VAR_CR_RESUMEN
SELECT
a.fecha , 
a.rfc,
b.num_op_acc,
b.num_bk_op_acc,
b.num_bk_pq_op_acc,
b.num_bk_cs_op_acc,
b.num_bk_lsg_op_acc,
b.num_bk_r_op_acc,
b.num_bk_cf_op_acc,
b.num_bk_other_op_acc,
b.num_lse_op_acc,
b.num_lse_pq_op_acc,
b.num_lse_cs_op_acc,
b.num_lse_lsg_op_acc,
b.num_lse_r_op_acc,
b.num_lse_cf_op_acc,
b.num_lse_other_op_acc,
b.num_un_cre_op_acc,
b.num_un_cre_pq_op_acc,
b.num_un_cre_cs_op_acc,
b.num_un_cre_lsg_op_acc,
b.num_un_cre_r_op_acc,
b.num_un_cre_cf_op_acc,
b.num_un_cre_other_op_acc,
b.num_other_fin_op_acc,
b.num_other_fin_pq_op_acc,
b.num_other_fin_cs_op_acc,
b.num_other_fin_lsg_op_acc,
b.num_other_fin_r_op_acc,
b.num_other_fin_cf_op_acc,
b.num_other_fin_other_op_acc,
b.num_gbn_op_acc,
b.num_gbn_pq_op_acc,
b.num_gbn_cs_op_acc,
b.num_gbn_lsg_op_acc,
b.num_gbn_r_op_acc,
b.num_gbn_cf_op_acc,
b.num_gbn_other_op_acc,
b.num_brg_op_acc,
b.num_brg_pq_op_acc,
b.num_brg_cs_op_acc,
b.num_brg_lsg_op_acc,
b.num_brg_r_op_acc,
b.num_brg_cf_op_acc,
b.num_brg_other_op_acc,
b.num_brg_lse_op_acc,
b.num_brg_lse_pq_op_acc,
b.num_brg_lse_cs_op_acc,
b.num_brg_lse_lsg_op_acc,
b.num_brg_lse_r_op_acc,
b.num_brg_lse_cf_op_acc,
b.num_brg_lse_other_op_acc,
b.num_cl_acc,
b.num_bk_cl_acc,
b.num_bk_pq_cl_acc,
b.num_bk_cs_cl_acc,
b.num_bk_lsg_cl_acc,
b.num_bk_r_cl_acc,
b.num_bk_cf_cl_acc,
b.num_bk_other_cl_acc,
b.num_lse_cl_acc,
b.num_lse_pq_cl_acc,
b.num_lse_cs_cl_acc,
b.num_lse_lsg_cl_acc,
b.num_lse_r_cl_acc,
b.num_lse_cf_cl_acc,
b.num_lse_other_cl_acc,
b.num_un_cre_cl_acc,
b.num_un_cre_pq_cl_acc,
b.num_un_cre_cs_cl_acc,
b.num_un_cre_lsg_cl_acc,
b.num_un_cre_r_cl_acc,
b.num_un_cre_cf_cl_acc,
b.num_un_cre_other_cl_acc,
b.num_other_fin_cl_acc,
b.num_other_fin_pq_cl_acc,
b.num_other_fin_cs_cl_acc,
b.num_other_fin_lsg_cl_acc,
b.num_other_fin_r_cl_acc,
b.num_other_fin_cf_cl_acc,
b.num_other_fin_other_cl_acc,
b.num_gbn_cl_acc,
b.num_gbn_pq_cl_acc,
b.num_gbn_cs_cl_acc,
b.num_gbn_lsg_cl_acc,
b.num_gbn_r_cl_acc,
b.num_gbn_cf_cl_acc,
b.num_gbn_other_cl_acc,
b.num_brg_cl_acc,
b.num_brg_pq_cl_acc,
b.num_brg_cs_cl_acc,
b.num_brg_lsg_cl_acc,
b.num_brg_r_cl_acc,
b.num_brg_cf_cl_acc,
b.num_brg_other_cl_acc,
b.num_brg_lse_cl_acc,
b.num_brg_lse_pq_cl_acc,
b.num_brg_lse_cs_cl_acc,
b.num_brg_lse_lsg_cl_acc,
b.num_brg_lse_r_cl_acc,
b.num_brg_lse_cf_cl_acc,
b.num_brg_lse_other_cl_acc,
b.pct_op_acc,
b.pct_bk_op_acc,
b.pct_bk_pq_op_acc,
b.pct_bk_cs_op_acc,
b.pct_bk_lsg_op_acc,
b.pct_bk_r_op_acc,
b.pct_bk_cf_op_acc,
b.pct_bk_other_op_acc,
b.pct_lse_op_acc,
b.pct_lse_pq_op_acc,
b.pct_lse_cs_op_acc,
b.pct_lse_lsg_op_acc,
b.pct_lse_r_op_acc,
b.pct_lse_cf_op_acc,
b.pct_lse_other_op_acc,
b.pct_un_cre_op_acc,
b.pct_un_cre_pq_op_acc,
b.pct_un_cre_cs_op_acc,
b.pct_un_cre_lsg_op_acc,
b.pct_un_cre_r_op_acc,
b.pct_un_cre_cf_op_acc,
b.pct_un_cre_other_op_acc,
b.pct_other_fin_op_acc,
b.pct_other_fin_pq_op_acc,
b.pct_other_fin_cs_op_acc,
b.pct_other_fin_lsg_op_acc,
b.pct_other_fin_r_op_acc,
b.pct_other_fin_cf_op_acc,
b.pct_other_fin_other_op_acc,
b.pct_gbn_op_acc,
b.pct_gbn_pq_op_acc,
b.pct_gbn_cs_op_acc,
b.pct_gbn_lsg_op_acc,
b.pct_gbn_r_op_acc,
b.pct_gbn_cf_op_acc,
b.pct_gbn_other_op_acc,
b.pct_brg_op_acc,
b.pct_brg_pq_op_acc,
b.pct_brg_cs_op_acc,
b.pct_brg_lsg_op_acc,
b.pct_brg_r_op_acc,
b.pct_brg_cf_op_acc,
b.pct_brg_other_op_acc,
b.pct_brg_lse_op_acc,
b.pct_brg_lse_pq_op_acc,
b.pct_brg_lse_cs_op_acc,
b.pct_brg_lse_lsg_op_acc,
b.pct_brg_lse_r_op_acc,
b.pct_brg_lse_cf_op_acc,
b.pct_brg_lse_other_op_acc,
b.pct_cl_acc,
b.pct_bk_cl_acc,
b.pct_bk_pq_cl_acc,
b.pct_bk_cs_cl_acc,
b.pct_bk_lsg_cl_acc,
b.pct_bk_r_cl_acc,
b.pct_bk_cf_cl_acc,
b.pct_bk_other_cl_acc,
b.pct_lse_cl_acc,
b.pct_lse_pq_cl_acc,
b.pct_lse_cs_cl_acc,
b.pct_lse_lsg_cl_acc,
b.pct_lse_r_cl_acc,
b.pct_lse_cf_cl_acc,
b.pct_lse_other_cl_acc,
b.pct_un_cre_cl_acc,
b.pct_un_cre_pq_cl_acc,
b.pct_un_cre_cs_cl_acc,
b.pct_un_cre_lsg_cl_acc,
b.pct_un_cre_r_cl_acc,
b.pct_un_cre_cf_cl_acc,
b.pct_un_cre_other_cl_acc,
b.pct_other_fin_cl_acc,
b.pct_other_fin_pq_cl_acc,
b.pct_other_fin_cs_cl_acc,
b.pct_other_fin_lsg_cl_acc,
b.pct_other_fin_r_cl_acc,
b.pct_other_fin_cf_cl_acc,
b.pct_other_fin_other_cl_acc,
b.pct_gbn_cl_acc,
b.pct_gbn_pq_cl_acc,
b.pct_gbn_cs_cl_acc,
b.pct_gbn_lsg_cl_acc,
b.pct_gbn_r_cl_acc,
b.pct_gbn_cf_cl_acc,
b.pct_gbn_other_cl_acc,
b.pct_brg_cl_acc,
b.pct_brg_pq_cl_acc,
b.pct_brg_cs_cl_acc,
b.pct_brg_lsg_cl_acc,
b.pct_brg_r_cl_acc,
b.pct_brg_cf_cl_acc,
b.pct_brg_other_cl_acc,
b.pct_brg_lse_cl_acc,
b.pct_brg_lse_pq_cl_acc,
b.pct_brg_lse_cs_cl_acc,
b.pct_brg_lse_lsg_cl_acc,
b.pct_brg_lse_r_cl_acc,
b.pct_brg_lse_cf_cl_acc,
b.pct_brg_lse_other_cl_acc
FROM JEA_MCV_UNIVERSO_RFC a
LEFT JOIN dbriskdatamart.MZM_MCV_VAR_CR_RESUMEN_201906 b
on a.folio_respuesta_bc = b.folio and a.rfc=b.rfc
where a.fecha >=201607 ;