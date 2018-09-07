drop table if exists 
  cartera.tbl_vars_cred_lim_step1;

create table if not exists 
  cartera.tbl_vars_cred_lim_step1 as
select
  a.llave_universal_20, 
  a.rfc, 
  a.cliente, 
  a.linea, 
  a.fecha,
  a.mesesdc,
  max(b.monto_linea) as max_cred_lim_03m,
  min(b.monto_linea) as min_cred_lim_03m,  
  sum(b.monto_linea * (1 + (a.mesesdc - b.mesesdc))) / sum(1 + (a.mesesdc - b.mesesdc))  as avg_pnd_menos_cred_lim_03m,
  sum(b.monto_linea * (4 - (a.mesesdc - b.mesesdc))) / sum(4 - (a.mesesdc - b.mesesdc)) as avg_pnd_mas_cred_lim_03m,
  avg(b.monto_linea) as avg_cred_lim_03m
from 
  cartera.tbl_universo a
  left join cartera.tbl_cartera_crediticia_linea b
  on a.llave_universal_20 = b.llave_universal_20 and b.mesesdc >= a.mesesdc - 3 and b.mesesdc <= a.mesesdc
group by 1,2,3,4,5,6;

create index cartera__tbl_vars_cred_lim_step1_fecha_idx
on cartera.tbl_vars_cred_lim_step1 (fecha);

create index cartera__tbl_vars_cred_lim_step1_mesesdc_idx
on cartera.tbl_vars_cred_lim_step1 (mesesdc);

--------------------- Step 2 -----------------------

drop table if exists 
  cartera.tbl_vars_cred_lim_step2;

create table if not exists 
  cartera.tbl_vars_cred_lim_step2 as
select
  a.*,
  max(b.monto_linea) as max_cred_lim_06m,
  min(b.monto_linea) as min_cred_lim_06m,  
  sum(b.monto_linea * (1 + (a.mesesdc - b.mesesdc))) / sum(1 + (a.mesesdc - b.mesesdc))  as avg_pnd_menos_cred_lim_06m,
  sum(b.monto_linea * (7 - (a.mesesdc - b.mesesdc))) / sum(7 - (a.mesesdc - b.mesesdc)) as avg_pnd_mas_cred_lim_06m,
  avg(b.monto_linea) as avg_cred_lim_06m
from 
  cartera.tbl_vars_cred_lim_step1 a
  left join cartera.tbl_cartera_crediticia_linea b
  on a.llave_universal_20 = b.llave_universal_20 and b.mesesdc >= a.mesesdc - 6 and b.mesesdc <= a.mesesdc
group by 1,2,3,4,5,6,7,8,9,10,11;

create index cartera__tbl_vars_cred_lim_step2_fecha_idx
on cartera.tbl_vars_cred_lim_step2 (fecha);

create index cartera__tbl_vars_cred_lim_step2_mesesdc_idx
on cartera.tbl_vars_cred_lim_step2 (mesesdc);


------------------- Step 3 ----------------------

drop table if exists 
  cartera.tbl_vars_cred_lim;

create table if not exists 
  cartera.tbl_vars_cred_lim as
select
  a.*,
  max(b.monto_linea) as max_cred_lim_12m,
  min(b.monto_linea) as min_cred_lim_12m,  
  sum(b.monto_linea * (1 + (a.mesesdc - b.mesesdc))) / sum(1 + (a.mesesdc - b.mesesdc)) as avg_pnd_menos_cred_lim_12m,
  sum(b.monto_linea * (13 - (a.mesesdc - b.mesesdc))) / sum(13 - (a.mesesdc - b.mesesdc))  as avg_pnd_mas_cred_lim_12m,
  avg(b.monto_linea) as avg_cred_lim_12m
from 
  cartera.tbl_vars_cred_lim_step2 a
  left join cartera.tbl_cartera_crediticia_linea b
  on a.llave_universal_20 = b.llave_universal_20 and b.mesesdc >= a.mesesdc - 12 and b.mesesdc <= a.mesesdc
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16;

create index cartera__tbl_vars_cred_lim_llave_uni_20_idx
on cartera.tbl_vars_cred_lim (llave_universal_20);

create index cartera__tbl_vars_cred_lim_rfc_idx
on cartera.tbl_vars_cred_lim (rfc);

create index cartera__tbl_vars_cred_lim_fecha_idx
on cartera.tbl_vars_cred_lim (fecha);

create index cartera__tbl_vars_cred_lim_mesesdc_idx
on cartera.tbl_vars_cred_lim (mesesdc);

-------- Clean --------

drop table if exists 
  cartera.tbl_vars_cred_lim_step1;

drop table if exists 
  cartera.tbl_vars_cred_lim_step2;