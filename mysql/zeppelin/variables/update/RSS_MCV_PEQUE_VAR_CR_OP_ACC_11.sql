%hive


INSERT INTO RSS_MCV_PEQUE_VAR_CR_OP_ACC_11

ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_PEQUE_VAR_CR_OP_ACC_11' AS
SELECT 
a.fecha , 
a.rfc,
b.max_venc30m_op_acc,
b.max_venc30m_bk_op_acc,
b.max_venc30m_bk_pq_op_acc,
b.max_venc30m_bk_cs_op_acc,
b.max_venc30m_bk_lsg_op_acc,
b.max_venc30m_bk_r_op_acc,
b.max_venc30m_bk_cf_op_acc,
b.max_venc30m_bk_other_op_acc,
b.max_venc30m_lse_op_acc,
b.max_venc30m_lse_pq_op_acc,
b.max_venc30m_lse_cs_op_acc,
b.max_venc30m_lse_lsg_op_acc,
b.max_venc30m_lse_r_op_acc,
b.max_venc30m_lse_cf_op_acc,
b.max_venc30m_lse_other_op_acc,
b.max_venc30m_un_cre_op_acc,
b.max_venc30m_un_cre_pq_op_acc,
b.max_venc30m_un_cre_cs_op_acc,
b.max_venc30m_un_cre_lsg_op_acc,
b.max_venc30m_un_cre_r_op_acc,
b.max_venc30m_un_cre_cf_op_acc,
b.max_venc30m_un_cre_other_op_acc,
b.max_venc30m_other_fin_op_acc,
b.max_venc30m_other_fin_pq_op_acc,
b.max_venc30m_other_fin_cs_op_acc,
b.max_venc30m_other_fin_lsg_op_acc,
b.max_venc30m_other_fin_r_op_acc,
b.max_venc30m_other_fin_cf_op_acc,
b.max_venc30m_other_fin_other_op_acc,
b.max_venc30m_gbn_op_acc,
b.max_venc30m_gbn_pq_op_acc,
b.max_venc30m_gbn_cs_op_acc,
b.max_venc30m_gbn_lsg_op_acc,
b.max_venc30m_gbn_r_op_acc,
b.max_venc30m_gbn_cf_op_acc,
b.max_venc30m_gbn_other_op_acc,
b.max_venc30m_brg_op_acc,
b.max_venc30m_brg_pq_op_acc,
b.max_venc30m_brg_cs_op_acc,
b.max_venc30m_brg_lsg_op_acc,
b.max_venc30m_brg_r_op_acc,
b.max_venc30m_brg_cf_op_acc,
b.max_venc30m_brg_other_op_acc,
b.max_venc30m_brg_lse_op_acc,
b.max_venc30m_brg_lse_pq_op_acc,
b.max_venc30m_brg_lse_cs_op_acc,
b.max_venc30m_brg_lse_lsg_op_acc,
b.max_venc30m_brg_lse_r_op_acc,
b.max_venc30m_brg_lse_cf_op_acc,
b.max_venc30m_brg_lse_other_op_acc,
b.avg_venc30m_op_acc,
b.avg_venc30m_bk_op_acc,
b.avg_venc30m_bk_pq_op_acc,
b.avg_venc30m_bk_cs_op_acc,
b.avg_venc30m_bk_lsg_op_acc,
b.avg_venc30m_bk_r_op_acc,
b.avg_venc30m_bk_cf_op_acc,
b.avg_venc30m_bk_other_op_acc,
b.avg_venc30m_lse_op_acc,
b.avg_venc30m_lse_pq_op_acc,
b.avg_venc30m_lse_cs_op_acc,
b.avg_venc30m_lse_lsg_op_acc,
b.avg_venc30m_lse_r_op_acc,
b.avg_venc30m_lse_cf_op_acc,
b.avg_venc30m_lse_other_op_acc,
b.avg_venc30m_un_cre_op_acc,
b.avg_venc30m_un_cre_pq_op_acc,
b.avg_venc30m_un_cre_cs_op_acc,
b.avg_venc30m_un_cre_lsg_op_acc,
b.avg_venc30m_un_cre_r_op_acc,
b.avg_venc30m_un_cre_cf_op_acc,
b.avg_venc30m_un_cre_other_op_acc,
b.avg_venc30m_other_fin_op_acc,
b.avg_venc30m_other_fin_pq_op_acc,
b.avg_venc30m_other_fin_cs_op_acc,
b.avg_venc30m_other_fin_lsg_op_acc,
b.avg_venc30m_other_fin_r_op_acc,
b.avg_venc30m_other_fin_cf_op_acc,
b.avg_venc30m_other_fin_other_op_acc,
b.avg_venc30m_gbn_op_acc,
b.avg_venc30m_gbn_pq_op_acc,
b.avg_venc30m_gbn_cs_op_acc,
b.avg_venc30m_gbn_lsg_op_acc,
b.avg_venc30m_gbn_r_op_acc,
b.avg_venc30m_gbn_cf_op_acc,
b.avg_venc30m_gbn_other_op_acc,
b.avg_venc30m_brg_op_acc,
b.avg_venc30m_brg_pq_op_acc,
b.avg_venc30m_brg_cs_op_acc,
b.avg_venc30m_brg_lsg_op_acc,
b.avg_venc30m_brg_r_op_acc,
b.avg_venc30m_brg_cf_op_acc,
b.avg_venc30m_brg_other_op_acc,
b.avg_venc30m_brg_lse_op_acc,
b.avg_venc30m_brg_lse_pq_op_acc,
b.avg_venc30m_brg_lse_cs_op_acc,
b.avg_venc30m_brg_lse_lsg_op_acc,
b.avg_venc30m_brg_lse_r_op_acc,
b.avg_venc30m_brg_lse_cf_op_acc,
b.avg_venc30m_brg_lse_other_op_acc,
b.max_venc60m_op_acc,
b.max_venc60m_bk_op_acc,
b.max_venc60m_bk_pq_op_acc,
b.max_venc60m_bk_cs_op_acc,
b.max_venc60m_bk_lsg_op_acc,
b.max_venc60m_bk_r_op_acc,
b.max_venc60m_bk_cf_op_acc,
b.max_venc60m_bk_other_op_acc,
b.max_venc60m_lse_op_acc,
b.max_venc60m_lse_pq_op_acc,
b.max_venc60m_lse_cs_op_acc,
b.max_venc60m_lse_lsg_op_acc,
b.max_venc60m_lse_r_op_acc,
b.max_venc60m_lse_cf_op_acc,
b.max_venc60m_lse_other_op_acc,
b.max_venc60m_un_cre_op_acc,
b.max_venc60m_un_cre_pq_op_acc,
b.max_venc60m_un_cre_cs_op_acc,
b.max_venc60m_un_cre_lsg_op_acc,
b.max_venc60m_un_cre_r_op_acc,
b.max_venc60m_un_cre_cf_op_acc,
b.max_venc60m_un_cre_other_op_acc,
b.max_venc60m_other_fin_op_acc,
b.max_venc60m_other_fin_pq_op_acc,
b.max_venc60m_other_fin_cs_op_acc,
b.max_venc60m_other_fin_lsg_op_acc,
b.max_venc60m_other_fin_r_op_acc,
b.max_venc60m_other_fin_cf_op_acc,
b.max_venc60m_other_fin_other_op_acc,
b.max_venc60m_gbn_op_acc,
b.max_venc60m_gbn_pq_op_acc,
b.max_venc60m_gbn_cs_op_acc,
b.max_venc60m_gbn_lsg_op_acc,
b.max_venc60m_gbn_r_op_acc,
b.max_venc60m_gbn_cf_op_acc,
b.max_venc60m_gbn_other_op_acc,
b.max_venc60m_brg_op_acc,
b.max_venc60m_brg_pq_op_acc,
b.max_venc60m_brg_cs_op_acc,
b.max_venc60m_brg_lsg_op_acc,
b.max_venc60m_brg_r_op_acc,
b.max_venc60m_brg_cf_op_acc,
b.max_venc60m_brg_other_op_acc,
b.max_venc60m_brg_lse_op_acc,
b.max_venc60m_brg_lse_pq_op_acc,
b.max_venc60m_brg_lse_cs_op_acc,
b.max_venc60m_brg_lse_lsg_op_acc,
b.max_venc60m_brg_lse_r_op_acc,
b.max_venc60m_brg_lse_cf_op_acc,
b.max_venc60m_brg_lse_other_op_acc,
b.avg_venc60m_op_acc,
b.avg_venc60m_bk_op_acc,
b.avg_venc60m_bk_pq_op_acc,
b.avg_venc60m_bk_cs_op_acc,
b.avg_venc60m_bk_lsg_op_acc,
b.avg_venc60m_bk_r_op_acc,
b.avg_venc60m_bk_cf_op_acc,
b.avg_venc60m_bk_other_op_acc,
b.avg_venc60m_lse_op_acc,
b.avg_venc60m_lse_pq_op_acc,
b.avg_venc60m_lse_cs_op_acc,
b.avg_venc60m_lse_lsg_op_acc,
b.avg_venc60m_lse_r_op_acc,
b.avg_venc60m_lse_cf_op_acc,
b.avg_venc60m_lse_other_op_acc,
b.avg_venc60m_un_cre_op_acc,
b.avg_venc60m_un_cre_pq_op_acc,
b.avg_venc60m_un_cre_cs_op_acc,
b.avg_venc60m_un_cre_lsg_op_acc,
b.avg_venc60m_un_cre_r_op_acc,
b.avg_venc60m_un_cre_cf_op_acc,
b.avg_venc60m_un_cre_other_op_acc,
b.avg_venc60m_other_fin_op_acc,
b.avg_venc60m_other_fin_pq_op_acc,
b.avg_venc60m_other_fin_cs_op_acc,
b.avg_venc60m_other_fin_lsg_op_acc,
b.avg_venc60m_other_fin_r_op_acc,
b.avg_venc60m_other_fin_cf_op_acc,
b.avg_venc60m_other_fin_other_op_acc,
b.avg_venc60m_gbn_op_acc,
b.avg_venc60m_gbn_pq_op_acc,
b.avg_venc60m_gbn_cs_op_acc,
b.avg_venc60m_gbn_lsg_op_acc,
b.avg_venc60m_gbn_r_op_acc,
b.avg_venc60m_gbn_cf_op_acc,
b.avg_venc60m_gbn_other_op_acc,
b.avg_venc60m_brg_op_acc,
b.avg_venc60m_brg_pq_op_acc,
b.avg_venc60m_brg_cs_op_acc,
b.avg_venc60m_brg_lsg_op_acc,
b.avg_venc60m_brg_r_op_acc,
b.avg_venc60m_brg_cf_op_acc,
b.avg_venc60m_brg_other_op_acc,
b.avg_venc60m_brg_lse_op_acc,
b.avg_venc60m_brg_lse_pq_op_acc,
b.avg_venc60m_brg_lse_cs_op_acc,
b.avg_venc60m_brg_lse_lsg_op_acc,
b.avg_venc60m_brg_lse_r_op_acc,
b.avg_venc60m_brg_lse_cf_op_acc,
b.avg_venc60m_brg_lse_other_op_acc,
b.max_venc90m_op_acc,
b.max_venc90m_bk_op_acc,
b.max_venc90m_bk_pq_op_acc,
b.max_venc90m_bk_cs_op_acc,
b.max_venc90m_bk_lsg_op_acc,
b.max_venc90m_bk_r_op_acc,
b.max_venc90m_bk_cf_op_acc,
b.max_venc90m_bk_other_op_acc,
b.max_venc90m_lse_op_acc,
b.max_venc90m_lse_pq_op_acc,
b.max_venc90m_lse_cs_op_acc,
b.max_venc90m_lse_lsg_op_acc,
b.max_venc90m_lse_r_op_acc,
b.max_venc90m_lse_cf_op_acc,
b.max_venc90m_lse_other_op_acc,
b.max_venc90m_un_cre_op_acc,
b.max_venc90m_un_cre_pq_op_acc,
b.max_venc90m_un_cre_cs_op_acc,
b.max_venc90m_un_cre_lsg_op_acc,
b.max_venc90m_un_cre_r_op_acc,
b.max_venc90m_un_cre_cf_op_acc,
b.max_venc90m_un_cre_other_op_acc,
b.max_venc90m_other_fin_op_acc,
b.max_venc90m_other_fin_pq_op_acc,
b.max_venc90m_other_fin_cs_op_acc,
b.max_venc90m_other_fin_lsg_op_acc,
b.max_venc90m_other_fin_r_op_acc,
b.max_venc90m_other_fin_cf_op_acc,
b.max_venc90m_other_fin_other_op_acc,
b.max_venc90m_gbn_op_acc,
b.max_venc90m_gbn_pq_op_acc,
b.max_venc90m_gbn_cs_op_acc,
b.max_venc90m_gbn_lsg_op_acc,
b.max_venc90m_gbn_r_op_acc,
b.max_venc90m_gbn_cf_op_acc,
b.max_venc90m_gbn_other_op_acc,
b.max_venc90m_brg_op_acc,
b.max_venc90m_brg_pq_op_acc,
b.max_venc90m_brg_cs_op_acc,
b.max_venc90m_brg_lsg_op_acc,
b.max_venc90m_brg_r_op_acc,
b.max_venc90m_brg_cf_op_acc,
b.max_venc90m_brg_other_op_acc,
b.max_venc90m_brg_lse_op_acc,
b.max_venc90m_brg_lse_pq_op_acc,
b.max_venc90m_brg_lse_cs_op_acc,
b.max_venc90m_brg_lse_lsg_op_acc,
b.max_venc90m_brg_lse_r_op_acc,
b.max_venc90m_brg_lse_cf_op_acc,
b.max_venc90m_brg_lse_other_op_acc,
b.avg_venc90m_op_acc,
b.avg_venc90m_bk_op_acc,
b.avg_venc90m_bk_pq_op_acc,
b.avg_venc90m_bk_cs_op_acc,
b.avg_venc90m_bk_lsg_op_acc,
b.avg_venc90m_bk_r_op_acc,
b.avg_venc90m_bk_cf_op_acc,
b.avg_venc90m_bk_other_op_acc,
b.avg_venc90m_lse_op_acc,
b.avg_venc90m_lse_pq_op_acc,
b.avg_venc90m_lse_cs_op_acc,
b.avg_venc90m_lse_lsg_op_acc,
b.avg_venc90m_lse_r_op_acc,
b.avg_venc90m_lse_cf_op_acc,
b.avg_venc90m_lse_other_op_acc,
b.avg_venc90m_un_cre_op_acc,
b.avg_venc90m_un_cre_pq_op_acc,
b.avg_venc90m_un_cre_cs_op_acc,
b.avg_venc90m_un_cre_lsg_op_acc,
b.avg_venc90m_un_cre_r_op_acc,
b.avg_venc90m_un_cre_cf_op_acc,
b.avg_venc90m_un_cre_other_op_acc,
b.avg_venc90m_other_fin_op_acc,
b.avg_venc90m_other_fin_pq_op_acc,
b.avg_venc90m_other_fin_cs_op_acc,
b.avg_venc90m_other_fin_lsg_op_acc,
b.avg_venc90m_other_fin_r_op_acc,
b.avg_venc90m_other_fin_cf_op_acc,
b.avg_venc90m_other_fin_other_op_acc,
b.avg_venc90m_gbn_op_acc,
b.avg_venc90m_gbn_pq_op_acc,
b.avg_venc90m_gbn_cs_op_acc,
b.avg_venc90m_gbn_lsg_op_acc,
b.avg_venc90m_gbn_r_op_acc,
b.avg_venc90m_gbn_cf_op_acc,
b.avg_venc90m_gbn_other_op_acc,
b.avg_venc90m_brg_op_acc,
b.avg_venc90m_brg_pq_op_acc,
b.avg_venc90m_brg_cs_op_acc,
b.avg_venc90m_brg_lsg_op_acc,
b.avg_venc90m_brg_r_op_acc,
b.avg_venc90m_brg_cf_op_acc,
b.avg_venc90m_brg_other_op_acc,
b.avg_venc90m_brg_lse_op_acc,
b.avg_venc90m_brg_lse_pq_op_acc,
b.avg_venc90m_brg_lse_cs_op_acc,
b.avg_venc90m_brg_lse_lsg_op_acc,
b.avg_venc90m_brg_lse_r_op_acc,
b.avg_venc90m_brg_lse_cf_op_acc,
b.avg_venc90m_brg_lse_other_op_acc,
b.max_venc120m_op_acc,
b.max_venc120m_bk_op_acc,
b.max_venc120m_bk_pq_op_acc,
b.max_venc120m_bk_cs_op_acc,
b.max_venc120m_bk_lsg_op_acc,
b.max_venc120m_bk_r_op_acc,
b.max_venc120m_bk_cf_op_acc,
b.max_venc120m_bk_other_op_acc,
b.max_venc120m_lse_op_acc,
b.max_venc120m_lse_pq_op_acc,
b.max_venc120m_lse_cs_op_acc,
b.max_venc120m_lse_lsg_op_acc,
b.max_venc120m_lse_r_op_acc,
b.max_venc120m_lse_cf_op_acc,
b.max_venc120m_lse_other_op_acc,
b.max_venc120m_un_cre_op_acc,
b.max_venc120m_un_cre_pq_op_acc,
b.max_venc120m_un_cre_cs_op_acc,
b.max_venc120m_un_cre_lsg_op_acc,
b.max_venc120m_un_cre_r_op_acc,
b.max_venc120m_un_cre_cf_op_acc,
b.max_venc120m_un_cre_other_op_acc,
b.max_venc120m_other_fin_op_acc,
b.max_venc120m_other_fin_pq_op_acc,
b.max_venc120m_other_fin_cs_op_acc,
b.max_venc120m_other_fin_lsg_op_acc,
b.max_venc120m_other_fin_r_op_acc,
b.max_venc120m_other_fin_cf_op_acc,
b.max_venc120m_other_fin_other_op_acc,
b.max_venc120m_gbn_op_acc,
b.max_venc120m_gbn_pq_op_acc,
b.max_venc120m_gbn_cs_op_acc,
b.max_venc120m_gbn_lsg_op_acc,
b.max_venc120m_gbn_r_op_acc,
b.max_venc120m_gbn_cf_op_acc,
b.max_venc120m_gbn_other_op_acc,
b.max_venc120m_brg_op_acc,
b.max_venc120m_brg_pq_op_acc,
b.max_venc120m_brg_cs_op_acc,
b.max_venc120m_brg_lsg_op_acc,
b.max_venc120m_brg_r_op_acc,
b.max_venc120m_brg_cf_op_acc,
b.max_venc120m_brg_other_op_acc,
b.max_venc120m_brg_lse_op_acc,
b.max_venc120m_brg_lse_pq_op_acc,
b.max_venc120m_brg_lse_cs_op_acc,
b.max_venc120m_brg_lse_lsg_op_acc,
b.max_venc120m_brg_lse_r_op_acc,
b.max_venc120m_brg_lse_cf_op_acc,
b.max_venc120m_brg_lse_other_op_acc,
b.avg_venc120m_op_acc,
b.avg_venc120m_bk_op_acc,
b.avg_venc120m_bk_pq_op_acc,
b.avg_venc120m_bk_cs_op_acc,
b.avg_venc120m_bk_lsg_op_acc,
b.avg_venc120m_bk_r_op_acc,
b.avg_venc120m_bk_cf_op_acc,
b.avg_venc120m_bk_other_op_acc,
b.avg_venc120m_lse_op_acc,
b.avg_venc120m_lse_pq_op_acc,
b.avg_venc120m_lse_cs_op_acc,
b.avg_venc120m_lse_lsg_op_acc,
b.avg_venc120m_lse_r_op_acc,
b.avg_venc120m_lse_cf_op_acc,
b.avg_venc120m_lse_other_op_acc,
b.avg_venc120m_un_cre_op_acc,
b.avg_venc120m_un_cre_pq_op_acc,
b.avg_venc120m_un_cre_cs_op_acc,
b.avg_venc120m_un_cre_lsg_op_acc,
b.avg_venc120m_un_cre_r_op_acc,
b.avg_venc120m_un_cre_cf_op_acc,
b.avg_venc120m_un_cre_other_op_acc,
b.avg_venc120m_other_fin_op_acc,
b.avg_venc120m_other_fin_pq_op_acc,
b.avg_venc120m_other_fin_cs_op_acc,
b.avg_venc120m_other_fin_lsg_op_acc,
b.avg_venc120m_other_fin_r_op_acc,
b.avg_venc120m_other_fin_cf_op_acc,
b.avg_venc120m_other_fin_other_op_acc,
b.avg_venc120m_gbn_op_acc,
b.avg_venc120m_gbn_pq_op_acc,
b.avg_venc120m_gbn_cs_op_acc,
b.avg_venc120m_gbn_lsg_op_acc,
b.avg_venc120m_gbn_r_op_acc,
b.avg_venc120m_gbn_cf_op_acc,
b.avg_venc120m_gbn_other_op_acc,
b.avg_venc120m_brg_op_acc,
b.avg_venc120m_brg_pq_op_acc,
b.avg_venc120m_brg_cs_op_acc,
b.avg_venc120m_brg_lsg_op_acc,
b.avg_venc120m_brg_r_op_acc,
b.avg_venc120m_brg_cf_op_acc,
b.avg_venc120m_brg_other_op_acc,
b.avg_venc120m_brg_lse_op_acc,
b.avg_venc120m_brg_lse_pq_op_acc,
b.avg_venc120m_brg_lse_cs_op_acc,
b.avg_venc120m_brg_lse_lsg_op_acc,
b.avg_venc120m_brg_lse_r_op_acc,
b.avg_venc120m_brg_lse_cf_op_acc,
b.avg_venc120m_brg_lse_other_op_acc,
b.max_pct_venc29_op_acc,
b.max_pct_venc29_bk_op_acc,
b.max_pct_venc29_bk_pq_op_acc,
b.max_pct_venc29_bk_cs_op_acc,
b.max_pct_venc29_bk_lsg_op_acc,
b.max_pct_venc29_bk_r_op_acc,
b.max_pct_venc29_bk_cf_op_acc,
b.max_pct_venc29_bk_other_op_acc,
b.max_pct_venc29_lse_op_acc,
b.max_pct_venc29_lse_pq_op_acc,
b.max_pct_venc29_lse_cs_op_acc,
b.max_pct_venc29_lse_lsg_op_acc,
b.max_pct_venc29_lse_r_op_acc,
b.max_pct_venc29_lse_cf_op_acc,
b.max_pct_venc29_lse_other_op_acc,
b.max_pct_venc29_un_cre_op_acc,
b.max_pct_venc29_un_cre_pq_op_acc,
b.max_pct_venc29_un_cre_cs_op_acc,
b.max_pct_venc29_un_cre_lsg_op_acc,
b.max_pct_venc29_un_cre_r_op_acc,
b.max_pct_venc29_un_cre_cf_op_acc,
b.max_pct_venc29_un_cre_other_op_acc,
b.max_pct_venc29_other_fin_op_acc,
b.max_pct_venc29_other_fin_pq_op_acc,
b.max_pct_venc29_other_fin_cs_op_acc,
b.max_pct_venc29_other_fin_lsg_op_acc,
b.max_pct_venc29_other_fin_r_op_acc,
b.max_pct_venc29_other_fin_cf_op_acc,
b.max_pct_venc29_other_fin_other_op_acc,
b.max_pct_venc29_gbn_op_acc,
b.max_pct_venc29_gbn_pq_op_acc,
b.max_pct_venc29_gbn_cs_op_acc,
b.max_pct_venc29_gbn_lsg_op_acc,
b.max_pct_venc29_gbn_r_op_acc,
b.max_pct_venc29_gbn_cf_op_acc,
b.max_pct_venc29_gbn_other_op_acc,
b.max_pct_venc29_brg_op_acc,
b.max_pct_venc29_brg_pq_op_acc,
b.max_pct_venc29_brg_cs_op_acc,
b.max_pct_venc29_brg_lsg_op_acc,
b.max_pct_venc29_brg_r_op_acc,
b.max_pct_venc29_brg_cf_op_acc,
b.max_pct_venc29_brg_other_op_acc,
b.max_pct_venc29_brg_lse_op_acc,
b.max_pct_venc29_brg_lse_pq_op_acc,
b.max_pct_venc29_brg_lse_cs_op_acc,
b.max_pct_venc29_brg_lse_lsg_op_acc,
b.max_pct_venc29_brg_lse_r_op_acc,
b.max_pct_venc29_brg_lse_cf_op_acc,
b.max_pct_venc29_brg_lse_other_op_acc,
b.avg_pct_venc29_op_acc,
b.avg_pct_venc29_bk_op_acc,
b.avg_pct_venc29_bk_pq_op_acc,
b.avg_pct_venc29_bk_cs_op_acc,
b.avg_pct_venc29_bk_lsg_op_acc,
b.avg_pct_venc29_bk_r_op_acc,
b.avg_pct_venc29_bk_cf_op_acc,
b.avg_pct_venc29_bk_other_op_acc,
b.avg_pct_venc29_lse_op_acc,
b.avg_pct_venc29_lse_pq_op_acc,
b.avg_pct_venc29_lse_cs_op_acc,
b.avg_pct_venc29_lse_lsg_op_acc,
b.avg_pct_venc29_lse_r_op_acc,
b.avg_pct_venc29_lse_cf_op_acc,
b.avg_pct_venc29_lse_other_op_acc,
b.avg_pct_venc29_un_cre_op_acc,
b.avg_pct_venc29_un_cre_pq_op_acc,
b.avg_pct_venc29_un_cre_cs_op_acc,
b.avg_pct_venc29_un_cre_lsg_op_acc,
b.avg_pct_venc29_un_cre_r_op_acc,
b.avg_pct_venc29_un_cre_cf_op_acc,
b.avg_pct_venc29_un_cre_other_op_acc,
b.avg_pct_venc29_other_fin_op_acc,
b.avg_pct_venc29_other_fin_pq_op_acc,
b.avg_pct_venc29_other_fin_cs_op_acc,
b.avg_pct_venc29_other_fin_lsg_op_acc,
b.avg_pct_venc29_other_fin_r_op_acc,
b.avg_pct_venc29_other_fin_cf_op_acc,
b.avg_pct_venc29_other_fin_other_op_acc,
b.avg_pct_venc29_gbn_op_acc,
b.avg_pct_venc29_gbn_pq_op_acc,
b.avg_pct_venc29_gbn_cs_op_acc,
b.avg_pct_venc29_gbn_lsg_op_acc,
b.avg_pct_venc29_gbn_r_op_acc,
b.avg_pct_venc29_gbn_cf_op_acc,
b.avg_pct_venc29_gbn_other_op_acc,
b.avg_pct_venc29_brg_op_acc,
b.avg_pct_venc29_brg_pq_op_acc,
b.avg_pct_venc29_brg_cs_op_acc,
b.avg_pct_venc29_brg_lsg_op_acc,
b.avg_pct_venc29_brg_r_op_acc,
b.avg_pct_venc29_brg_cf_op_acc,
b.avg_pct_venc29_brg_other_op_acc,
b.avg_pct_venc29_brg_lse_op_acc,
b.avg_pct_venc29_brg_lse_pq_op_acc,
b.avg_pct_venc29_brg_lse_cs_op_acc,
b.avg_pct_venc29_brg_lse_lsg_op_acc,
b.avg_pct_venc29_brg_lse_r_op_acc,
b.avg_pct_venc29_brg_lse_cf_op_acc,
b.avg_pct_venc29_brg_lse_other_op_acc,
b.max_pct_venc59_op_acc,
b.max_pct_venc59_bk_op_acc,
b.max_pct_venc59_bk_pq_op_acc,
b.max_pct_venc59_bk_cs_op_acc,
b.max_pct_venc59_bk_lsg_op_acc,
b.max_pct_venc59_bk_r_op_acc,
b.max_pct_venc59_bk_cf_op_acc,
b.max_pct_venc59_bk_other_op_acc,
b.max_pct_venc59_lse_op_acc,
b.max_pct_venc59_lse_pq_op_acc,
b.max_pct_venc59_lse_cs_op_acc,
b.max_pct_venc59_lse_lsg_op_acc,
b.max_pct_venc59_lse_r_op_acc,
b.max_pct_venc59_lse_cf_op_acc,
b.max_pct_venc59_lse_other_op_acc,
b.max_pct_venc59_un_cre_op_acc,
b.max_pct_venc59_un_cre_pq_op_acc,
b.max_pct_venc59_un_cre_cs_op_acc,
b.max_pct_venc59_un_cre_lsg_op_acc,
b.max_pct_venc59_un_cre_r_op_acc,
b.max_pct_venc59_un_cre_cf_op_acc,
b.max_pct_venc59_un_cre_other_op_acc,
b.max_pct_venc59_other_fin_op_acc,
b.max_pct_venc59_other_fin_pq_op_acc,
b.max_pct_venc59_other_fin_cs_op_acc,
b.max_pct_venc59_other_fin_lsg_op_acc,
b.max_pct_venc59_other_fin_r_op_acc,
b.max_pct_venc59_other_fin_cf_op_acc,
b.max_pct_venc59_other_fin_other_op_acc,
b.max_pct_venc59_gbn_op_acc,
b.max_pct_venc59_gbn_pq_op_acc,
b.max_pct_venc59_gbn_cs_op_acc,
b.max_pct_venc59_gbn_lsg_op_acc,
b.max_pct_venc59_gbn_r_op_acc,
b.max_pct_venc59_gbn_cf_op_acc,
b.max_pct_venc59_gbn_other_op_acc,
b.max_pct_venc59_brg_op_acc,
b.max_pct_venc59_brg_pq_op_acc,
b.max_pct_venc59_brg_cs_op_acc,
b.max_pct_venc59_brg_lsg_op_acc,
b.max_pct_venc59_brg_r_op_acc,
b.max_pct_venc59_brg_cf_op_acc,
b.max_pct_venc59_brg_other_op_acc,
b.max_pct_venc59_brg_lse_op_acc,
b.max_pct_venc59_brg_lse_pq_op_acc,
b.max_pct_venc59_brg_lse_cs_op_acc,
b.max_pct_venc59_brg_lse_lsg_op_acc,
b.max_pct_venc59_brg_lse_r_op_acc,
b.max_pct_venc59_brg_lse_cf_op_acc,
b.max_pct_venc59_brg_lse_other_op_acc,
b.avg_pct_venc59_op_acc,
b.avg_pct_venc59_bk_op_acc,
b.avg_pct_venc59_bk_pq_op_acc,
b.avg_pct_venc59_bk_cs_op_acc,
b.avg_pct_venc59_bk_lsg_op_acc,
b.avg_pct_venc59_bk_r_op_acc,
b.avg_pct_venc59_bk_cf_op_acc,
b.avg_pct_venc59_bk_other_op_acc,
b.avg_pct_venc59_lse_op_acc,
b.avg_pct_venc59_lse_pq_op_acc,
b.avg_pct_venc59_lse_cs_op_acc,
b.avg_pct_venc59_lse_lsg_op_acc,
b.avg_pct_venc59_lse_r_op_acc,
b.avg_pct_venc59_lse_cf_op_acc,
b.avg_pct_venc59_lse_other_op_acc,
b.avg_pct_venc59_un_cre_op_acc,
b.avg_pct_venc59_un_cre_pq_op_acc,
b.avg_pct_venc59_un_cre_cs_op_acc,
b.avg_pct_venc59_un_cre_lsg_op_acc,
b.avg_pct_venc59_un_cre_r_op_acc,
b.avg_pct_venc59_un_cre_cf_op_acc,
b.avg_pct_venc59_un_cre_other_op_acc,
b.avg_pct_venc59_other_fin_op_acc,
b.avg_pct_venc59_other_fin_pq_op_acc,
b.avg_pct_venc59_other_fin_cs_op_acc,
b.avg_pct_venc59_other_fin_lsg_op_acc,
b.avg_pct_venc59_other_fin_r_op_acc,
b.avg_pct_venc59_other_fin_cf_op_acc,
b.avg_pct_venc59_other_fin_other_op_acc,
b.avg_pct_venc59_gbn_op_acc,
b.avg_pct_venc59_gbn_pq_op_acc,
b.avg_pct_venc59_gbn_cs_op_acc,
b.avg_pct_venc59_gbn_lsg_op_acc,
b.avg_pct_venc59_gbn_r_op_acc,
b.avg_pct_venc59_gbn_cf_op_acc,
b.avg_pct_venc59_gbn_other_op_acc,
b.avg_pct_venc59_brg_op_acc,
b.avg_pct_venc59_brg_pq_op_acc,
b.avg_pct_venc59_brg_cs_op_acc,
b.avg_pct_venc59_brg_lsg_op_acc,
b.avg_pct_venc59_brg_r_op_acc,
b.avg_pct_venc59_brg_cf_op_acc,
b.avg_pct_venc59_brg_other_op_acc,
b.avg_pct_venc59_brg_lse_op_acc,
b.avg_pct_venc59_brg_lse_pq_op_acc,
b.avg_pct_venc59_brg_lse_cs_op_acc,
b.avg_pct_venc59_brg_lse_lsg_op_acc,
b.avg_pct_venc59_brg_lse_r_op_acc,
b.avg_pct_venc59_brg_lse_cf_op_acc,
b.avg_pct_venc59_brg_lse_other_op_acc,
b.max_pct_venc89_op_acc,
b.max_pct_venc89_bk_op_acc,
b.max_pct_venc89_bk_pq_op_acc,
b.max_pct_venc89_bk_cs_op_acc,
b.max_pct_venc89_bk_lsg_op_acc,
b.max_pct_venc89_bk_r_op_acc,
b.max_pct_venc89_bk_cf_op_acc,
b.max_pct_venc89_bk_other_op_acc,
b.max_pct_venc89_lse_op_acc,
b.max_pct_venc89_lse_pq_op_acc,
b.max_pct_venc89_lse_cs_op_acc,
b.max_pct_venc89_lse_lsg_op_acc,
b.max_pct_venc89_lse_r_op_acc,
b.max_pct_venc89_lse_cf_op_acc,
b.max_pct_venc89_lse_other_op_acc,
b.max_pct_venc89_un_cre_op_acc,
b.max_pct_venc89_un_cre_pq_op_acc,
b.max_pct_venc89_un_cre_cs_op_acc,
b.max_pct_venc89_un_cre_lsg_op_acc,
b.max_pct_venc89_un_cre_r_op_acc,
b.max_pct_venc89_un_cre_cf_op_acc,
b.max_pct_venc89_un_cre_other_op_acc,
b.max_pct_venc89_other_fin_op_acc,
b.max_pct_venc89_other_fin_pq_op_acc,
b.max_pct_venc89_other_fin_cs_op_acc,
b.max_pct_venc89_other_fin_lsg_op_acc,
b.max_pct_venc89_other_fin_r_op_acc,
b.max_pct_venc89_other_fin_cf_op_acc,
b.max_pct_venc89_other_fin_other_op_acc,
b.max_pct_venc89_gbn_op_acc,
b.max_pct_venc89_gbn_pq_op_acc,
b.max_pct_venc89_gbn_cs_op_acc,
b.max_pct_venc89_gbn_lsg_op_acc,
b.max_pct_venc89_gbn_r_op_acc,
b.max_pct_venc89_gbn_cf_op_acc,
b.max_pct_venc89_gbn_other_op_acc,
b.max_pct_venc89_brg_op_acc,
b.max_pct_venc89_brg_pq_op_acc,
b.max_pct_venc89_brg_cs_op_acc,
b.max_pct_venc89_brg_lsg_op_acc,
b.max_pct_venc89_brg_r_op_acc,
b.max_pct_venc89_brg_cf_op_acc,
b.max_pct_venc89_brg_other_op_acc,
b.max_pct_venc89_brg_lse_op_acc,
b.max_pct_venc89_brg_lse_pq_op_acc,
b.max_pct_venc89_brg_lse_cs_op_acc,
b.max_pct_venc89_brg_lse_lsg_op_acc,
b.max_pct_venc89_brg_lse_r_op_acc,
b.max_pct_venc89_brg_lse_cf_op_acc,
b.max_pct_venc89_brg_lse_other_op_acc,
b.avg_pct_venc89_op_acc,
b.avg_pct_venc89_bk_op_acc,
b.avg_pct_venc89_bk_pq_op_acc,
b.avg_pct_venc89_bk_cs_op_acc,
b.avg_pct_venc89_bk_lsg_op_acc,
b.avg_pct_venc89_bk_r_op_acc,
b.avg_pct_venc89_bk_cf_op_acc,
b.avg_pct_venc89_bk_other_op_acc,
b.avg_pct_venc89_lse_op_acc,
b.avg_pct_venc89_lse_pq_op_acc,
b.avg_pct_venc89_lse_cs_op_acc,
b.avg_pct_venc89_lse_lsg_op_acc,
b.avg_pct_venc89_lse_r_op_acc,
b.avg_pct_venc89_lse_cf_op_acc,
b.avg_pct_venc89_lse_other_op_acc,
b.avg_pct_venc89_un_cre_op_acc,
b.avg_pct_venc89_un_cre_pq_op_acc,
b.avg_pct_venc89_un_cre_cs_op_acc,
b.avg_pct_venc89_un_cre_lsg_op_acc,
b.avg_pct_venc89_un_cre_r_op_acc,
b.avg_pct_venc89_un_cre_cf_op_acc,
b.avg_pct_venc89_un_cre_other_op_acc,
b.avg_pct_venc89_other_fin_op_acc,
b.avg_pct_venc89_other_fin_pq_op_acc,
b.avg_pct_venc89_other_fin_cs_op_acc,
b.avg_pct_venc89_other_fin_lsg_op_acc,
b.avg_pct_venc89_other_fin_r_op_acc,
b.avg_pct_venc89_other_fin_cf_op_acc,
b.avg_pct_venc89_other_fin_other_op_acc,
b.avg_pct_venc89_gbn_op_acc,
b.avg_pct_venc89_gbn_pq_op_acc,
b.avg_pct_venc89_gbn_cs_op_acc,
b.avg_pct_venc89_gbn_lsg_op_acc,
b.avg_pct_venc89_gbn_r_op_acc,
b.avg_pct_venc89_gbn_cf_op_acc,
b.avg_pct_venc89_gbn_other_op_acc,
b.avg_pct_venc89_brg_op_acc,
b.avg_pct_venc89_brg_pq_op_acc,
b.avg_pct_venc89_brg_cs_op_acc,
b.avg_pct_venc89_brg_lsg_op_acc,
b.avg_pct_venc89_brg_r_op_acc,
b.avg_pct_venc89_brg_cf_op_acc,
b.avg_pct_venc89_brg_other_op_acc,
b.avg_pct_venc89_brg_lse_op_acc,
b.avg_pct_venc89_brg_lse_pq_op_acc,
b.avg_pct_venc89_brg_lse_cs_op_acc,
b.avg_pct_venc89_brg_lse_lsg_op_acc,
b.avg_pct_venc89_brg_lse_r_op_acc,
b.avg_pct_venc89_brg_lse_cf_op_acc,
b.avg_pct_venc89_brg_lse_other_op_acc
FROM JEA_MCV_UNIVERSO_RFC a
LEFT JOIN dbriskdatamart.MZM_MCV_VAR_CR_OP_ACC_11_201902 b
on a.folio_respuesta_bc = b.folio and a.rfc=b.rfc
where a.fecha >=201607 ;