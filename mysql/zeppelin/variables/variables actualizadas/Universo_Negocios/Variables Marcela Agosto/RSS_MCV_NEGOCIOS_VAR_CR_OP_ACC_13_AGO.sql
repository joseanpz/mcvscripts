%hive
DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_VAR_CR_OP_ACC_13_AGO;

CREATE TABLE  RSS_MCV_NEGOCIOS_VAR_CR_OP_ACC_13_AGO
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Agosto/RSS_MCV_NEGOCIOS_VAR_CR_OP_ACC_13_AGO' AS
SELECT  
 'fecha' AS fecha,
'rfc' as rfc ,
'max_pct_venc90m_op_acc' AS max_pct_venc90m_op_acc,
'max_pct_venc90m_bk_op_acc' AS max_pct_venc90m_bk_op_acc,
'max_pct_venc90m_bk_pq_op_acc' AS max_pct_venc90m_bk_pq_op_acc,
'max_pct_venc90m_bk_cs_op_acc' AS max_pct_venc90m_bk_cs_op_acc,
'max_pct_venc90m_bk_lsg_op_acc' AS max_pct_venc90m_bk_lsg_op_acc,
'max_pct_venc90m_bk_r_op_acc' AS max_pct_venc90m_bk_r_op_acc,
'max_pct_venc90m_bk_cf_op_acc' AS max_pct_venc90m_bk_cf_op_acc,
'max_pct_venc90m_bk_other_op_acc' AS max_pct_venc90m_bk_other_op_acc,
'max_pct_venc90m_lse_op_acc' AS max_pct_venc90m_lse_op_acc,
'max_pct_venc90m_lse_pq_op_acc' AS max_pct_venc90m_lse_pq_op_acc,
'max_pct_venc90m_lse_cs_op_acc' AS max_pct_venc90m_lse_cs_op_acc,
'max_pct_venc90m_lse_lsg_op_acc' AS max_pct_venc90m_lse_lsg_op_acc,
'max_pct_venc90m_lse_r_op_acc' AS max_pct_venc90m_lse_r_op_acc,
'max_pct_venc90m_lse_cf_op_acc' AS max_pct_venc90m_lse_cf_op_acc,
'max_pct_venc90m_lse_other_op_acc' AS max_pct_venc90m_lse_other_op_acc,
'max_pct_venc90m_un_cre_op_acc' AS max_pct_venc90m_un_cre_op_acc,
'max_pct_venc90m_un_cre_pq_op_acc' AS max_pct_venc90m_un_cre_pq_op_acc,
'max_pct_venc90m_un_cre_cs_op_acc' AS max_pct_venc90m_un_cre_cs_op_acc,
'max_pct_venc90m_un_cre_lsg_op_acc' AS max_pct_venc90m_un_cre_lsg_op_acc,
'max_pct_venc90m_un_cre_r_op_acc' AS max_pct_venc90m_un_cre_r_op_acc,
'max_pct_venc90m_un_cre_cf_op_acc' AS max_pct_venc90m_un_cre_cf_op_acc,
'max_pct_venc90m_un_cre_other_op_acc' AS max_pct_venc90m_un_cre_other_op_acc,
'max_pct_venc90m_other_fin_op_acc' AS max_pct_venc90m_other_fin_op_acc,
'max_pct_venc90m_other_fin_pq_op_acc' AS max_pct_venc90m_other_fin_pq_op_acc,
'max_pct_venc90m_other_fin_cs_op_acc' AS max_pct_venc90m_other_fin_cs_op_acc,
'max_pct_venc90m_other_fin_lsg_op_acc' AS max_pct_venc90m_other_fin_lsg_op_acc,
'max_pct_venc90m_other_fin_r_op_acc' AS max_pct_venc90m_other_fin_r_op_acc,
'max_pct_venc90m_other_fin_cf_op_acc' AS max_pct_venc90m_other_fin_cf_op_acc,
'max_pct_venc90m_other_fin_other_op_acc' AS max_pct_venc90m_other_fin_other_op_acc,
'max_pct_venc90m_gbn_op_acc' AS max_pct_venc90m_gbn_op_acc,
'max_pct_venc90m_gbn_pq_op_acc' AS max_pct_venc90m_gbn_pq_op_acc,
'max_pct_venc90m_gbn_cs_op_acc' AS max_pct_venc90m_gbn_cs_op_acc,
'max_pct_venc90m_gbn_lsg_op_acc' AS max_pct_venc90m_gbn_lsg_op_acc,
'max_pct_venc90m_gbn_r_op_acc' AS max_pct_venc90m_gbn_r_op_acc,
'max_pct_venc90m_gbn_cf_op_acc' AS max_pct_venc90m_gbn_cf_op_acc,
'max_pct_venc90m_gbn_other_op_acc' AS max_pct_venc90m_gbn_other_op_acc,
'max_pct_venc90m_brg_op_acc' AS max_pct_venc90m_brg_op_acc,
'max_pct_venc90m_brg_pq_op_acc' AS max_pct_venc90m_brg_pq_op_acc,
'max_pct_venc90m_brg_cs_op_acc' AS max_pct_venc90m_brg_cs_op_acc,
'max_pct_venc90m_brg_lsg_op_acc' AS max_pct_venc90m_brg_lsg_op_acc,
'max_pct_venc90m_brg_r_op_acc' AS max_pct_venc90m_brg_r_op_acc,
'max_pct_venc90m_brg_cf_op_acc' AS max_pct_venc90m_brg_cf_op_acc,
'max_pct_venc90m_brg_other_op_acc' AS max_pct_venc90m_brg_other_op_acc,
'max_pct_venc90m_brg_lse_op_acc' AS max_pct_venc90m_brg_lse_op_acc,
'max_pct_venc90m_brg_lse_pq_op_acc' AS max_pct_venc90m_brg_lse_pq_op_acc,
'max_pct_venc90m_brg_lse_cs_op_acc' AS max_pct_venc90m_brg_lse_cs_op_acc,
'max_pct_venc90m_brg_lse_lsg_op_acc' AS max_pct_venc90m_brg_lse_lsg_op_acc,
'max_pct_venc90m_brg_lse_r_op_acc' AS max_pct_venc90m_brg_lse_r_op_acc,
'max_pct_venc90m_brg_lse_cf_op_acc' AS max_pct_venc90m_brg_lse_cf_op_acc,
'max_pct_venc90m_brg_lse_other_op_acc' AS max_pct_venc90m_brg_lse_other_op_acc,
'avg_pct_venc90m_op_acc' AS avg_pct_venc90m_op_acc,
'avg_pct_venc90m_bk_op_acc' AS avg_pct_venc90m_bk_op_acc,
'avg_pct_venc90m_bk_pq_op_acc' AS avg_pct_venc90m_bk_pq_op_acc,
'avg_pct_venc90m_bk_cs_op_acc' AS avg_pct_venc90m_bk_cs_op_acc,
'avg_pct_venc90m_bk_lsg_op_acc' AS avg_pct_venc90m_bk_lsg_op_acc,
'avg_pct_venc90m_bk_r_op_acc' AS avg_pct_venc90m_bk_r_op_acc,
'avg_pct_venc90m_bk_cf_op_acc' AS avg_pct_venc90m_bk_cf_op_acc,
'avg_pct_venc90m_bk_other_op_acc' AS avg_pct_venc90m_bk_other_op_acc,
'avg_pct_venc90m_lse_op_acc' AS avg_pct_venc90m_lse_op_acc,
'avg_pct_venc90m_lse_pq_op_acc' AS avg_pct_venc90m_lse_pq_op_acc,
'avg_pct_venc90m_lse_cs_op_acc' AS avg_pct_venc90m_lse_cs_op_acc,
'avg_pct_venc90m_lse_lsg_op_acc' AS avg_pct_venc90m_lse_lsg_op_acc,
'avg_pct_venc90m_lse_r_op_acc' AS avg_pct_venc90m_lse_r_op_acc,
'avg_pct_venc90m_lse_cf_op_acc' AS avg_pct_venc90m_lse_cf_op_acc,
'avg_pct_venc90m_lse_other_op_acc' AS avg_pct_venc90m_lse_other_op_acc,
'avg_pct_venc90m_un_cre_op_acc' AS avg_pct_venc90m_un_cre_op_acc,
'avg_pct_venc90m_un_cre_pq_op_acc' AS avg_pct_venc90m_un_cre_pq_op_acc,
'avg_pct_venc90m_un_cre_cs_op_acc' AS avg_pct_venc90m_un_cre_cs_op_acc,
'avg_pct_venc90m_un_cre_lsg_op_acc' AS avg_pct_venc90m_un_cre_lsg_op_acc,
'avg_pct_venc90m_un_cre_r_op_acc' AS avg_pct_venc90m_un_cre_r_op_acc,
'avg_pct_venc90m_un_cre_cf_op_acc' AS avg_pct_venc90m_un_cre_cf_op_acc,
'avg_pct_venc90m_un_cre_other_op_acc' AS avg_pct_venc90m_un_cre_other_op_acc,
'avg_pct_venc90m_other_fin_op_acc' AS avg_pct_venc90m_other_fin_op_acc,
'avg_pct_venc90m_other_fin_pq_op_acc' AS avg_pct_venc90m_other_fin_pq_op_acc,
'avg_pct_venc90m_other_fin_cs_op_acc' AS avg_pct_venc90m_other_fin_cs_op_acc,
'avg_pct_venc90m_other_fin_lsg_op_acc' AS avg_pct_venc90m_other_fin_lsg_op_acc,
'avg_pct_venc90m_other_fin_r_op_acc' AS avg_pct_venc90m_other_fin_r_op_acc,
'avg_pct_venc90m_other_fin_cf_op_acc' AS avg_pct_venc90m_other_fin_cf_op_acc,
'avg_pct_venc90m_other_fin_other_op_acc' AS avg_pct_venc90m_other_fin_other_op_acc,
'avg_pct_venc90m_gbn_op_acc' AS avg_pct_venc90m_gbn_op_acc,
'avg_pct_venc90m_gbn_pq_op_acc' AS avg_pct_venc90m_gbn_pq_op_acc,
'avg_pct_venc90m_gbn_cs_op_acc' AS avg_pct_venc90m_gbn_cs_op_acc,
'avg_pct_venc90m_gbn_lsg_op_acc' AS avg_pct_venc90m_gbn_lsg_op_acc,
'avg_pct_venc90m_gbn_r_op_acc' AS avg_pct_venc90m_gbn_r_op_acc,
'avg_pct_venc90m_gbn_cf_op_acc' AS avg_pct_venc90m_gbn_cf_op_acc,
'avg_pct_venc90m_gbn_other_op_acc' AS avg_pct_venc90m_gbn_other_op_acc,
'avg_pct_venc90m_brg_op_acc' AS avg_pct_venc90m_brg_op_acc,
'avg_pct_venc90m_brg_pq_op_acc' AS avg_pct_venc90m_brg_pq_op_acc,
'avg_pct_venc90m_brg_cs_op_acc' AS avg_pct_venc90m_brg_cs_op_acc,
'avg_pct_venc90m_brg_lsg_op_acc' AS avg_pct_venc90m_brg_lsg_op_acc,
'avg_pct_venc90m_brg_r_op_acc' AS avg_pct_venc90m_brg_r_op_acc,
'avg_pct_venc90m_brg_cf_op_acc' AS avg_pct_venc90m_brg_cf_op_acc,
'avg_pct_venc90m_brg_other_op_acc' AS avg_pct_venc90m_brg_other_op_acc,
'avg_pct_venc90m_brg_lse_op_acc' AS avg_pct_venc90m_brg_lse_op_acc,
'avg_pct_venc90m_brg_lse_pq_op_acc' AS avg_pct_venc90m_brg_lse_pq_op_acc,
'avg_pct_venc90m_brg_lse_cs_op_acc' AS avg_pct_venc90m_brg_lse_cs_op_acc,
'avg_pct_venc90m_brg_lse_lsg_op_acc' AS avg_pct_venc90m_brg_lse_lsg_op_acc,
'avg_pct_venc90m_brg_lse_r_op_acc' AS avg_pct_venc90m_brg_lse_r_op_acc,
'avg_pct_venc90m_brg_lse_cf_op_acc' AS avg_pct_venc90m_brg_lse_cf_op_acc,
'avg_pct_venc90m_brg_lse_other_op_acc' AS avg_pct_venc90m_brg_lse_other_op_acc,
'max_pct_venc120m_op_acc' AS max_pct_venc120m_op_acc,
'max_pct_venc120m_bk_op_acc' AS max_pct_venc120m_bk_op_acc,
'max_pct_venc120m_bk_pq_op_acc' AS max_pct_venc120m_bk_pq_op_acc,
'max_pct_venc120m_bk_cs_op_acc' AS max_pct_venc120m_bk_cs_op_acc,
'max_pct_venc120m_bk_lsg_op_acc' AS max_pct_venc120m_bk_lsg_op_acc,
'max_pct_venc120m_bk_r_op_acc' AS max_pct_venc120m_bk_r_op_acc,
'max_pct_venc120m_bk_cf_op_acc' AS max_pct_venc120m_bk_cf_op_acc,
'max_pct_venc120m_bk_other_op_acc' AS max_pct_venc120m_bk_other_op_acc,
'max_pct_venc120m_lse_op_acc' AS max_pct_venc120m_lse_op_acc,
'max_pct_venc120m_lse_pq_op_acc' AS max_pct_venc120m_lse_pq_op_acc,
'max_pct_venc120m_lse_cs_op_acc' AS max_pct_venc120m_lse_cs_op_acc,
'max_pct_venc120m_lse_lsg_op_acc' AS max_pct_venc120m_lse_lsg_op_acc,
'max_pct_venc120m_lse_r_op_acc' AS max_pct_venc120m_lse_r_op_acc,
'max_pct_venc120m_lse_cf_op_acc' AS max_pct_venc120m_lse_cf_op_acc,
'max_pct_venc120m_lse_other_op_acc' AS max_pct_venc120m_lse_other_op_acc,
'max_pct_venc120m_un_cre_op_acc' AS max_pct_venc120m_un_cre_op_acc,
'max_pct_venc120m_un_cre_pq_op_acc' AS max_pct_venc120m_un_cre_pq_op_acc,
'max_pct_venc120m_un_cre_cs_op_acc' AS max_pct_venc120m_un_cre_cs_op_acc,
'max_pct_venc120m_un_cre_lsg_op_acc' AS max_pct_venc120m_un_cre_lsg_op_acc,
'max_pct_venc120m_un_cre_r_op_acc' AS max_pct_venc120m_un_cre_r_op_acc,
'max_pct_venc120m_un_cre_cf_op_acc' AS max_pct_venc120m_un_cre_cf_op_acc,
'max_pct_venc120m_un_cre_other_op_acc' AS max_pct_venc120m_un_cre_other_op_acc,
'max_pct_venc120m_other_fin_op_acc' AS max_pct_venc120m_other_fin_op_acc,
'max_pct_venc120m_other_fin_pq_op_acc' AS max_pct_venc120m_other_fin_pq_op_acc,
'max_pct_venc120m_other_fin_cs_op_acc' AS max_pct_venc120m_other_fin_cs_op_acc,
'max_pct_venc120m_other_fin_lsg_op_acc' AS max_pct_venc120m_other_fin_lsg_op_acc,
'max_pct_venc120m_other_fin_r_op_acc' AS max_pct_venc120m_other_fin_r_op_acc,
'max_pct_venc120m_other_fin_cf_op_acc' AS max_pct_venc120m_other_fin_cf_op_acc,
'max_pct_venc120m_other_fin_other_op_acc' AS max_pct_venc120m_other_fin_other_op_acc,
'max_pct_venc120m_gbn_op_acc' AS max_pct_venc120m_gbn_op_acc,
'max_pct_venc120m_gbn_pq_op_acc' AS max_pct_venc120m_gbn_pq_op_acc,
'max_pct_venc120m_gbn_cs_op_acc' AS max_pct_venc120m_gbn_cs_op_acc,
'max_pct_venc120m_gbn_lsg_op_acc' AS max_pct_venc120m_gbn_lsg_op_acc,
'max_pct_venc120m_gbn_r_op_acc' AS max_pct_venc120m_gbn_r_op_acc,
'max_pct_venc120m_gbn_cf_op_acc' AS max_pct_venc120m_gbn_cf_op_acc,
'max_pct_venc120m_gbn_other_op_acc' AS max_pct_venc120m_gbn_other_op_acc,
'max_pct_venc120m_brg_op_acc' AS max_pct_venc120m_brg_op_acc,
'max_pct_venc120m_brg_pq_op_acc' AS max_pct_venc120m_brg_pq_op_acc,
'max_pct_venc120m_brg_cs_op_acc' AS max_pct_venc120m_brg_cs_op_acc,
'max_pct_venc120m_brg_lsg_op_acc' AS max_pct_venc120m_brg_lsg_op_acc,
'max_pct_venc120m_brg_r_op_acc' AS max_pct_venc120m_brg_r_op_acc,
'max_pct_venc120m_brg_cf_op_acc' AS max_pct_venc120m_brg_cf_op_acc,
'max_pct_venc120m_brg_other_op_acc' AS max_pct_venc120m_brg_other_op_acc,
'max_pct_venc120m_brg_lse_op_acc' AS max_pct_venc120m_brg_lse_op_acc,
'max_pct_venc120m_brg_lse_pq_op_acc' AS max_pct_venc120m_brg_lse_pq_op_acc,
'max_pct_venc120m_brg_lse_cs_op_acc' AS max_pct_venc120m_brg_lse_cs_op_acc,
'max_pct_venc120m_brg_lse_lsg_op_acc' AS max_pct_venc120m_brg_lse_lsg_op_acc,
'max_pct_venc120m_brg_lse_r_op_acc' AS max_pct_venc120m_brg_lse_r_op_acc,
'max_pct_venc120m_brg_lse_cf_op_acc' AS max_pct_venc120m_brg_lse_cf_op_acc,
'max_pct_venc120m_brg_lse_other_op_acc' AS max_pct_venc120m_brg_lse_other_op_acc,
'avg_pct_venc120m_op_acc' AS avg_pct_venc120m_op_acc,
'avg_pct_venc120m_bk_op_acc' AS avg_pct_venc120m_bk_op_acc,
'avg_pct_venc120m_bk_pq_op_acc' AS avg_pct_venc120m_bk_pq_op_acc,
'avg_pct_venc120m_bk_cs_op_acc' AS avg_pct_venc120m_bk_cs_op_acc,
'avg_pct_venc120m_bk_lsg_op_acc' AS avg_pct_venc120m_bk_lsg_op_acc,
'avg_pct_venc120m_bk_r_op_acc' AS avg_pct_venc120m_bk_r_op_acc,
'avg_pct_venc120m_bk_cf_op_acc' AS avg_pct_venc120m_bk_cf_op_acc,
'avg_pct_venc120m_bk_other_op_acc' AS avg_pct_venc120m_bk_other_op_acc,
'avg_pct_venc120m_lse_op_acc' AS avg_pct_venc120m_lse_op_acc,
'avg_pct_venc120m_lse_pq_op_acc' AS avg_pct_venc120m_lse_pq_op_acc,
'avg_pct_venc120m_lse_cs_op_acc' AS avg_pct_venc120m_lse_cs_op_acc,
'avg_pct_venc120m_lse_lsg_op_acc' AS avg_pct_venc120m_lse_lsg_op_acc,
'avg_pct_venc120m_lse_r_op_acc' AS avg_pct_venc120m_lse_r_op_acc,
'avg_pct_venc120m_lse_cf_op_acc' AS avg_pct_venc120m_lse_cf_op_acc,
'avg_pct_venc120m_lse_other_op_acc' AS avg_pct_venc120m_lse_other_op_acc,
'avg_pct_venc120m_un_cre_op_acc' AS avg_pct_venc120m_un_cre_op_acc,
'avg_pct_venc120m_un_cre_pq_op_acc' AS avg_pct_venc120m_un_cre_pq_op_acc,
'avg_pct_venc120m_un_cre_cs_op_acc' AS avg_pct_venc120m_un_cre_cs_op_acc,
'avg_pct_venc120m_un_cre_lsg_op_acc' AS avg_pct_venc120m_un_cre_lsg_op_acc,
'avg_pct_venc120m_un_cre_r_op_acc' AS avg_pct_venc120m_un_cre_r_op_acc,
'avg_pct_venc120m_un_cre_cf_op_acc' AS avg_pct_venc120m_un_cre_cf_op_acc,
'avg_pct_venc120m_un_cre_other_op_acc' AS avg_pct_venc120m_un_cre_other_op_acc,
'avg_pct_venc120m_other_fin_op_acc' AS avg_pct_venc120m_other_fin_op_acc,
'avg_pct_venc120m_other_fin_pq_op_acc' AS avg_pct_venc120m_other_fin_pq_op_acc,
'avg_pct_venc120m_other_fin_cs_op_acc' AS avg_pct_venc120m_other_fin_cs_op_acc,
'avg_pct_venc120m_other_fin_lsg_op_acc' AS avg_pct_venc120m_other_fin_lsg_op_acc,
'avg_pct_venc120m_other_fin_r_op_acc' AS avg_pct_venc120m_other_fin_r_op_acc,
'avg_pct_venc120m_other_fin_cf_op_acc' AS avg_pct_venc120m_other_fin_cf_op_acc,
'avg_pct_venc120m_other_fin_other_op_acc' AS avg_pct_venc120m_other_fin_other_op_acc,
'avg_pct_venc120m_gbn_op_acc' AS avg_pct_venc120m_gbn_op_acc,
'avg_pct_venc120m_gbn_pq_op_acc' AS avg_pct_venc120m_gbn_pq_op_acc,
'avg_pct_venc120m_gbn_cs_op_acc' AS avg_pct_venc120m_gbn_cs_op_acc,
'avg_pct_venc120m_gbn_lsg_op_acc' AS avg_pct_venc120m_gbn_lsg_op_acc,
'avg_pct_venc120m_gbn_r_op_acc' AS avg_pct_venc120m_gbn_r_op_acc,
'avg_pct_venc120m_gbn_cf_op_acc' AS avg_pct_venc120m_gbn_cf_op_acc,
'avg_pct_venc120m_gbn_other_op_acc' AS avg_pct_venc120m_gbn_other_op_acc,
'avg_pct_venc120m_brg_op_acc' AS avg_pct_venc120m_brg_op_acc,
'avg_pct_venc120m_brg_pq_op_acc' AS avg_pct_venc120m_brg_pq_op_acc,
'avg_pct_venc120m_brg_cs_op_acc' AS avg_pct_venc120m_brg_cs_op_acc,
'avg_pct_venc120m_brg_lsg_op_acc' AS avg_pct_venc120m_brg_lsg_op_acc,
'avg_pct_venc120m_brg_r_op_acc' AS avg_pct_venc120m_brg_r_op_acc,
'avg_pct_venc120m_brg_cf_op_acc' AS avg_pct_venc120m_brg_cf_op_acc,
'avg_pct_venc120m_brg_other_op_acc' AS avg_pct_venc120m_brg_other_op_acc,
'avg_pct_venc120m_brg_lse_op_acc' AS avg_pct_venc120m_brg_lse_op_acc,
'avg_pct_venc120m_brg_lse_pq_op_acc' AS avg_pct_venc120m_brg_lse_pq_op_acc,
'avg_pct_venc120m_brg_lse_cs_op_acc' AS avg_pct_venc120m_brg_lse_cs_op_acc,
'avg_pct_venc120m_brg_lse_lsg_op_acc' AS avg_pct_venc120m_brg_lse_lsg_op_acc,
'avg_pct_venc120m_brg_lse_r_op_acc' AS avg_pct_venc120m_brg_lse_r_op_acc,
'avg_pct_venc120m_brg_lse_cf_op_acc' AS avg_pct_venc120m_brg_lse_cf_op_acc,
'avg_pct_venc120m_brg_lse_other_op_acc' AS avg_pct_venc120m_brg_lse_other_op_acc,
'max_pct_venc180m_op_acc' AS max_pct_venc180m_op_acc,
'max_pct_venc180m_bk_op_acc' AS max_pct_venc180m_bk_op_acc,
'max_pct_venc180m_bk_pq_op_acc' AS max_pct_venc180m_bk_pq_op_acc,
'max_pct_venc180m_bk_cs_op_acc' AS max_pct_venc180m_bk_cs_op_acc,
'max_pct_venc180m_bk_lsg_op_acc' AS max_pct_venc180m_bk_lsg_op_acc,
'max_pct_venc180m_bk_r_op_acc' AS max_pct_venc180m_bk_r_op_acc,
'max_pct_venc180m_bk_cf_op_acc' AS max_pct_venc180m_bk_cf_op_acc,
'max_pct_venc180m_bk_other_op_acc' AS max_pct_venc180m_bk_other_op_acc,
'max_pct_venc180m_lse_op_acc' AS max_pct_venc180m_lse_op_acc,
'max_pct_venc180m_lse_pq_op_acc' AS max_pct_venc180m_lse_pq_op_acc,
'max_pct_venc180m_lse_cs_op_acc' AS max_pct_venc180m_lse_cs_op_acc,
'max_pct_venc180m_lse_lsg_op_acc' AS max_pct_venc180m_lse_lsg_op_acc,
'max_pct_venc180m_lse_r_op_acc' AS max_pct_venc180m_lse_r_op_acc,
'max_pct_venc180m_lse_cf_op_acc' AS max_pct_venc180m_lse_cf_op_acc,
'max_pct_venc180m_lse_other_op_acc' AS max_pct_venc180m_lse_other_op_acc,
'max_pct_venc180m_un_cre_op_acc' AS max_pct_venc180m_un_cre_op_acc,
'max_pct_venc180m_un_cre_pq_op_acc' AS max_pct_venc180m_un_cre_pq_op_acc,
'max_pct_venc180m_un_cre_cs_op_acc' AS max_pct_venc180m_un_cre_cs_op_acc,
'max_pct_venc180m_un_cre_lsg_op_acc' AS max_pct_venc180m_un_cre_lsg_op_acc,
'max_pct_venc180m_un_cre_r_op_acc' AS max_pct_venc180m_un_cre_r_op_acc,
'max_pct_venc180m_un_cre_cf_op_acc' AS max_pct_venc180m_un_cre_cf_op_acc,
'max_pct_venc180m_un_cre_other_op_acc' AS max_pct_venc180m_un_cre_other_op_acc,
'max_pct_venc180m_other_fin_op_acc' AS max_pct_venc180m_other_fin_op_acc,
'max_pct_venc180m_other_fin_pq_op_acc' AS max_pct_venc180m_other_fin_pq_op_acc,
'max_pct_venc180m_other_fin_cs_op_acc' AS max_pct_venc180m_other_fin_cs_op_acc,
'max_pct_venc180m_other_fin_lsg_op_acc' AS max_pct_venc180m_other_fin_lsg_op_acc,
'max_pct_venc180m_other_fin_r_op_acc' AS max_pct_venc180m_other_fin_r_op_acc,
'max_pct_venc180m_other_fin_cf_op_acc' AS max_pct_venc180m_other_fin_cf_op_acc,
'max_pct_venc180m_other_fin_other_op_acc' AS max_pct_venc180m_other_fin_other_op_acc,
'max_pct_venc180m_gbn_op_acc' AS max_pct_venc180m_gbn_op_acc,
'max_pct_venc180m_gbn_pq_op_acc' AS max_pct_venc180m_gbn_pq_op_acc,
'max_pct_venc180m_gbn_cs_op_acc' AS max_pct_venc180m_gbn_cs_op_acc,
'max_pct_venc180m_gbn_lsg_op_acc' AS max_pct_venc180m_gbn_lsg_op_acc,
'max_pct_venc180m_gbn_r_op_acc' AS max_pct_venc180m_gbn_r_op_acc,
'max_pct_venc180m_gbn_cf_op_acc' AS max_pct_venc180m_gbn_cf_op_acc,
'max_pct_venc180m_gbn_other_op_acc' AS max_pct_venc180m_gbn_other_op_acc,
'max_pct_venc180m_brg_op_acc' AS max_pct_venc180m_brg_op_acc,
'max_pct_venc180m_brg_pq_op_acc' AS max_pct_venc180m_brg_pq_op_acc,
'max_pct_venc180m_brg_cs_op_acc' AS max_pct_venc180m_brg_cs_op_acc,
'max_pct_venc180m_brg_lsg_op_acc' AS max_pct_venc180m_brg_lsg_op_acc,
'max_pct_venc180m_brg_r_op_acc' AS max_pct_venc180m_brg_r_op_acc,
'max_pct_venc180m_brg_cf_op_acc' AS max_pct_venc180m_brg_cf_op_acc,
'max_pct_venc180m_brg_other_op_acc' AS max_pct_venc180m_brg_other_op_acc,
'max_pct_venc180m_brg_lse_op_acc' AS max_pct_venc180m_brg_lse_op_acc,
'max_pct_venc180m_brg_lse_pq_op_acc' AS max_pct_venc180m_brg_lse_pq_op_acc,
'max_pct_venc180m_brg_lse_cs_op_acc' AS max_pct_venc180m_brg_lse_cs_op_acc,
'max_pct_venc180m_brg_lse_lsg_op_acc' AS max_pct_venc180m_brg_lse_lsg_op_acc,
'max_pct_venc180m_brg_lse_r_op_acc' AS max_pct_venc180m_brg_lse_r_op_acc,
'max_pct_venc180m_brg_lse_cf_op_acc' AS max_pct_venc180m_brg_lse_cf_op_acc,
'max_pct_venc180m_brg_lse_other_op_acc' AS max_pct_venc180m_brg_lse_other_op_acc,
'avg_pct_venc180m_op_acc' AS avg_pct_venc180m_op_acc,
'avg_pct_venc180m_bk_op_acc' AS avg_pct_venc180m_bk_op_acc,
'avg_pct_venc180m_bk_pq_op_acc' AS avg_pct_venc180m_bk_pq_op_acc,
'avg_pct_venc180m_bk_cs_op_acc' AS avg_pct_venc180m_bk_cs_op_acc,
'avg_pct_venc180m_bk_lsg_op_acc' AS avg_pct_venc180m_bk_lsg_op_acc,
'avg_pct_venc180m_bk_r_op_acc' AS avg_pct_venc180m_bk_r_op_acc,
'avg_pct_venc180m_bk_cf_op_acc' AS avg_pct_venc180m_bk_cf_op_acc,
'avg_pct_venc180m_bk_other_op_acc' AS avg_pct_venc180m_bk_other_op_acc,
'avg_pct_venc180m_lse_op_acc' AS avg_pct_venc180m_lse_op_acc,
'avg_pct_venc180m_lse_pq_op_acc' AS avg_pct_venc180m_lse_pq_op_acc,
'avg_pct_venc180m_lse_cs_op_acc' AS avg_pct_venc180m_lse_cs_op_acc,
'avg_pct_venc180m_lse_lsg_op_acc' AS avg_pct_venc180m_lse_lsg_op_acc,
'avg_pct_venc180m_lse_r_op_acc' AS avg_pct_venc180m_lse_r_op_acc,
'avg_pct_venc180m_lse_cf_op_acc' AS avg_pct_venc180m_lse_cf_op_acc,
'avg_pct_venc180m_lse_other_op_acc' AS avg_pct_venc180m_lse_other_op_acc,
'avg_pct_venc180m_un_cre_op_acc' AS avg_pct_venc180m_un_cre_op_acc,
'avg_pct_venc180m_un_cre_pq_op_acc' AS avg_pct_venc180m_un_cre_pq_op_acc,
'avg_pct_venc180m_un_cre_cs_op_acc' AS avg_pct_venc180m_un_cre_cs_op_acc,
'avg_pct_venc180m_un_cre_lsg_op_acc' AS avg_pct_venc180m_un_cre_lsg_op_acc,
'avg_pct_venc180m_un_cre_r_op_acc' AS avg_pct_venc180m_un_cre_r_op_acc,
'avg_pct_venc180m_un_cre_cf_op_acc' AS avg_pct_venc180m_un_cre_cf_op_acc,
'avg_pct_venc180m_un_cre_other_op_acc' AS avg_pct_venc180m_un_cre_other_op_acc,
'avg_pct_venc180m_other_fin_op_acc' AS avg_pct_venc180m_other_fin_op_acc,
'avg_pct_venc180m_other_fin_pq_op_acc' AS avg_pct_venc180m_other_fin_pq_op_acc,
'avg_pct_venc180m_other_fin_cs_op_acc' AS avg_pct_venc180m_other_fin_cs_op_acc,
'avg_pct_venc180m_other_fin_lsg_op_acc' AS avg_pct_venc180m_other_fin_lsg_op_acc,
'avg_pct_venc180m_other_fin_r_op_acc' AS avg_pct_venc180m_other_fin_r_op_acc,
'avg_pct_venc180m_other_fin_cf_op_acc' AS avg_pct_venc180m_other_fin_cf_op_acc,
'avg_pct_venc180m_other_fin_other_op_acc' AS avg_pct_venc180m_other_fin_other_op_acc,
'avg_pct_venc180m_gbn_op_acc' AS avg_pct_venc180m_gbn_op_acc,
'avg_pct_venc180m_gbn_pq_op_acc' AS avg_pct_venc180m_gbn_pq_op_acc,
'avg_pct_venc180m_gbn_cs_op_acc' AS avg_pct_venc180m_gbn_cs_op_acc,
'avg_pct_venc180m_gbn_lsg_op_acc' AS avg_pct_venc180m_gbn_lsg_op_acc,
'avg_pct_venc180m_gbn_r_op_acc' AS avg_pct_venc180m_gbn_r_op_acc,
'avg_pct_venc180m_gbn_cf_op_acc' AS avg_pct_venc180m_gbn_cf_op_acc,
'avg_pct_venc180m_gbn_other_op_acc' AS avg_pct_venc180m_gbn_other_op_acc,
'avg_pct_venc180m_brg_op_acc' AS avg_pct_venc180m_brg_op_acc,
'avg_pct_venc180m_brg_pq_op_acc' AS avg_pct_venc180m_brg_pq_op_acc,
'avg_pct_venc180m_brg_cs_op_acc' AS avg_pct_venc180m_brg_cs_op_acc,
'avg_pct_venc180m_brg_lsg_op_acc' AS avg_pct_venc180m_brg_lsg_op_acc,
'avg_pct_venc180m_brg_r_op_acc' AS avg_pct_venc180m_brg_r_op_acc,
'avg_pct_venc180m_brg_cf_op_acc' AS avg_pct_venc180m_brg_cf_op_acc,
'avg_pct_venc180m_brg_other_op_acc' AS avg_pct_venc180m_brg_other_op_acc,
'avg_pct_venc180m_brg_lse_op_acc' AS avg_pct_venc180m_brg_lse_op_acc,
'avg_pct_venc180m_brg_lse_pq_op_acc' AS avg_pct_venc180m_brg_lse_pq_op_acc,
'avg_pct_venc180m_brg_lse_cs_op_acc' AS avg_pct_venc180m_brg_lse_cs_op_acc,
'avg_pct_venc180m_brg_lse_lsg_op_acc' AS avg_pct_venc180m_brg_lse_lsg_op_acc,
'avg_pct_venc180m_brg_lse_r_op_acc' AS avg_pct_venc180m_brg_lse_r_op_acc,
'avg_pct_venc180m_brg_lse_cf_op_acc' AS avg_pct_venc180m_brg_lse_cf_op_acc,
'avg_pct_venc180m_brg_lse_other_op_acc' AS avg_pct_venc180m_brg_lse_other_op_acc;
INSERT INTO RSS_MCV_NEGOCIOS_VAR_CR_OP_ACC_13_AGO
SELECT distinct
a.fecha , 
a.rfc,
b.max_pct_venc90m_op_acc,
b.max_pct_venc90m_bk_op_acc,
b.max_pct_venc90m_bk_pq_op_acc,
b.max_pct_venc90m_bk_cs_op_acc,
b.max_pct_venc90m_bk_lsg_op_acc,
b.max_pct_venc90m_bk_r_op_acc,
b.max_pct_venc90m_bk_cf_op_acc,
b.max_pct_venc90m_bk_other_op_acc,
b.max_pct_venc90m_lse_op_acc,
b.max_pct_venc90m_lse_pq_op_acc,
b.max_pct_venc90m_lse_cs_op_acc,
b.max_pct_venc90m_lse_lsg_op_acc,
b.max_pct_venc90m_lse_r_op_acc,
b.max_pct_venc90m_lse_cf_op_acc,
b.max_pct_venc90m_lse_other_op_acc,
b.max_pct_venc90m_un_cre_op_acc,
b.max_pct_venc90m_un_cre_pq_op_acc,
b.max_pct_venc90m_un_cre_cs_op_acc,
b.max_pct_venc90m_un_cre_lsg_op_acc,
b.max_pct_venc90m_un_cre_r_op_acc,
b.max_pct_venc90m_un_cre_cf_op_acc,
b.max_pct_venc90m_un_cre_other_op_acc,
b.max_pct_venc90m_other_fin_op_acc,
b.max_pct_venc90m_other_fin_pq_op_acc,
b.max_pct_venc90m_other_fin_cs_op_acc,
b.max_pct_venc90m_other_fin_lsg_op_acc,
b.max_pct_venc90m_other_fin_r_op_acc,
b.max_pct_venc90m_other_fin_cf_op_acc,
b.max_pct_venc90m_other_fin_other_op_acc,
b.max_pct_venc90m_gbn_op_acc,
b.max_pct_venc90m_gbn_pq_op_acc,
b.max_pct_venc90m_gbn_cs_op_acc,
b.max_pct_venc90m_gbn_lsg_op_acc,
b.max_pct_venc90m_gbn_r_op_acc,
b.max_pct_venc90m_gbn_cf_op_acc,
b.max_pct_venc90m_gbn_other_op_acc,
b.max_pct_venc90m_brg_op_acc,
b.max_pct_venc90m_brg_pq_op_acc,
b.max_pct_venc90m_brg_cs_op_acc,
b.max_pct_venc90m_brg_lsg_op_acc,
b.max_pct_venc90m_brg_r_op_acc,
b.max_pct_venc90m_brg_cf_op_acc,
b.max_pct_venc90m_brg_other_op_acc,
b.max_pct_venc90m_brg_lse_op_acc,
b.max_pct_venc90m_brg_lse_pq_op_acc,
b.max_pct_venc90m_brg_lse_cs_op_acc,
b.max_pct_venc90m_brg_lse_lsg_op_acc,
b.max_pct_venc90m_brg_lse_r_op_acc,
b.max_pct_venc90m_brg_lse_cf_op_acc,
b.max_pct_venc90m_brg_lse_other_op_acc,
b.avg_pct_venc90m_op_acc,
b.avg_pct_venc90m_bk_op_acc,
b.avg_pct_venc90m_bk_pq_op_acc,
b.avg_pct_venc90m_bk_cs_op_acc,
b.avg_pct_venc90m_bk_lsg_op_acc,
b.avg_pct_venc90m_bk_r_op_acc,
b.avg_pct_venc90m_bk_cf_op_acc,
b.avg_pct_venc90m_bk_other_op_acc,
b.avg_pct_venc90m_lse_op_acc,
b.avg_pct_venc90m_lse_pq_op_acc,
b.avg_pct_venc90m_lse_cs_op_acc,
b.avg_pct_venc90m_lse_lsg_op_acc,
b.avg_pct_venc90m_lse_r_op_acc,
b.avg_pct_venc90m_lse_cf_op_acc,
b.avg_pct_venc90m_lse_other_op_acc,
b.avg_pct_venc90m_un_cre_op_acc,
b.avg_pct_venc90m_un_cre_pq_op_acc,
b.avg_pct_venc90m_un_cre_cs_op_acc,
b.avg_pct_venc90m_un_cre_lsg_op_acc,
b.avg_pct_venc90m_un_cre_r_op_acc,
b.avg_pct_venc90m_un_cre_cf_op_acc,
b.avg_pct_venc90m_un_cre_other_op_acc,
b.avg_pct_venc90m_other_fin_op_acc,
b.avg_pct_venc90m_other_fin_pq_op_acc,
b.avg_pct_venc90m_other_fin_cs_op_acc,
b.avg_pct_venc90m_other_fin_lsg_op_acc,
b.avg_pct_venc90m_other_fin_r_op_acc,
b.avg_pct_venc90m_other_fin_cf_op_acc,
b.avg_pct_venc90m_other_fin_other_op_acc,
b.avg_pct_venc90m_gbn_op_acc,
b.avg_pct_venc90m_gbn_pq_op_acc,
b.avg_pct_venc90m_gbn_cs_op_acc,
b.avg_pct_venc90m_gbn_lsg_op_acc,
b.avg_pct_venc90m_gbn_r_op_acc,
b.avg_pct_venc90m_gbn_cf_op_acc,
b.avg_pct_venc90m_gbn_other_op_acc,
b.avg_pct_venc90m_brg_op_acc,
b.avg_pct_venc90m_brg_pq_op_acc,
b.avg_pct_venc90m_brg_cs_op_acc,
b.avg_pct_venc90m_brg_lsg_op_acc,
b.avg_pct_venc90m_brg_r_op_acc,
b.avg_pct_venc90m_brg_cf_op_acc,
b.avg_pct_venc90m_brg_other_op_acc,
b.avg_pct_venc90m_brg_lse_op_acc,
b.avg_pct_venc90m_brg_lse_pq_op_acc,
b.avg_pct_venc90m_brg_lse_cs_op_acc,
b.avg_pct_venc90m_brg_lse_lsg_op_acc,
b.avg_pct_venc90m_brg_lse_r_op_acc,
b.avg_pct_venc90m_brg_lse_cf_op_acc,
b.avg_pct_venc90m_brg_lse_other_op_acc,
b.max_pct_venc120m_op_acc,
b.max_pct_venc120m_bk_op_acc,
b.max_pct_venc120m_bk_pq_op_acc,
b.max_pct_venc120m_bk_cs_op_acc,
b.max_pct_venc120m_bk_lsg_op_acc,
b.max_pct_venc120m_bk_r_op_acc,
b.max_pct_venc120m_bk_cf_op_acc,
b.max_pct_venc120m_bk_other_op_acc,
b.max_pct_venc120m_lse_op_acc,
b.max_pct_venc120m_lse_pq_op_acc,
b.max_pct_venc120m_lse_cs_op_acc,
b.max_pct_venc120m_lse_lsg_op_acc,
b.max_pct_venc120m_lse_r_op_acc,
b.max_pct_venc120m_lse_cf_op_acc,
b.max_pct_venc120m_lse_other_op_acc,
b.max_pct_venc120m_un_cre_op_acc,
b.max_pct_venc120m_un_cre_pq_op_acc,
b.max_pct_venc120m_un_cre_cs_op_acc,
b.max_pct_venc120m_un_cre_lsg_op_acc,
b.max_pct_venc120m_un_cre_r_op_acc,
b.max_pct_venc120m_un_cre_cf_op_acc,
b.max_pct_venc120m_un_cre_other_op_acc,
b.max_pct_venc120m_other_fin_op_acc,
b.max_pct_venc120m_other_fin_pq_op_acc,
b.max_pct_venc120m_other_fin_cs_op_acc,
b.max_pct_venc120m_other_fin_lsg_op_acc,
b.max_pct_venc120m_other_fin_r_op_acc,
b.max_pct_venc120m_other_fin_cf_op_acc,
b.max_pct_venc120m_other_fin_other_op_acc,
b.max_pct_venc120m_gbn_op_acc,
b.max_pct_venc120m_gbn_pq_op_acc,
b.max_pct_venc120m_gbn_cs_op_acc,
b.max_pct_venc120m_gbn_lsg_op_acc,
b.max_pct_venc120m_gbn_r_op_acc,
b.max_pct_venc120m_gbn_cf_op_acc,
b.max_pct_venc120m_gbn_other_op_acc,
b.max_pct_venc120m_brg_op_acc,
b.max_pct_venc120m_brg_pq_op_acc,
b.max_pct_venc120m_brg_cs_op_acc,
b.max_pct_venc120m_brg_lsg_op_acc,
b.max_pct_venc120m_brg_r_op_acc,
b.max_pct_venc120m_brg_cf_op_acc,
b.max_pct_venc120m_brg_other_op_acc,
b.max_pct_venc120m_brg_lse_op_acc,
b.max_pct_venc120m_brg_lse_pq_op_acc,
b.max_pct_venc120m_brg_lse_cs_op_acc,
b.max_pct_venc120m_brg_lse_lsg_op_acc,
b.max_pct_venc120m_brg_lse_r_op_acc,
b.max_pct_venc120m_brg_lse_cf_op_acc,
b.max_pct_venc120m_brg_lse_other_op_acc,
b.avg_pct_venc120m_op_acc,
b.avg_pct_venc120m_bk_op_acc,
b.avg_pct_venc120m_bk_pq_op_acc,
b.avg_pct_venc120m_bk_cs_op_acc,
b.avg_pct_venc120m_bk_lsg_op_acc,
b.avg_pct_venc120m_bk_r_op_acc,
b.avg_pct_venc120m_bk_cf_op_acc,
b.avg_pct_venc120m_bk_other_op_acc,
b.avg_pct_venc120m_lse_op_acc,
b.avg_pct_venc120m_lse_pq_op_acc,
b.avg_pct_venc120m_lse_cs_op_acc,
b.avg_pct_venc120m_lse_lsg_op_acc,
b.avg_pct_venc120m_lse_r_op_acc,
b.avg_pct_venc120m_lse_cf_op_acc,
b.avg_pct_venc120m_lse_other_op_acc,
b.avg_pct_venc120m_un_cre_op_acc,
b.avg_pct_venc120m_un_cre_pq_op_acc,
b.avg_pct_venc120m_un_cre_cs_op_acc,
b.avg_pct_venc120m_un_cre_lsg_op_acc,
b.avg_pct_venc120m_un_cre_r_op_acc,
b.avg_pct_venc120m_un_cre_cf_op_acc,
b.avg_pct_venc120m_un_cre_other_op_acc,
b.avg_pct_venc120m_other_fin_op_acc,
b.avg_pct_venc120m_other_fin_pq_op_acc,
b.avg_pct_venc120m_other_fin_cs_op_acc,
b.avg_pct_venc120m_other_fin_lsg_op_acc,
b.avg_pct_venc120m_other_fin_r_op_acc,
b.avg_pct_venc120m_other_fin_cf_op_acc,
b.avg_pct_venc120m_other_fin_other_op_acc,
b.avg_pct_venc120m_gbn_op_acc,
b.avg_pct_venc120m_gbn_pq_op_acc,
b.avg_pct_venc120m_gbn_cs_op_acc,
b.avg_pct_venc120m_gbn_lsg_op_acc,
b.avg_pct_venc120m_gbn_r_op_acc,
b.avg_pct_venc120m_gbn_cf_op_acc,
b.avg_pct_venc120m_gbn_other_op_acc,
b.avg_pct_venc120m_brg_op_acc,
b.avg_pct_venc120m_brg_pq_op_acc,
b.avg_pct_venc120m_brg_cs_op_acc,
b.avg_pct_venc120m_brg_lsg_op_acc,
b.avg_pct_venc120m_brg_r_op_acc,
b.avg_pct_venc120m_brg_cf_op_acc,
b.avg_pct_venc120m_brg_other_op_acc,
b.avg_pct_venc120m_brg_lse_op_acc,
b.avg_pct_venc120m_brg_lse_pq_op_acc,
b.avg_pct_venc120m_brg_lse_cs_op_acc,
b.avg_pct_venc120m_brg_lse_lsg_op_acc,
b.avg_pct_venc120m_brg_lse_r_op_acc,
b.avg_pct_venc120m_brg_lse_cf_op_acc,
b.avg_pct_venc120m_brg_lse_other_op_acc,
b.max_pct_venc180m_op_acc,
b.max_pct_venc180m_bk_op_acc,
b.max_pct_venc180m_bk_pq_op_acc,
b.max_pct_venc180m_bk_cs_op_acc,
b.max_pct_venc180m_bk_lsg_op_acc,
b.max_pct_venc180m_bk_r_op_acc,
b.max_pct_venc180m_bk_cf_op_acc,
b.max_pct_venc180m_bk_other_op_acc,
b.max_pct_venc180m_lse_op_acc,
b.max_pct_venc180m_lse_pq_op_acc,
b.max_pct_venc180m_lse_cs_op_acc,
b.max_pct_venc180m_lse_lsg_op_acc,
b.max_pct_venc180m_lse_r_op_acc,
b.max_pct_venc180m_lse_cf_op_acc,
b.max_pct_venc180m_lse_other_op_acc,
b.max_pct_venc180m_un_cre_op_acc,
b.max_pct_venc180m_un_cre_pq_op_acc,
b.max_pct_venc180m_un_cre_cs_op_acc,
b.max_pct_venc180m_un_cre_lsg_op_acc,
b.max_pct_venc180m_un_cre_r_op_acc,
b.max_pct_venc180m_un_cre_cf_op_acc,
b.max_pct_venc180m_un_cre_other_op_acc,
b.max_pct_venc180m_other_fin_op_acc,
b.max_pct_venc180m_other_fin_pq_op_acc,
b.max_pct_venc180m_other_fin_cs_op_acc,
b.max_pct_venc180m_other_fin_lsg_op_acc,
b.max_pct_venc180m_other_fin_r_op_acc,
b.max_pct_venc180m_other_fin_cf_op_acc,
b.max_pct_venc180m_other_fin_other_op_acc,
b.max_pct_venc180m_gbn_op_acc,
b.max_pct_venc180m_gbn_pq_op_acc,
b.max_pct_venc180m_gbn_cs_op_acc,
b.max_pct_venc180m_gbn_lsg_op_acc,
b.max_pct_venc180m_gbn_r_op_acc,
b.max_pct_venc180m_gbn_cf_op_acc,
b.max_pct_venc180m_gbn_other_op_acc,
b.max_pct_venc180m_brg_op_acc,
b.max_pct_venc180m_brg_pq_op_acc,
b.max_pct_venc180m_brg_cs_op_acc,
b.max_pct_venc180m_brg_lsg_op_acc,
b.max_pct_venc180m_brg_r_op_acc,
b.max_pct_venc180m_brg_cf_op_acc,
b.max_pct_venc180m_brg_other_op_acc,
b.max_pct_venc180m_brg_lse_op_acc,
b.max_pct_venc180m_brg_lse_pq_op_acc,
b.max_pct_venc180m_brg_lse_cs_op_acc,
b.max_pct_venc180m_brg_lse_lsg_op_acc,
b.max_pct_venc180m_brg_lse_r_op_acc,
b.max_pct_venc180m_brg_lse_cf_op_acc,
b.max_pct_venc180m_brg_lse_other_op_acc,
b.avg_pct_venc180m_op_acc,
b.avg_pct_venc180m_bk_op_acc,
b.avg_pct_venc180m_bk_pq_op_acc,
b.avg_pct_venc180m_bk_cs_op_acc,
b.avg_pct_venc180m_bk_lsg_op_acc,
b.avg_pct_venc180m_bk_r_op_acc,
b.avg_pct_venc180m_bk_cf_op_acc,
b.avg_pct_venc180m_bk_other_op_acc,
b.avg_pct_venc180m_lse_op_acc,
b.avg_pct_venc180m_lse_pq_op_acc,
b.avg_pct_venc180m_lse_cs_op_acc,
b.avg_pct_venc180m_lse_lsg_op_acc,
b.avg_pct_venc180m_lse_r_op_acc,
b.avg_pct_venc180m_lse_cf_op_acc,
b.avg_pct_venc180m_lse_other_op_acc,
b.avg_pct_venc180m_un_cre_op_acc,
b.avg_pct_venc180m_un_cre_pq_op_acc,
b.avg_pct_venc180m_un_cre_cs_op_acc,
b.avg_pct_venc180m_un_cre_lsg_op_acc,
b.avg_pct_venc180m_un_cre_r_op_acc,
b.avg_pct_venc180m_un_cre_cf_op_acc,
b.avg_pct_venc180m_un_cre_other_op_acc,
b.avg_pct_venc180m_other_fin_op_acc,
b.avg_pct_venc180m_other_fin_pq_op_acc,
b.avg_pct_venc180m_other_fin_cs_op_acc,
b.avg_pct_venc180m_other_fin_lsg_op_acc,
b.avg_pct_venc180m_other_fin_r_op_acc,
b.avg_pct_venc180m_other_fin_cf_op_acc,
b.avg_pct_venc180m_other_fin_other_op_acc,
b.avg_pct_venc180m_gbn_op_acc,
b.avg_pct_venc180m_gbn_pq_op_acc,
b.avg_pct_venc180m_gbn_cs_op_acc,
b.avg_pct_venc180m_gbn_lsg_op_acc,
b.avg_pct_venc180m_gbn_r_op_acc,
b.avg_pct_venc180m_gbn_cf_op_acc,
b.avg_pct_venc180m_gbn_other_op_acc,
b.avg_pct_venc180m_brg_op_acc,
b.avg_pct_venc180m_brg_pq_op_acc,
b.avg_pct_venc180m_brg_cs_op_acc,
b.avg_pct_venc180m_brg_lsg_op_acc,
b.avg_pct_venc180m_brg_r_op_acc,
b.avg_pct_venc180m_brg_cf_op_acc,
b.avg_pct_venc180m_brg_other_op_acc,
b.avg_pct_venc180m_brg_lse_op_acc,
b.avg_pct_venc180m_brg_lse_pq_op_acc,
b.avg_pct_venc180m_brg_lse_cs_op_acc,
b.avg_pct_venc180m_brg_lse_lsg_op_acc,
b.avg_pct_venc180m_brg_lse_r_op_acc,
b.avg_pct_venc180m_brg_lse_cf_op_acc,
b.avg_pct_venc180m_brg_lse_other_op_acc
FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOSA a
LEFT JOIN dbriskdatamart.MZM_MCV_VAR_CR_OP_ACC_13_201908 b
on a.FOLIO_RESPUESTA_BC = b.folio and a.rfc=b.rfc
where a.fecha = '201908';
