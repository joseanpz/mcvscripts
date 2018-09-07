--------------------- Step 0 --------------------

drop table if exists 
  cartera.tbl_vars_r_bal_by_cred_lim_step0;

create table if not exists 
  cartera.tbl_vars_r_bal_by_cred_lim_step0 as
select
  a.llave_universal_20, 
  a.rfc, 
  a.cliente, 
  a.linea, 
  a.fecha,
  a.mesesdc,
  max(b.saldo / b.monto_linea) as r_bal_by_cred_lim
from 
  cartera.tbl_universo a
  left join cartera.tbl_cartera_comercial_rfc_saldo b
  on a.fecha = b.fecha and a.rfc = b.rfc 
group by 1,2,3,4,5,6;

create index cartera__tbl_vars_r_bal_by_cred_lim_step0_fecha_idx
on cartera.tbl_vars_r_bal_by_cred_lim_step0 (fecha);

create index cartera__tbl_vars_r_bal_by_cred_lim_step0_mesesdc_idx
on cartera.tbl_vars_r_bal_by_cred_lim_step0 (mesesdc);

--------------------- Step 1 ----------------------------

drop table if exists 
  cartera.tbl_vars_r_bal_by_cred_lim_step1;

create table if not exists 
  cartera.tbl_vars_r_bal_by_cred_lim_step1 as
select
  a.*,
  max(b.saldo / b.monto_linea) as max_r_bal_by_cred_lim_03m,
  min(b.saldo / b.monto_linea) as min_r_bal_by_cred_lim_03m,  
  sum((b.saldo / b.monto_linea) * (1 + (a.mesesdc - b.mesesdc))) / sum(1 + (a.mesesdc - b.mesesdc))  as avg_pnd_menos_r_bal_by_cred_lim_03m,
  sum((b.saldo / b.monto_linea) * (4 - (a.mesesdc - b.mesesdc))) / sum(4 - (a.mesesdc - b.mesesdc)) as avg_pnd_mas_r_bal_by_cred_lim_03m,
  avg(b.saldo / b.monto_linea) as avg_r_r_bal_by_cred_lim_by_cred_lim_03m
from 
  cartera.tbl_vars_r_bal_by_cred_lim_step0 a
  left join cartera.tbl_cartera_comercial_rfc_saldo b
  on a.rfc = b.rfc and b.mesesdc >= a.mesesdc - 3 and b.mesesdc <= a.mesesdc
group by 1,2,3,4,5,6,7;

create index cartera__tbl_vars_r_bal_by_cred_lim_step1_fecha_idx
on cartera.tbl_vars_r_bal_by_cred_lim_step1 (fecha);

create index cartera__tbl_vars_r_bal_by_cred_lim_step1_mesesdc_idx
on cartera.tbl_vars_r_bal_by_cred_lim_step1 (mesesdc);

--------------------- Step 2 -----------------------

drop table if exists 
  cartera.tbl_vars_r_bal_by_cred_lim_step2;

create table if not exists 
  cartera.tbl_vars_r_bal_by_cred_lim_step2 as
select
  a.*,
  max(b.saldo / b.monto_linea) as max_r_bal_by_cred_lim_06m,
  min(b.saldo / b.monto_linea) as min_r_bal_by_cred_lim_06m,  
  sum((b.saldo / b.monto_linea) * (1 + (a.mesesdc - b.mesesdc))) / sum(1 + (a.mesesdc - b.mesesdc))  as avg_pnd_menos_r_bal_by_cred_lim_06m,
  sum((b.saldo / b.monto_linea) * (7 - (a.mesesdc - b.mesesdc))) / sum(7 - (a.mesesdc - b.mesesdc)) as avg_pnd_mas_r_bal_by_cred_lim_06m,
  avg(b.saldo / b.monto_linea) as avg_r_bal_by_cred_lim_06m
from 
  cartera.tbl_vars_r_bal_by_cred_lim_step1 a
  left join cartera.tbl_cartera_comercial_rfc_saldo b
  on a.rfc = b.rfc and b.mesesdc >= a.mesesdc - 6 and b.mesesdc <= a.mesesdc
group by 1,2,3,4,5,6,7,8,9,10,11,12;

create index cartera__tbl_vars_r_bal_by_cred_lim_step2_fecha_idx
on cartera.tbl_vars_r_bal_by_cred_lim_step2 (fecha);

create index cartera__tbl_vars_r_bal_by_cred_lim_step2_mesesdc_idx
on cartera.tbl_vars_r_bal_by_cred_lim_step2 (mesesdc);


------------------- Step 3 ----------------------

drop table if exists 
  cartera.tbl_vars_r_bal_by_cred_lim;

create table if not exists 
  cartera.tbl_vars_r_bal_by_cred_lim as
select
  a.*,
  max(b.saldo / b.monto_linea) as max_r_bal_by_cred_lim_12m,
  min(b.saldo / b.monto_linea) as min_r_bal_by_cred_lim_12m,  
  sum((b.saldo / b.monto_linea) * (1 + (a.mesesdc - b.mesesdc))) / sum(1 + (a.mesesdc - b.mesesdc)) as avg_pnd_menos_r_bal_by_cred_lim_12m,
  sum((b.saldo / b.monto_linea) * (13 - (a.mesesdc - b.mesesdc))) / sum(13 - (a.mesesdc - b.mesesdc))  as avg_pnd_mas_r_bal_by_cred_lim_12m,
  avg(b.saldo / b.monto_linea) as avg_r_bal_by_cred_lim_12m
from 
  cartera.tbl_vars_r_bal_by_cred_lim_step2 a
  left join cartera.tbl_cartera_comercial_rfc_saldo b
  on a.rfc = b.rfc and b.mesesdc >= a.mesesdc - 12 and b.mesesdc <= a.mesesdc
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17;

create index cartera__tbl_vars_r_bal_by_cred_lim_llave_uni_20_idx
on cartera.tbl_vars_r_bal_by_cred_lim (llave_universal_20);

create index cartera__tbl_vars_r_bal_by_cred_lim_rfc_idx
on cartera.tbl_vars_r_bal_by_cred_lim (rfc);

create index cartera__tbl_vars_r_bal_by_cred_lim_fecha_idx
on cartera.tbl_vars_r_bal_by_cred_lim (fecha);

create index cartera__tbl_vars_r_bal_by_cred_lim_mesesdc_idx
on cartera.tbl_vars_r_bal_by_cred_lim (mesesdc);

-------- Clean --------

drop table if exists 
  cartera.tbl_vars_r_bal_by_cred_lim_step0;

drop table if exists 
  cartera.tbl_vars_r_bal_by_cred_lim_step1;

drop table if exists 
  cartera.tbl_vars_r_bal_by_cred_lim_step2;