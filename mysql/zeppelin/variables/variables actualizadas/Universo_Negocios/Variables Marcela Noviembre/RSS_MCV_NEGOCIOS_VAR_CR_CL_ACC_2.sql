%hive
DROP TABLE IF EXISTS RSS_MCV_NEGOCIOS_VAR_CR_CL_ACC_2;

CREATE TABLE  RSS_MCV_NEGOCIOS_VAR_CR_CL_ACC_2
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS/Noviembre/Variables/RSS_MCV_NEGOCIOS_VAR_CR_CL_ACC_2' AS
SELECT  
'fecha' AS fecha,
'rfc' as rfc ,
'max_ms_cl_cl_acc' AS max_ms_cl_cl_acc,
'max_ms_cl_bk_cl_acc' AS max_ms_cl_bk_cl_acc,
'max_ms_cl_bk_pq_cl_acc' AS max_ms_cl_bk_pq_cl_acc,
'max_ms_cl_bk_cs_cl_acc' AS max_ms_cl_bk_cs_cl_acc,
'max_ms_cl_bk_lsg_cl_acc' AS max_ms_cl_bk_lsg_cl_acc,
'max_ms_cl_bk_r_cl_acc' AS max_ms_cl_bk_r_cl_acc,
'max_ms_cl_bk_cf_cl_acc' AS max_ms_cl_bk_cf_cl_acc,
'max_ms_cl_bk_other_cl_acc' AS max_ms_cl_bk_other_cl_acc,
'max_ms_cl_lse_cl_acc' AS max_ms_cl_lse_cl_acc,
'max_ms_cl_lse_pq_cl_acc' AS max_ms_cl_lse_pq_cl_acc,
'max_ms_cl_lse_cs_cl_acc' AS max_ms_cl_lse_cs_cl_acc,
'max_ms_cl_lse_lsg_cl_acc' AS max_ms_cl_lse_lsg_cl_acc,
'max_ms_cl_lse_r_cl_acc' AS max_ms_cl_lse_r_cl_acc,
'max_ms_cl_lse_cf_cl_acc' AS max_ms_cl_lse_cf_cl_acc,
'max_ms_cl_lse_other_cl_acc' AS max_ms_cl_lse_other_cl_acc,
'max_ms_cl_un_cre_cl_acc' AS max_ms_cl_un_cre_cl_acc,
'max_ms_cl_un_cre_pq_cl_acc' AS max_ms_cl_un_cre_pq_cl_acc,
'max_ms_cl_un_cre_cs_cl_acc' AS max_ms_cl_un_cre_cs_cl_acc,
'max_ms_cl_un_cre_lsg_cl_acc' AS max_ms_cl_un_cre_lsg_cl_acc,
'max_ms_cl_un_cre_r_cl_acc' AS max_ms_cl_un_cre_r_cl_acc,
'max_ms_cl_un_cre_cf_cl_acc' AS max_ms_cl_un_cre_cf_cl_acc,
'max_ms_cl_un_cre_other_cl_acc' AS max_ms_cl_un_cre_other_cl_acc,
'max_ms_cl_other_fin_cl_acc' AS max_ms_cl_other_fin_cl_acc,
'max_ms_cl_other_fin_pq_cl_acc' AS max_ms_cl_other_fin_pq_cl_acc,
'max_ms_cl_other_fin_cs_cl_acc' AS max_ms_cl_other_fin_cs_cl_acc,
'max_ms_cl_other_fin_lsg_cl_acc' AS max_ms_cl_other_fin_lsg_cl_acc,
'max_ms_cl_other_fin_r_cl_acc' AS max_ms_cl_other_fin_r_cl_acc,
'max_ms_cl_other_fin_cf_cl_acc' AS max_ms_cl_other_fin_cf_cl_acc,
'max_ms_cl_other_fin_other_cl_acc' AS max_ms_cl_other_fin_other_cl_acc,
'max_ms_cl_gbn_cl_acc' AS max_ms_cl_gbn_cl_acc,
'max_ms_cl_gbn_pq_cl_acc' AS max_ms_cl_gbn_pq_cl_acc,
'max_ms_cl_gbn_cs_cl_acc' AS max_ms_cl_gbn_cs_cl_acc,
'max_ms_cl_gbn_lsg_cl_acc' AS max_ms_cl_gbn_lsg_cl_acc,
'max_ms_cl_gbn_r_cl_acc' AS max_ms_cl_gbn_r_cl_acc,
'max_ms_cl_gbn_cf_cl_acc' AS max_ms_cl_gbn_cf_cl_acc,
'max_ms_cl_gbn_other_cl_acc' AS max_ms_cl_gbn_other_cl_acc,
'max_ms_cl_brg_cl_acc' AS max_ms_cl_brg_cl_acc,
'max_ms_cl_brg_pq_cl_acc' AS max_ms_cl_brg_pq_cl_acc,
'max_ms_cl_brg_cs_cl_acc' AS max_ms_cl_brg_cs_cl_acc,
'max_ms_cl_brg_lsg_cl_acc' AS max_ms_cl_brg_lsg_cl_acc,
'max_ms_cl_brg_r_cl_acc' AS max_ms_cl_brg_r_cl_acc,
'max_ms_cl_brg_cf_cl_acc' AS max_ms_cl_brg_cf_cl_acc,
'max_ms_cl_brg_other_cl_acc' AS max_ms_cl_brg_other_cl_acc,
'max_ms_cl_brg_lse_cl_acc' AS max_ms_cl_brg_lse_cl_acc,
'max_ms_cl_brg_lse_pq_cl_acc' AS max_ms_cl_brg_lse_pq_cl_acc,
'max_ms_cl_brg_lse_cs_cl_acc' AS max_ms_cl_brg_lse_cs_cl_acc,
'max_ms_cl_brg_lse_lsg_cl_acc' AS max_ms_cl_brg_lse_lsg_cl_acc,
'max_ms_cl_brg_lse_r_cl_acc' AS max_ms_cl_brg_lse_r_cl_acc,
'max_ms_cl_brg_lse_cf_cl_acc' AS max_ms_cl_brg_lse_cf_cl_acc,
'max_ms_cl_brg_lse_other_cl_acc' AS max_ms_cl_brg_lse_other_cl_acc,
'avg_ms_cl_cl_acc' AS avg_ms_cl_cl_acc,
'avg_ms_cl_bk_cl_acc' AS avg_ms_cl_bk_cl_acc,
'avg_ms_cl_bk_pq_cl_acc' AS avg_ms_cl_bk_pq_cl_acc,
'avg_ms_cl_bk_cs_cl_acc' AS avg_ms_cl_bk_cs_cl_acc,
'avg_ms_cl_bk_lsg_cl_acc' AS avg_ms_cl_bk_lsg_cl_acc,
'avg_ms_cl_bk_r_cl_acc' AS avg_ms_cl_bk_r_cl_acc,
'avg_ms_cl_bk_cf_cl_acc' AS avg_ms_cl_bk_cf_cl_acc,
'avg_ms_cl_bk_other_cl_acc' AS avg_ms_cl_bk_other_cl_acc,
'avg_ms_cl_lse_cl_acc' AS avg_ms_cl_lse_cl_acc,
'avg_ms_cl_lse_pq_cl_acc' AS avg_ms_cl_lse_pq_cl_acc,
'avg_ms_cl_lse_cs_cl_acc' AS avg_ms_cl_lse_cs_cl_acc,
'avg_ms_cl_lse_lsg_cl_acc' AS avg_ms_cl_lse_lsg_cl_acc,
'avg_ms_cl_lse_r_cl_acc' AS avg_ms_cl_lse_r_cl_acc,
'avg_ms_cl_lse_cf_cl_acc' AS avg_ms_cl_lse_cf_cl_acc,
'avg_ms_cl_lse_other_cl_acc' AS avg_ms_cl_lse_other_cl_acc,
'avg_ms_cl_un_cre_cl_acc' AS avg_ms_cl_un_cre_cl_acc,
'avg_ms_cl_un_cre_pq_cl_acc' AS avg_ms_cl_un_cre_pq_cl_acc,
'avg_ms_cl_un_cre_cs_cl_acc' AS avg_ms_cl_un_cre_cs_cl_acc,
'avg_ms_cl_un_cre_lsg_cl_acc' AS avg_ms_cl_un_cre_lsg_cl_acc,
'avg_ms_cl_un_cre_r_cl_acc' AS avg_ms_cl_un_cre_r_cl_acc,
'avg_ms_cl_un_cre_cf_cl_acc' AS avg_ms_cl_un_cre_cf_cl_acc,
'avg_ms_cl_un_cre_other_cl_acc' AS avg_ms_cl_un_cre_other_cl_acc,
'avg_ms_cl_other_fin_cl_acc' AS avg_ms_cl_other_fin_cl_acc,
'avg_ms_cl_other_fin_pq_cl_acc' AS avg_ms_cl_other_fin_pq_cl_acc,
'avg_ms_cl_other_fin_cs_cl_acc' AS avg_ms_cl_other_fin_cs_cl_acc,
'avg_ms_cl_other_fin_lsg_cl_acc' AS avg_ms_cl_other_fin_lsg_cl_acc,
'avg_ms_cl_other_fin_r_cl_acc' AS avg_ms_cl_other_fin_r_cl_acc,
'avg_ms_cl_other_fin_cf_cl_acc' AS avg_ms_cl_other_fin_cf_cl_acc,
'avg_ms_cl_other_fin_other_cl_acc' AS avg_ms_cl_other_fin_other_cl_acc,
'avg_ms_cl_gbn_cl_acc' AS avg_ms_cl_gbn_cl_acc,
'avg_ms_cl_gbn_pq_cl_acc' AS avg_ms_cl_gbn_pq_cl_acc,
'avg_ms_cl_gbn_cs_cl_acc' AS avg_ms_cl_gbn_cs_cl_acc,
'avg_ms_cl_gbn_lsg_cl_acc' AS avg_ms_cl_gbn_lsg_cl_acc,
'avg_ms_cl_gbn_r_cl_acc' AS avg_ms_cl_gbn_r_cl_acc,
'avg_ms_cl_gbn_cf_cl_acc' AS avg_ms_cl_gbn_cf_cl_acc,
'avg_ms_cl_gbn_other_cl_acc' AS avg_ms_cl_gbn_other_cl_acc,
'avg_ms_cl_brg_cl_acc' AS avg_ms_cl_brg_cl_acc,
'avg_ms_cl_brg_pq_cl_acc' AS avg_ms_cl_brg_pq_cl_acc,
'avg_ms_cl_brg_cs_cl_acc' AS avg_ms_cl_brg_cs_cl_acc,
'avg_ms_cl_brg_lsg_cl_acc' AS avg_ms_cl_brg_lsg_cl_acc,
'avg_ms_cl_brg_r_cl_acc' AS avg_ms_cl_brg_r_cl_acc,
'avg_ms_cl_brg_cf_cl_acc' AS avg_ms_cl_brg_cf_cl_acc,
'avg_ms_cl_brg_other_cl_acc' AS avg_ms_cl_brg_other_cl_acc,
'avg_ms_cl_brg_lse_cl_acc' AS avg_ms_cl_brg_lse_cl_acc,
'avg_ms_cl_brg_lse_pq_cl_acc' AS avg_ms_cl_brg_lse_pq_cl_acc,
'avg_ms_cl_brg_lse_cs_cl_acc' AS avg_ms_cl_brg_lse_cs_cl_acc,
'avg_ms_cl_brg_lse_lsg_cl_acc' AS avg_ms_cl_brg_lse_lsg_cl_acc,
'avg_ms_cl_brg_lse_r_cl_acc' AS avg_ms_cl_brg_lse_r_cl_acc,
'avg_ms_cl_brg_lse_cf_cl_acc' AS avg_ms_cl_brg_lse_cf_cl_acc,
'avg_ms_cl_brg_lse_other_cl_acc' AS avg_ms_cl_brg_lse_other_cl_acc,
'min_ms_cl_cl_acc' AS min_ms_cl_cl_acc,
'min_ms_cl_bk_cl_acc' AS min_ms_cl_bk_cl_acc,
'min_ms_cl_bk_pq_cl_acc' AS min_ms_cl_bk_pq_cl_acc,
'min_ms_cl_bk_cs_cl_acc' AS min_ms_cl_bk_cs_cl_acc,
'min_ms_cl_bk_lsg_cl_acc' AS min_ms_cl_bk_lsg_cl_acc,
'min_ms_cl_bk_r_cl_acc' AS min_ms_cl_bk_r_cl_acc,
'min_ms_cl_bk_cf_cl_acc' AS min_ms_cl_bk_cf_cl_acc,
'min_ms_cl_bk_other_cl_acc' AS min_ms_cl_bk_other_cl_acc,
'min_ms_cl_lse_cl_acc' AS min_ms_cl_lse_cl_acc,
'min_ms_cl_lse_pq_cl_acc' AS min_ms_cl_lse_pq_cl_acc,
'min_ms_cl_lse_cs_cl_acc' AS min_ms_cl_lse_cs_cl_acc,
'min_ms_cl_lse_lsg_cl_acc' AS min_ms_cl_lse_lsg_cl_acc,
'min_ms_cl_lse_r_cl_acc' AS min_ms_cl_lse_r_cl_acc,
'min_ms_cl_lse_cf_cl_acc' AS min_ms_cl_lse_cf_cl_acc,
'min_ms_cl_lse_other_cl_acc' AS min_ms_cl_lse_other_cl_acc,
'min_ms_cl_un_cre_cl_acc' AS min_ms_cl_un_cre_cl_acc,
'min_ms_cl_un_cre_pq_cl_acc' AS min_ms_cl_un_cre_pq_cl_acc,
'min_ms_cl_un_cre_cs_cl_acc' AS min_ms_cl_un_cre_cs_cl_acc,
'min_ms_cl_un_cre_lsg_cl_acc' AS min_ms_cl_un_cre_lsg_cl_acc,
'min_ms_cl_un_cre_r_cl_acc' AS min_ms_cl_un_cre_r_cl_acc,
'min_ms_cl_un_cre_cf_cl_acc' AS min_ms_cl_un_cre_cf_cl_acc,
'min_ms_cl_un_cre_other_cl_acc' AS min_ms_cl_un_cre_other_cl_acc,
'min_ms_cl_other_fin_cl_acc' AS min_ms_cl_other_fin_cl_acc,
'min_ms_cl_other_fin_pq_cl_acc' AS min_ms_cl_other_fin_pq_cl_acc,
'min_ms_cl_other_fin_cs_cl_acc' AS min_ms_cl_other_fin_cs_cl_acc,
'min_ms_cl_other_fin_lsg_cl_acc' AS min_ms_cl_other_fin_lsg_cl_acc,
'min_ms_cl_other_fin_r_cl_acc' AS min_ms_cl_other_fin_r_cl_acc,
'min_ms_cl_other_fin_cf_cl_acc' AS min_ms_cl_other_fin_cf_cl_acc,
'min_ms_cl_other_fin_other_cl_acc' AS min_ms_cl_other_fin_other_cl_acc,
'min_ms_cl_gbn_cl_acc' AS min_ms_cl_gbn_cl_acc,
'min_ms_cl_gbn_pq_cl_acc' AS min_ms_cl_gbn_pq_cl_acc,
'min_ms_cl_gbn_cs_cl_acc' AS min_ms_cl_gbn_cs_cl_acc,
'min_ms_cl_gbn_lsg_cl_acc' AS min_ms_cl_gbn_lsg_cl_acc,
'min_ms_cl_gbn_r_cl_acc' AS min_ms_cl_gbn_r_cl_acc,
'min_ms_cl_gbn_cf_cl_acc' AS min_ms_cl_gbn_cf_cl_acc,
'min_ms_cl_gbn_other_cl_acc' AS min_ms_cl_gbn_other_cl_acc,
'min_ms_cl_brg_cl_acc' AS min_ms_cl_brg_cl_acc,
'min_ms_cl_brg_pq_cl_acc' AS min_ms_cl_brg_pq_cl_acc,
'min_ms_cl_brg_cs_cl_acc' AS min_ms_cl_brg_cs_cl_acc,
'min_ms_cl_brg_lsg_cl_acc' AS min_ms_cl_brg_lsg_cl_acc,
'min_ms_cl_brg_r_cl_acc' AS min_ms_cl_brg_r_cl_acc,
'min_ms_cl_brg_cf_cl_acc' AS min_ms_cl_brg_cf_cl_acc,
'min_ms_cl_brg_other_cl_acc' AS min_ms_cl_brg_other_cl_acc,
'min_ms_cl_brg_lse_cl_acc' AS min_ms_cl_brg_lse_cl_acc,
'min_ms_cl_brg_lse_pq_cl_acc' AS min_ms_cl_brg_lse_pq_cl_acc,
'min_ms_cl_brg_lse_cs_cl_acc' AS min_ms_cl_brg_lse_cs_cl_acc,
'min_ms_cl_brg_lse_lsg_cl_acc' AS min_ms_cl_brg_lse_lsg_cl_acc,
'min_ms_cl_brg_lse_r_cl_acc' AS min_ms_cl_brg_lse_r_cl_acc,
'min_ms_cl_brg_lse_cf_cl_acc' AS min_ms_cl_brg_lse_cf_cl_acc,
'min_ms_cl_brg_lse_other_cl_acc' AS min_ms_cl_brg_lse_other_cl_acc,
'num_clavobs_cl_acc' AS num_clavobs_cl_acc,
'num_clavobs_bk_cl_acc' AS num_clavobs_bk_cl_acc,
'num_clavobs_bk_pq_cl_acc' AS num_clavobs_bk_pq_cl_acc,
'num_clavobs_bk_cs_cl_acc' AS num_clavobs_bk_cs_cl_acc,
'num_clavobs_bk_lsg_cl_acc' AS num_clavobs_bk_lsg_cl_acc,
'num_clavobs_bk_r_cl_acc' AS num_clavobs_bk_r_cl_acc,
'num_clavobs_bk_cf_cl_acc' AS num_clavobs_bk_cf_cl_acc,
'num_clavobs_bk_other_cl_acc' AS num_clavobs_bk_other_cl_acc,
'num_clavobs_lse_cl_acc' AS num_clavobs_lse_cl_acc,
'num_clavobs_lse_pq_cl_acc' AS num_clavobs_lse_pq_cl_acc,
'num_clavobs_lse_cs_cl_acc' AS num_clavobs_lse_cs_cl_acc,
'num_clavobs_lse_lsg_cl_acc' AS num_clavobs_lse_lsg_cl_acc,
'num_clavobs_lse_r_cl_acc' AS num_clavobs_lse_r_cl_acc,
'num_clavobs_lse_cf_cl_acc' AS num_clavobs_lse_cf_cl_acc,
'num_clavobs_lse_other_cl_acc' AS num_clavobs_lse_other_cl_acc,
'num_clavobs_un_cre_cl_acc' AS num_clavobs_un_cre_cl_acc,
'num_clavobs_un_cre_pq_cl_acc' AS num_clavobs_un_cre_pq_cl_acc,
'num_clavobs_un_cre_cs_cl_acc' AS num_clavobs_un_cre_cs_cl_acc,
'num_clavobs_un_cre_lsg_cl_acc' AS num_clavobs_un_cre_lsg_cl_acc,
'num_clavobs_un_cre_r_cl_acc' AS num_clavobs_un_cre_r_cl_acc,
'num_clavobs_un_cre_cf_cl_acc' AS num_clavobs_un_cre_cf_cl_acc,
'num_clavobs_un_cre_other_cl_acc' AS num_clavobs_un_cre_other_cl_acc,
'num_clavobs_other_fin_cl_acc' AS num_clavobs_other_fin_cl_acc,
'num_clavobs_other_fin_pq_cl_acc' AS num_clavobs_other_fin_pq_cl_acc,
'num_clavobs_other_fin_cs_cl_acc' AS num_clavobs_other_fin_cs_cl_acc,
'num_clavobs_other_fin_lsg_cl_acc' AS num_clavobs_other_fin_lsg_cl_acc,
'num_clavobs_other_fin_r_cl_acc' AS num_clavobs_other_fin_r_cl_acc,
'num_clavobs_other_fin_cf_cl_acc' AS num_clavobs_other_fin_cf_cl_acc,
'num_clavobs_other_fin_other_cl_acc' AS num_clavobs_other_fin_other_cl_acc,
'num_clavobs_gbn_cl_acc' AS num_clavobs_gbn_cl_acc,
'num_clavobs_gbn_pq_cl_acc' AS num_clavobs_gbn_pq_cl_acc,
'num_clavobs_gbn_cs_cl_acc' AS num_clavobs_gbn_cs_cl_acc,
'num_clavobs_gbn_lsg_cl_acc' AS num_clavobs_gbn_lsg_cl_acc,
'num_clavobs_gbn_r_cl_acc' AS num_clavobs_gbn_r_cl_acc,
'num_clavobs_gbn_cf_cl_acc' AS num_clavobs_gbn_cf_cl_acc,
'num_clavobs_gbn_other_cl_acc' AS num_clavobs_gbn_other_cl_acc,
'num_clavobs_brg_cl_acc' AS num_clavobs_brg_cl_acc,
'num_clavobs_brg_pq_cl_acc' AS num_clavobs_brg_pq_cl_acc,
'num_clavobs_brg_cs_cl_acc' AS num_clavobs_brg_cs_cl_acc,
'num_clavobs_brg_lsg_cl_acc' AS num_clavobs_brg_lsg_cl_acc,
'num_clavobs_brg_r_cl_acc' AS num_clavobs_brg_r_cl_acc,
'num_clavobs_brg_cf_cl_acc' AS num_clavobs_brg_cf_cl_acc,
'num_clavobs_brg_other_cl_acc' AS num_clavobs_brg_other_cl_acc,
'num_clavobs_brg_lse_cl_acc' AS num_clavobs_brg_lse_cl_acc,
'num_clavobs_brg_lse_pq_cl_acc' AS num_clavobs_brg_lse_pq_cl_acc,
'num_clavobs_brg_lse_cs_cl_acc' AS num_clavobs_brg_lse_cs_cl_acc,
'num_clavobs_brg_lse_lsg_cl_acc' AS num_clavobs_brg_lse_lsg_cl_acc,
'num_clavobs_brg_lse_r_cl_acc' AS num_clavobs_brg_lse_r_cl_acc,
'num_clavobs_brg_lse_cf_cl_acc' AS num_clavobs_brg_lse_cf_cl_acc,
'num_clavobs_brg_lse_other_cl_acc' AS num_clavobs_brg_lse_other_cl_acc,
'num_clavobs_cl_acc_03m' AS num_clavobs_cl_acc_03m,
'num_clavobs_bk_cl_acc_03m' AS num_clavobs_bk_cl_acc_03m,
'num_clavobs_bk_pq_cl_acc_03m' AS num_clavobs_bk_pq_cl_acc_03m,
'num_clavobs_bk_cs_cl_acc_03m' AS num_clavobs_bk_cs_cl_acc_03m,
'num_clavobs_bk_lsg_cl_acc_03m' AS num_clavobs_bk_lsg_cl_acc_03m,
'num_clavobs_bk_r_cl_acc_03m' AS num_clavobs_bk_r_cl_acc_03m,
'num_clavobs_bk_cf_cl_acc_03m' AS num_clavobs_bk_cf_cl_acc_03m,
'num_clavobs_bk_other_cl_acc_03m' AS num_clavobs_bk_other_cl_acc_03m,
'num_clavobs_lse_cl_acc_03m' AS num_clavobs_lse_cl_acc_03m,
'num_clavobs_lse_pq_cl_acc_03m' AS num_clavobs_lse_pq_cl_acc_03m,
'num_clavobs_lse_cs_cl_acc_03m' AS num_clavobs_lse_cs_cl_acc_03m,
'num_clavobs_lse_lsg_cl_acc_03m' AS num_clavobs_lse_lsg_cl_acc_03m,
'num_clavobs_lse_r_cl_acc_03m' AS num_clavobs_lse_r_cl_acc_03m,
'num_clavobs_lse_cf_cl_acc_03m' AS num_clavobs_lse_cf_cl_acc_03m,
'num_clavobs_lse_other_cl_acc_03m' AS num_clavobs_lse_other_cl_acc_03m,
'num_clavobs_un_cre_cl_acc_03m' AS num_clavobs_un_cre_cl_acc_03m,
'num_clavobs_un_cre_pq_cl_acc_03m' AS num_clavobs_un_cre_pq_cl_acc_03m,
'num_clavobs_un_cre_cs_cl_acc_03m' AS num_clavobs_un_cre_cs_cl_acc_03m,
'num_clavobs_un_cre_lsg_cl_acc_03m' AS num_clavobs_un_cre_lsg_cl_acc_03m,
'num_clavobs_un_cre_r_cl_acc_03m' AS num_clavobs_un_cre_r_cl_acc_03m,
'num_clavobs_un_cre_cf_cl_acc_03m' AS num_clavobs_un_cre_cf_cl_acc_03m,
'num_clavobs_un_cre_other_cl_acc_03m' AS num_clavobs_un_cre_other_cl_acc_03m,
'num_clavobs_other_fin_cl_acc_03m' AS num_clavobs_other_fin_cl_acc_03m,
'num_clavobs_other_fin_pq_cl_acc_03m' AS num_clavobs_other_fin_pq_cl_acc_03m,
'num_clavobs_other_fin_cs_cl_acc_03m' AS num_clavobs_other_fin_cs_cl_acc_03m,
'num_clavobs_other_fin_lsg_cl_acc_03m' AS num_clavobs_other_fin_lsg_cl_acc_03m,
'num_clavobs_other_fin_r_cl_acc_03m' AS num_clavobs_other_fin_r_cl_acc_03m,
'num_clavobs_other_fin_cf_cl_acc_03m' AS num_clavobs_other_fin_cf_cl_acc_03m,
'num_clavobs_other_fin_other_cl_acc_03m' AS num_clavobs_other_fin_other_cl_acc_03m,
'num_clavobs_gbn_cl_acc_03m' AS num_clavobs_gbn_cl_acc_03m,
'num_clavobs_gbn_pq_cl_acc_03m' AS num_clavobs_gbn_pq_cl_acc_03m,
'num_clavobs_gbn_cs_cl_acc_03m' AS num_clavobs_gbn_cs_cl_acc_03m,
'num_clavobs_gbn_lsg_cl_acc_03m' AS num_clavobs_gbn_lsg_cl_acc_03m,
'num_clavobs_gbn_r_cl_acc_03m' AS num_clavobs_gbn_r_cl_acc_03m,
'num_clavobs_gbn_cf_cl_acc_03m' AS num_clavobs_gbn_cf_cl_acc_03m,
'num_clavobs_gbn_other_cl_acc_03m' AS num_clavobs_gbn_other_cl_acc_03m,
'num_clavobs_brg_cl_acc_03m' AS num_clavobs_brg_cl_acc_03m,
'num_clavobs_brg_pq_cl_acc_03m' AS num_clavobs_brg_pq_cl_acc_03m,
'num_clavobs_brg_cs_cl_acc_03m' AS num_clavobs_brg_cs_cl_acc_03m,
'num_clavobs_brg_lsg_cl_acc_03m' AS num_clavobs_brg_lsg_cl_acc_03m,
'num_clavobs_brg_r_cl_acc_03m' AS num_clavobs_brg_r_cl_acc_03m,
'num_clavobs_brg_cf_cl_acc_03m' AS num_clavobs_brg_cf_cl_acc_03m,
'num_clavobs_brg_other_cl_acc_03m' AS num_clavobs_brg_other_cl_acc_03m,
'num_clavobs_brg_lse_cl_acc_03m' AS num_clavobs_brg_lse_cl_acc_03m,
'num_clavobs_brg_lse_pq_cl_acc_03m' AS num_clavobs_brg_lse_pq_cl_acc_03m,
'num_clavobs_brg_lse_cs_cl_acc_03m' AS num_clavobs_brg_lse_cs_cl_acc_03m,
'num_clavobs_brg_lse_lsg_cl_acc_03m' AS num_clavobs_brg_lse_lsg_cl_acc_03m,
'num_clavobs_brg_lse_r_cl_acc_03m' AS num_clavobs_brg_lse_r_cl_acc_03m,
'num_clavobs_brg_lse_cf_cl_acc_03m' AS num_clavobs_brg_lse_cf_cl_acc_03m,
'num_clavobs_brg_lse_other_cl_acc_03m' AS num_clavobs_brg_lse_other_cl_acc_03m,
'num_clavobs_cl_acc_06m' AS num_clavobs_cl_acc_06m,
'num_clavobs_bk_cl_acc_06m' AS num_clavobs_bk_cl_acc_06m,
'num_clavobs_bk_pq_cl_acc_06m' AS num_clavobs_bk_pq_cl_acc_06m,
'num_clavobs_bk_cs_cl_acc_06m' AS num_clavobs_bk_cs_cl_acc_06m,
'num_clavobs_bk_lsg_cl_acc_06m' AS num_clavobs_bk_lsg_cl_acc_06m,
'num_clavobs_bk_r_cl_acc_06m' AS num_clavobs_bk_r_cl_acc_06m,
'num_clavobs_bk_cf_cl_acc_06m' AS num_clavobs_bk_cf_cl_acc_06m,
'num_clavobs_bk_other_cl_acc_06m' AS num_clavobs_bk_other_cl_acc_06m,
'num_clavobs_lse_cl_acc_06m' AS num_clavobs_lse_cl_acc_06m,
'num_clavobs_lse_pq_cl_acc_06m' AS num_clavobs_lse_pq_cl_acc_06m,
'num_clavobs_lse_cs_cl_acc_06m' AS num_clavobs_lse_cs_cl_acc_06m,
'num_clavobs_lse_lsg_cl_acc_06m' AS num_clavobs_lse_lsg_cl_acc_06m,
'num_clavobs_lse_r_cl_acc_06m' AS num_clavobs_lse_r_cl_acc_06m,
'num_clavobs_lse_cf_cl_acc_06m' AS num_clavobs_lse_cf_cl_acc_06m,
'num_clavobs_lse_other_cl_acc_06m' AS num_clavobs_lse_other_cl_acc_06m,
'num_clavobs_un_cre_cl_acc_06m' AS num_clavobs_un_cre_cl_acc_06m,
'num_clavobs_un_cre_pq_cl_acc_06m' AS num_clavobs_un_cre_pq_cl_acc_06m,
'num_clavobs_un_cre_cs_cl_acc_06m' AS num_clavobs_un_cre_cs_cl_acc_06m,
'num_clavobs_un_cre_lsg_cl_acc_06m' AS num_clavobs_un_cre_lsg_cl_acc_06m,
'num_clavobs_un_cre_r_cl_acc_06m' AS num_clavobs_un_cre_r_cl_acc_06m,
'num_clavobs_un_cre_cf_cl_acc_06m' AS num_clavobs_un_cre_cf_cl_acc_06m,
'num_clavobs_un_cre_other_cl_acc_06m' AS num_clavobs_un_cre_other_cl_acc_06m,
'num_clavobs_other_fin_cl_acc_06m' AS num_clavobs_other_fin_cl_acc_06m,
'num_clavobs_other_fin_pq_cl_acc_06m' AS num_clavobs_other_fin_pq_cl_acc_06m,
'num_clavobs_other_fin_cs_cl_acc_06m' AS num_clavobs_other_fin_cs_cl_acc_06m,
'num_clavobs_other_fin_lsg_cl_acc_06m' AS num_clavobs_other_fin_lsg_cl_acc_06m,
'num_clavobs_other_fin_r_cl_acc_06m' AS num_clavobs_other_fin_r_cl_acc_06m,
'num_clavobs_other_fin_cf_cl_acc_06m' AS num_clavobs_other_fin_cf_cl_acc_06m,
'num_clavobs_other_fin_other_cl_acc_06m' AS num_clavobs_other_fin_other_cl_acc_06m,
'num_clavobs_gbn_cl_acc_06m' AS num_clavobs_gbn_cl_acc_06m,
'num_clavobs_gbn_pq_cl_acc_06m' AS num_clavobs_gbn_pq_cl_acc_06m,
'num_clavobs_gbn_cs_cl_acc_06m' AS num_clavobs_gbn_cs_cl_acc_06m,
'num_clavobs_gbn_lsg_cl_acc_06m' AS num_clavobs_gbn_lsg_cl_acc_06m,
'num_clavobs_gbn_r_cl_acc_06m' AS num_clavobs_gbn_r_cl_acc_06m,
'num_clavobs_gbn_cf_cl_acc_06m' AS num_clavobs_gbn_cf_cl_acc_06m,
'num_clavobs_gbn_other_cl_acc_06m' AS num_clavobs_gbn_other_cl_acc_06m,
'num_clavobs_brg_cl_acc_06m' AS num_clavobs_brg_cl_acc_06m,
'num_clavobs_brg_pq_cl_acc_06m' AS num_clavobs_brg_pq_cl_acc_06m,
'num_clavobs_brg_cs_cl_acc_06m' AS num_clavobs_brg_cs_cl_acc_06m,
'num_clavobs_brg_lsg_cl_acc_06m' AS num_clavobs_brg_lsg_cl_acc_06m,
'num_clavobs_brg_r_cl_acc_06m' AS num_clavobs_brg_r_cl_acc_06m,
'num_clavobs_brg_cf_cl_acc_06m' AS num_clavobs_brg_cf_cl_acc_06m,
'num_clavobs_brg_other_cl_acc_06m' AS num_clavobs_brg_other_cl_acc_06m,
'num_clavobs_brg_lse_cl_acc_06m' AS num_clavobs_brg_lse_cl_acc_06m,
'num_clavobs_brg_lse_pq_cl_acc_06m' AS num_clavobs_brg_lse_pq_cl_acc_06m,
'num_clavobs_brg_lse_cs_cl_acc_06m' AS num_clavobs_brg_lse_cs_cl_acc_06m,
'num_clavobs_brg_lse_lsg_cl_acc_06m' AS num_clavobs_brg_lse_lsg_cl_acc_06m,
'num_clavobs_brg_lse_r_cl_acc_06m' AS num_clavobs_brg_lse_r_cl_acc_06m,
'num_clavobs_brg_lse_cf_cl_acc_06m' AS num_clavobs_brg_lse_cf_cl_acc_06m,
'num_clavobs_brg_lse_other_cl_acc_06m' AS num_clavobs_brg_lse_other_cl_acc_06m,
'num_clavobs_cl_acc_12m' AS num_clavobs_cl_acc_12m,
'num_clavobs_bk_cl_acc_12m' AS num_clavobs_bk_cl_acc_12m,
'num_clavobs_bk_pq_cl_acc_12m' AS num_clavobs_bk_pq_cl_acc_12m,
'num_clavobs_bk_cs_cl_acc_12m' AS num_clavobs_bk_cs_cl_acc_12m,
'num_clavobs_bk_lsg_cl_acc_12m' AS num_clavobs_bk_lsg_cl_acc_12m,
'num_clavobs_bk_r_cl_acc_12m' AS num_clavobs_bk_r_cl_acc_12m,
'num_clavobs_bk_cf_cl_acc_12m' AS num_clavobs_bk_cf_cl_acc_12m,
'num_clavobs_bk_other_cl_acc_12m' AS num_clavobs_bk_other_cl_acc_12m,
'num_clavobs_lse_cl_acc_12m' AS num_clavobs_lse_cl_acc_12m,
'num_clavobs_lse_pq_cl_acc_12m' AS num_clavobs_lse_pq_cl_acc_12m,
'num_clavobs_lse_cs_cl_acc_12m' AS num_clavobs_lse_cs_cl_acc_12m,
'num_clavobs_lse_lsg_cl_acc_12m' AS num_clavobs_lse_lsg_cl_acc_12m,
'num_clavobs_lse_r_cl_acc_12m' AS num_clavobs_lse_r_cl_acc_12m,
'num_clavobs_lse_cf_cl_acc_12m' AS num_clavobs_lse_cf_cl_acc_12m,
'num_clavobs_lse_other_cl_acc_12m' AS num_clavobs_lse_other_cl_acc_12m,
'num_clavobs_un_cre_cl_acc_12m' AS num_clavobs_un_cre_cl_acc_12m,
'num_clavobs_un_cre_pq_cl_acc_12m' AS num_clavobs_un_cre_pq_cl_acc_12m,
'num_clavobs_un_cre_cs_cl_acc_12m' AS num_clavobs_un_cre_cs_cl_acc_12m,
'num_clavobs_un_cre_lsg_cl_acc_12m' AS num_clavobs_un_cre_lsg_cl_acc_12m,
'num_clavobs_un_cre_r_cl_acc_12m' AS num_clavobs_un_cre_r_cl_acc_12m,
'num_clavobs_un_cre_cf_cl_acc_12m' AS num_clavobs_un_cre_cf_cl_acc_12m,
'num_clavobs_un_cre_other_cl_acc_12m' AS num_clavobs_un_cre_other_cl_acc_12m,
'num_clavobs_other_fin_cl_acc_12m' AS num_clavobs_other_fin_cl_acc_12m,
'num_clavobs_other_fin_pq_cl_acc_12m' AS num_clavobs_other_fin_pq_cl_acc_12m,
'num_clavobs_other_fin_cs_cl_acc_12m' AS num_clavobs_other_fin_cs_cl_acc_12m,
'num_clavobs_other_fin_lsg_cl_acc_12m' AS num_clavobs_other_fin_lsg_cl_acc_12m,
'num_clavobs_other_fin_r_cl_acc_12m' AS num_clavobs_other_fin_r_cl_acc_12m,
'num_clavobs_other_fin_cf_cl_acc_12m' AS num_clavobs_other_fin_cf_cl_acc_12m,
'num_clavobs_other_fin_other_cl_acc_12m' AS num_clavobs_other_fin_other_cl_acc_12m,
'num_clavobs_gbn_cl_acc_12m' AS num_clavobs_gbn_cl_acc_12m,
'num_clavobs_gbn_pq_cl_acc_12m' AS num_clavobs_gbn_pq_cl_acc_12m,
'num_clavobs_gbn_cs_cl_acc_12m' AS num_clavobs_gbn_cs_cl_acc_12m,
'num_clavobs_gbn_lsg_cl_acc_12m' AS num_clavobs_gbn_lsg_cl_acc_12m,
'num_clavobs_gbn_r_cl_acc_12m' AS num_clavobs_gbn_r_cl_acc_12m,
'num_clavobs_gbn_cf_cl_acc_12m' AS num_clavobs_gbn_cf_cl_acc_12m,
'num_clavobs_gbn_other_cl_acc_12m' AS num_clavobs_gbn_other_cl_acc_12m,
'num_clavobs_brg_cl_acc_12m' AS num_clavobs_brg_cl_acc_12m,
'num_clavobs_brg_pq_cl_acc_12m' AS num_clavobs_brg_pq_cl_acc_12m,
'num_clavobs_brg_cs_cl_acc_12m' AS num_clavobs_brg_cs_cl_acc_12m,
'num_clavobs_brg_lsg_cl_acc_12m' AS num_clavobs_brg_lsg_cl_acc_12m,
'num_clavobs_brg_r_cl_acc_12m' AS num_clavobs_brg_r_cl_acc_12m,
'num_clavobs_brg_cf_cl_acc_12m' AS num_clavobs_brg_cf_cl_acc_12m,
'num_clavobs_brg_other_cl_acc_12m' AS num_clavobs_brg_other_cl_acc_12m,
'num_clavobs_brg_lse_cl_acc_12m' AS num_clavobs_brg_lse_cl_acc_12m,
'num_clavobs_brg_lse_pq_cl_acc_12m' AS num_clavobs_brg_lse_pq_cl_acc_12m,
'num_clavobs_brg_lse_cs_cl_acc_12m' AS num_clavobs_brg_lse_cs_cl_acc_12m,
'num_clavobs_brg_lse_lsg_cl_acc_12m' AS num_clavobs_brg_lse_lsg_cl_acc_12m,
'num_clavobs_brg_lse_r_cl_acc_12m' AS num_clavobs_brg_lse_r_cl_acc_12m,
'num_clavobs_brg_lse_cf_cl_acc_12m' AS num_clavobs_brg_lse_cf_cl_acc_12m,
'num_clavobs_brg_lse_other_cl_acc_12m' AS num_clavobs_brg_lse_other_cl_acc_12m;
INSERT INTO RSS_MCV_NEGOCIOS_VAR_CR_CL_ACC_2
SELECT   
a.fecha , 
a.rfc,
b.max_ms_cl_cl_acc,
b.max_ms_cl_bk_cl_acc,
b.max_ms_cl_bk_pq_cl_acc,
b.max_ms_cl_bk_cs_cl_acc,
b.max_ms_cl_bk_lsg_cl_acc,
b.max_ms_cl_bk_r_cl_acc,
b.max_ms_cl_bk_cf_cl_acc,
b.max_ms_cl_bk_other_cl_acc,
b.max_ms_cl_lse_cl_acc,
b.max_ms_cl_lse_pq_cl_acc,
b.max_ms_cl_lse_cs_cl_acc,
b.max_ms_cl_lse_lsg_cl_acc,
b.max_ms_cl_lse_r_cl_acc,
b.max_ms_cl_lse_cf_cl_acc,
b.max_ms_cl_lse_other_cl_acc,
b.max_ms_cl_un_cre_cl_acc,
b.max_ms_cl_un_cre_pq_cl_acc,
b.max_ms_cl_un_cre_cs_cl_acc,
b.max_ms_cl_un_cre_lsg_cl_acc,
b.max_ms_cl_un_cre_r_cl_acc,
b.max_ms_cl_un_cre_cf_cl_acc,
b.max_ms_cl_un_cre_other_cl_acc,
b.max_ms_cl_other_fin_cl_acc,
b.max_ms_cl_other_fin_pq_cl_acc,
b.max_ms_cl_other_fin_cs_cl_acc,
b.max_ms_cl_other_fin_lsg_cl_acc,
b.max_ms_cl_other_fin_r_cl_acc,
b.max_ms_cl_other_fin_cf_cl_acc,
b.max_ms_cl_other_fin_other_cl_acc,
b.max_ms_cl_gbn_cl_acc,
b.max_ms_cl_gbn_pq_cl_acc,
b.max_ms_cl_gbn_cs_cl_acc,
b.max_ms_cl_gbn_lsg_cl_acc,
b.max_ms_cl_gbn_r_cl_acc,
b.max_ms_cl_gbn_cf_cl_acc,
b.max_ms_cl_gbn_other_cl_acc,
b.max_ms_cl_brg_cl_acc,
b.max_ms_cl_brg_pq_cl_acc,
b.max_ms_cl_brg_cs_cl_acc,
b.max_ms_cl_brg_lsg_cl_acc,
b.max_ms_cl_brg_r_cl_acc,
b.max_ms_cl_brg_cf_cl_acc,
b.max_ms_cl_brg_other_cl_acc,
b.max_ms_cl_brg_lse_cl_acc,
b.max_ms_cl_brg_lse_pq_cl_acc,
b.max_ms_cl_brg_lse_cs_cl_acc,
b.max_ms_cl_brg_lse_lsg_cl_acc,
b.max_ms_cl_brg_lse_r_cl_acc,
b.max_ms_cl_brg_lse_cf_cl_acc,
b.max_ms_cl_brg_lse_other_cl_acc,
b.avg_ms_cl_cl_acc,
b.avg_ms_cl_bk_cl_acc,
b.avg_ms_cl_bk_pq_cl_acc,
b.avg_ms_cl_bk_cs_cl_acc,
b.avg_ms_cl_bk_lsg_cl_acc,
b.avg_ms_cl_bk_r_cl_acc,
b.avg_ms_cl_bk_cf_cl_acc,
b.avg_ms_cl_bk_other_cl_acc,
b.avg_ms_cl_lse_cl_acc,
b.avg_ms_cl_lse_pq_cl_acc,
b.avg_ms_cl_lse_cs_cl_acc,
b.avg_ms_cl_lse_lsg_cl_acc,
b.avg_ms_cl_lse_r_cl_acc,
b.avg_ms_cl_lse_cf_cl_acc,
b.avg_ms_cl_lse_other_cl_acc,
b.avg_ms_cl_un_cre_cl_acc,
b.avg_ms_cl_un_cre_pq_cl_acc,
b.avg_ms_cl_un_cre_cs_cl_acc,
b.avg_ms_cl_un_cre_lsg_cl_acc,
b.avg_ms_cl_un_cre_r_cl_acc,
b.avg_ms_cl_un_cre_cf_cl_acc,
b.avg_ms_cl_un_cre_other_cl_acc,
b.avg_ms_cl_other_fin_cl_acc,
b.avg_ms_cl_other_fin_pq_cl_acc,
b.avg_ms_cl_other_fin_cs_cl_acc,
b.avg_ms_cl_other_fin_lsg_cl_acc,
b.avg_ms_cl_other_fin_r_cl_acc,
b.avg_ms_cl_other_fin_cf_cl_acc,
b.avg_ms_cl_other_fin_other_cl_acc,
b.avg_ms_cl_gbn_cl_acc,
b.avg_ms_cl_gbn_pq_cl_acc,
b.avg_ms_cl_gbn_cs_cl_acc,
b.avg_ms_cl_gbn_lsg_cl_acc,
b.avg_ms_cl_gbn_r_cl_acc,
b.avg_ms_cl_gbn_cf_cl_acc,
b.avg_ms_cl_gbn_other_cl_acc,
b.avg_ms_cl_brg_cl_acc,
b.avg_ms_cl_brg_pq_cl_acc,
b.avg_ms_cl_brg_cs_cl_acc,
b.avg_ms_cl_brg_lsg_cl_acc,
b.avg_ms_cl_brg_r_cl_acc,
b.avg_ms_cl_brg_cf_cl_acc,
b.avg_ms_cl_brg_other_cl_acc,
b.avg_ms_cl_brg_lse_cl_acc,
b.avg_ms_cl_brg_lse_pq_cl_acc,
b.avg_ms_cl_brg_lse_cs_cl_acc,
b.avg_ms_cl_brg_lse_lsg_cl_acc,
b.avg_ms_cl_brg_lse_r_cl_acc,
b.avg_ms_cl_brg_lse_cf_cl_acc,
b.avg_ms_cl_brg_lse_other_cl_acc,
b.min_ms_cl_cl_acc,
b.min_ms_cl_bk_cl_acc,
b.min_ms_cl_bk_pq_cl_acc,
b.min_ms_cl_bk_cs_cl_acc,
b.min_ms_cl_bk_lsg_cl_acc,
b.min_ms_cl_bk_r_cl_acc,
b.min_ms_cl_bk_cf_cl_acc,
b.min_ms_cl_bk_other_cl_acc,
b.min_ms_cl_lse_cl_acc,
b.min_ms_cl_lse_pq_cl_acc,
b.min_ms_cl_lse_cs_cl_acc,
b.min_ms_cl_lse_lsg_cl_acc,
b.min_ms_cl_lse_r_cl_acc,
b.min_ms_cl_lse_cf_cl_acc,
b.min_ms_cl_lse_other_cl_acc,
b.min_ms_cl_un_cre_cl_acc,
b.min_ms_cl_un_cre_pq_cl_acc,
b.min_ms_cl_un_cre_cs_cl_acc,
b.min_ms_cl_un_cre_lsg_cl_acc,
b.min_ms_cl_un_cre_r_cl_acc,
b.min_ms_cl_un_cre_cf_cl_acc,
b.min_ms_cl_un_cre_other_cl_acc,
b.min_ms_cl_other_fin_cl_acc,
b.min_ms_cl_other_fin_pq_cl_acc,
b.min_ms_cl_other_fin_cs_cl_acc,
b.min_ms_cl_other_fin_lsg_cl_acc,
b.min_ms_cl_other_fin_r_cl_acc,
b.min_ms_cl_other_fin_cf_cl_acc,
b.min_ms_cl_other_fin_other_cl_acc,
b.min_ms_cl_gbn_cl_acc,
b.min_ms_cl_gbn_pq_cl_acc,
b.min_ms_cl_gbn_cs_cl_acc,
b.min_ms_cl_gbn_lsg_cl_acc,
b.min_ms_cl_gbn_r_cl_acc,
b.min_ms_cl_gbn_cf_cl_acc,
b.min_ms_cl_gbn_other_cl_acc,
b.min_ms_cl_brg_cl_acc,
b.min_ms_cl_brg_pq_cl_acc,
b.min_ms_cl_brg_cs_cl_acc,
b.min_ms_cl_brg_lsg_cl_acc,
b.min_ms_cl_brg_r_cl_acc,
b.min_ms_cl_brg_cf_cl_acc,
b.min_ms_cl_brg_other_cl_acc,
b.min_ms_cl_brg_lse_cl_acc,
b.min_ms_cl_brg_lse_pq_cl_acc,
b.min_ms_cl_brg_lse_cs_cl_acc,
b.min_ms_cl_brg_lse_lsg_cl_acc,
b.min_ms_cl_brg_lse_r_cl_acc,
b.min_ms_cl_brg_lse_cf_cl_acc,
b.min_ms_cl_brg_lse_other_cl_acc,
b.num_clavobs_cl_acc,
b.num_clavobs_bk_cl_acc,
b.num_clavobs_bk_pq_cl_acc,
b.num_clavobs_bk_cs_cl_acc,
b.num_clavobs_bk_lsg_cl_acc,
b.num_clavobs_bk_r_cl_acc,
b.num_clavobs_bk_cf_cl_acc,
b.num_clavobs_bk_other_cl_acc,
b.num_clavobs_lse_cl_acc,
b.num_clavobs_lse_pq_cl_acc,
b.num_clavobs_lse_cs_cl_acc,
b.num_clavobs_lse_lsg_cl_acc,
b.num_clavobs_lse_r_cl_acc,
b.num_clavobs_lse_cf_cl_acc,
b.num_clavobs_lse_other_cl_acc,
b.num_clavobs_un_cre_cl_acc,
b.num_clavobs_un_cre_pq_cl_acc,
b.num_clavobs_un_cre_cs_cl_acc,
b.num_clavobs_un_cre_lsg_cl_acc,
b.num_clavobs_un_cre_r_cl_acc,
b.num_clavobs_un_cre_cf_cl_acc,
b.num_clavobs_un_cre_other_cl_acc,
b.num_clavobs_other_fin_cl_acc,
b.num_clavobs_other_fin_pq_cl_acc,
b.num_clavobs_other_fin_cs_cl_acc,
b.num_clavobs_other_fin_lsg_cl_acc,
b.num_clavobs_other_fin_r_cl_acc,
b.num_clavobs_other_fin_cf_cl_acc,
b.num_clavobs_other_fin_other_cl_acc,
b.num_clavobs_gbn_cl_acc,
b.num_clavobs_gbn_pq_cl_acc,
b.num_clavobs_gbn_cs_cl_acc,
b.num_clavobs_gbn_lsg_cl_acc,
b.num_clavobs_gbn_r_cl_acc,
b.num_clavobs_gbn_cf_cl_acc,
b.num_clavobs_gbn_other_cl_acc,
b.num_clavobs_brg_cl_acc,
b.num_clavobs_brg_pq_cl_acc,
b.num_clavobs_brg_cs_cl_acc,
b.num_clavobs_brg_lsg_cl_acc,
b.num_clavobs_brg_r_cl_acc,
b.num_clavobs_brg_cf_cl_acc,
b.num_clavobs_brg_other_cl_acc,
b.num_clavobs_brg_lse_cl_acc,
b.num_clavobs_brg_lse_pq_cl_acc,
b.num_clavobs_brg_lse_cs_cl_acc,
b.num_clavobs_brg_lse_lsg_cl_acc,
b.num_clavobs_brg_lse_r_cl_acc,
b.num_clavobs_brg_lse_cf_cl_acc,
b.num_clavobs_brg_lse_other_cl_acc,
b.num_clavobs_cl_acc_03m,
b.num_clavobs_bk_cl_acc_03m,
b.num_clavobs_bk_pq_cl_acc_03m,
b.num_clavobs_bk_cs_cl_acc_03m,
b.num_clavobs_bk_lsg_cl_acc_03m,
b.num_clavobs_bk_r_cl_acc_03m,
b.num_clavobs_bk_cf_cl_acc_03m,
b.num_clavobs_bk_other_cl_acc_03m,
b.num_clavobs_lse_cl_acc_03m,
b.num_clavobs_lse_pq_cl_acc_03m,
b.num_clavobs_lse_cs_cl_acc_03m,
b.num_clavobs_lse_lsg_cl_acc_03m,
b.num_clavobs_lse_r_cl_acc_03m,
b.num_clavobs_lse_cf_cl_acc_03m,
b.num_clavobs_lse_other_cl_acc_03m,
b.num_clavobs_un_cre_cl_acc_03m,
b.num_clavobs_un_cre_pq_cl_acc_03m,
b.num_clavobs_un_cre_cs_cl_acc_03m,
b.num_clavobs_un_cre_lsg_cl_acc_03m,
b.num_clavobs_un_cre_r_cl_acc_03m,
b.num_clavobs_un_cre_cf_cl_acc_03m,
b.num_clavobs_un_cre_other_cl_acc_03m,
b.num_clavobs_other_fin_cl_acc_03m,
b.num_clavobs_other_fin_pq_cl_acc_03m,
b.num_clavobs_other_fin_cs_cl_acc_03m,
b.num_clavobs_other_fin_lsg_cl_acc_03m,
b.num_clavobs_other_fin_r_cl_acc_03m,
b.num_clavobs_other_fin_cf_cl_acc_03m,
b.num_clavobs_other_fin_other_cl_acc_03m,
b.num_clavobs_gbn_cl_acc_03m,
b.num_clavobs_gbn_pq_cl_acc_03m,
b.num_clavobs_gbn_cs_cl_acc_03m,
b.num_clavobs_gbn_lsg_cl_acc_03m,
b.num_clavobs_gbn_r_cl_acc_03m,
b.num_clavobs_gbn_cf_cl_acc_03m,
b.num_clavobs_gbn_other_cl_acc_03m,
b.num_clavobs_brg_cl_acc_03m,
b.num_clavobs_brg_pq_cl_acc_03m,
b.num_clavobs_brg_cs_cl_acc_03m,
b.num_clavobs_brg_lsg_cl_acc_03m,
b.num_clavobs_brg_r_cl_acc_03m,
b.num_clavobs_brg_cf_cl_acc_03m,
b.num_clavobs_brg_other_cl_acc_03m,
b.num_clavobs_brg_lse_cl_acc_03m,
b.num_clavobs_brg_lse_pq_cl_acc_03m,
b.num_clavobs_brg_lse_cs_cl_acc_03m,
b.num_clavobs_brg_lse_lsg_cl_acc_03m,
b.num_clavobs_brg_lse_r_cl_acc_03m,
b.num_clavobs_brg_lse_cf_cl_acc_03m,
b.num_clavobs_brg_lse_other_cl_acc_03m,
b.num_clavobs_cl_acc_06m,
b.num_clavobs_bk_cl_acc_06m,
b.num_clavobs_bk_pq_cl_acc_06m,
b.num_clavobs_bk_cs_cl_acc_06m,
b.num_clavobs_bk_lsg_cl_acc_06m,
b.num_clavobs_bk_r_cl_acc_06m,
b.num_clavobs_bk_cf_cl_acc_06m,
b.num_clavobs_bk_other_cl_acc_06m,
b.num_clavobs_lse_cl_acc_06m,
b.num_clavobs_lse_pq_cl_acc_06m,
b.num_clavobs_lse_cs_cl_acc_06m,
b.num_clavobs_lse_lsg_cl_acc_06m,
b.num_clavobs_lse_r_cl_acc_06m,
b.num_clavobs_lse_cf_cl_acc_06m,
b.num_clavobs_lse_other_cl_acc_06m,
b.num_clavobs_un_cre_cl_acc_06m,
b.num_clavobs_un_cre_pq_cl_acc_06m,
b.num_clavobs_un_cre_cs_cl_acc_06m,
b.num_clavobs_un_cre_lsg_cl_acc_06m,
b.num_clavobs_un_cre_r_cl_acc_06m,
b.num_clavobs_un_cre_cf_cl_acc_06m,
b.num_clavobs_un_cre_other_cl_acc_06m,
b.num_clavobs_other_fin_cl_acc_06m,
b.num_clavobs_other_fin_pq_cl_acc_06m,
b.num_clavobs_other_fin_cs_cl_acc_06m,
b.num_clavobs_other_fin_lsg_cl_acc_06m,
b.num_clavobs_other_fin_r_cl_acc_06m,
b.num_clavobs_other_fin_cf_cl_acc_06m,
b.num_clavobs_other_fin_other_cl_acc_06m,
b.num_clavobs_gbn_cl_acc_06m,
b.num_clavobs_gbn_pq_cl_acc_06m,
b.num_clavobs_gbn_cs_cl_acc_06m,
b.num_clavobs_gbn_lsg_cl_acc_06m,
b.num_clavobs_gbn_r_cl_acc_06m,
b.num_clavobs_gbn_cf_cl_acc_06m,
b.num_clavobs_gbn_other_cl_acc_06m,
b.num_clavobs_brg_cl_acc_06m,
b.num_clavobs_brg_pq_cl_acc_06m,
b.num_clavobs_brg_cs_cl_acc_06m,
b.num_clavobs_brg_lsg_cl_acc_06m,
b.num_clavobs_brg_r_cl_acc_06m,
b.num_clavobs_brg_cf_cl_acc_06m,
b.num_clavobs_brg_other_cl_acc_06m,
b.num_clavobs_brg_lse_cl_acc_06m,
b.num_clavobs_brg_lse_pq_cl_acc_06m,
b.num_clavobs_brg_lse_cs_cl_acc_06m,
b.num_clavobs_brg_lse_lsg_cl_acc_06m,
b.num_clavobs_brg_lse_r_cl_acc_06m,
b.num_clavobs_brg_lse_cf_cl_acc_06m,
b.num_clavobs_brg_lse_other_cl_acc_06m,
b.num_clavobs_cl_acc_12m,
b.num_clavobs_bk_cl_acc_12m,
b.num_clavobs_bk_pq_cl_acc_12m,
b.num_clavobs_bk_cs_cl_acc_12m,
b.num_clavobs_bk_lsg_cl_acc_12m,
b.num_clavobs_bk_r_cl_acc_12m,
b.num_clavobs_bk_cf_cl_acc_12m,
b.num_clavobs_bk_other_cl_acc_12m,
b.num_clavobs_lse_cl_acc_12m,
b.num_clavobs_lse_pq_cl_acc_12m,
b.num_clavobs_lse_cs_cl_acc_12m,
b.num_clavobs_lse_lsg_cl_acc_12m,
b.num_clavobs_lse_r_cl_acc_12m,
b.num_clavobs_lse_cf_cl_acc_12m,
b.num_clavobs_lse_other_cl_acc_12m,
b.num_clavobs_un_cre_cl_acc_12m,
b.num_clavobs_un_cre_pq_cl_acc_12m,
b.num_clavobs_un_cre_cs_cl_acc_12m,
b.num_clavobs_un_cre_lsg_cl_acc_12m,
b.num_clavobs_un_cre_r_cl_acc_12m,
b.num_clavobs_un_cre_cf_cl_acc_12m,
b.num_clavobs_un_cre_other_cl_acc_12m,
b.num_clavobs_other_fin_cl_acc_12m,
b.num_clavobs_other_fin_pq_cl_acc_12m,
b.num_clavobs_other_fin_cs_cl_acc_12m,
b.num_clavobs_other_fin_lsg_cl_acc_12m,
b.num_clavobs_other_fin_r_cl_acc_12m,
b.num_clavobs_other_fin_cf_cl_acc_12m,
b.num_clavobs_other_fin_other_cl_acc_12m,
b.num_clavobs_gbn_cl_acc_12m,
b.num_clavobs_gbn_pq_cl_acc_12m,
b.num_clavobs_gbn_cs_cl_acc_12m,
b.num_clavobs_gbn_lsg_cl_acc_12m,
b.num_clavobs_gbn_r_cl_acc_12m,
b.num_clavobs_gbn_cf_cl_acc_12m,
b.num_clavobs_gbn_other_cl_acc_12m,
b.num_clavobs_brg_cl_acc_12m,
b.num_clavobs_brg_pq_cl_acc_12m,
b.num_clavobs_brg_cs_cl_acc_12m,
b.num_clavobs_brg_lsg_cl_acc_12m,
b.num_clavobs_brg_r_cl_acc_12m,
b.num_clavobs_brg_cf_cl_acc_12m,
b.num_clavobs_brg_other_cl_acc_12m,
b.num_clavobs_brg_lse_cl_acc_12m,
b.num_clavobs_brg_lse_pq_cl_acc_12m,
b.num_clavobs_brg_lse_cs_cl_acc_12m,
b.num_clavobs_brg_lse_lsg_cl_acc_12m,
b.num_clavobs_brg_lse_r_cl_acc_12m,
b.num_clavobs_brg_lse_cf_cl_acc_12m,
b.num_clavobs_brg_lse_other_cl_acc_12m
FROM RSS_MCV_UNIVERSO_RFC_NEGOCIOS a
LEFT JOIN dbriskdatamart.MZM_MCV_VAR_CR_CL_ACC_2_201911 b
on a.FOLIO_RESPUESTA_BC = b.folio and a.rfc=b.rfc
where a.fecha ='201911';




