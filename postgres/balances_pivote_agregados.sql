create view balances.bal5_met1_pivote_agregados as
select 
*,
coalesce(ac_2, 0) + coalesce(ac_3, 0) + coalesce(ac_4, 0) + 
coalesce(ac_5, 0) + coalesce(ac_6, 0) + coalesce(ac_7, 0) + 
coalesce(ac_8, 0) + coalesce(ac_9, 0) as ac_total,
coalesce(af_2, 0) + coalesce(af_3, 0) + coalesce(af_4, 0) + 
coalesce(af_5, 0) + coalesce(af_6, 0) + coalesce(af_7, 0) + 
coalesce(af_8, 0) as af_total,
coalesce(ad_2, 0) + coalesce(ad_3, 0) + coalesce(ad_4, 0) + 
coalesce(ad_5, 0)  as ad_total,
coalesce(pc_2, 0) + coalesce(pc_3, 0) + coalesce(pc_4, 0) + 
coalesce(pc_5, 0) + coalesce(pc_6, 0) + coalesce(pc_7, 0) + 
coalesce(pc_8, 0) + coalesce(pc_9, 0) + coalesce(pc_10, 0) as pc_total,
coalesce(af_2, 0) + coalesce(af_3, 0) + coalesce(af_4, 0)  as alp_total,
coalesce(pd_2, 0) + coalesce(pd_3, 0) as pd_total,
coalesce(cc_2, 0) + coalesce(cc_3, 0) + coalesce(cc_4, 0) + 
coalesce(cc_5, 0) + coalesce(cc_6, 0) + coalesce(cc_7, 0) + 
coalesce(cc_8, 0) + coalesce(cc_9, 0) + coalesce(cc_10, 0) as cc_total,
coalesce(pc_3, 0) + coalesce(pc_4, 0) + coalesce(alp_2, 0) + coalesce(alp_3, 0) as financial_liability 
from balances.bal5_met1_pivote
