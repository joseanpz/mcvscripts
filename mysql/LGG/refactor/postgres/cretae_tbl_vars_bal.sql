drop table if exists 
  cartera.tbl_vars_bal_step1;

create table if not exists 
  cartera.tbl_vars_bal_step1 as
select
  a.llave_universal_20, 
  a.rfc, 
  a.cliente, 
  a.linea, 
  a.fecha,
  a.mesesdc,
  b.saldo,
  max(c.saldo) as max_bal_03m,
  min(c.saldo) as min_bal_03m,
  avg(c.saldo) as avg_bal_03m,
  sum(c.saldo * (1 + (a.mesesdc - c.mesesdc)) / 10) as avg_pnd_menos_bal_03m,
  sum(c.saldo * (4 - (a.mesesdc - c.mesesdc)) / 10) as avg_pnd_mas_bal_03m
from 
  cartera.tbl_universo a
  left join cartera.tbl_cartera_comercial_rfc_saldo b
  on a.fecha = b.fecha and a.rfc = b.rfc 
  left join cartera.tbl_cartera_comercial_rfc_saldo c
  on a.rfc = c.rfc and c.mesesdc >= a.mesesdc - 3 and c.mesesdc <= a.mesesdc
group by 1,2,3,4,5,6,7;

create index cartera__tbl_vars_bal_step1_fecha_idx
on cartera.tbl_vars_bal_step1 (fecha);

create index cartera__tbl_vars_bal_step1_mesesdc_idx
on cartera.tbl_vars_bal_step1 (mesesdc);

--------------------- Step 2 -----------------------

drop table if exists 
  cartera.tbl_vars_bal_step2;

create table if not exists 
  cartera.tbl_vars_bal_step2 as
select
  a.*,
  max(b.saldo) as max_bal_06m,
  min(b.saldo) as min_bal_06m,
  avg(b.saldo) as avg_bal_06m,
  sum(b.saldo * (1 + (a.mesesdc - b.mesesdc)) / 28) as avg_pnd_menos_bal_06m,
  sum(b.saldo * (7 - (a.mesesdc - b.mesesdc)) / 28) as avg_pnd_mas_bal_06m
from 
  cartera.tbl_vars_bal_step1 a
  left join cartera.tbl_cartera_comercial_rfc_saldo b
  on a.rfc = b.rfc and b.mesesdc >= a.mesesdc - 6 and b.mesesdc <= a.mesesdc
group by 1,2,3,4,5,6,7,8,9,10,11,12;

create index cartera__tbl_vars_bal_step2_fecha_idx
on cartera.tbl_vars_bal_step2 (fecha);

create index cartera__tbl_vars_bal_step2_mesesdc_idx
on cartera.tbl_vars_bal_step2 (mesesdc);


------------------- Step 3 ----------------------

drop table if exists 
  cartera.tbl_vars_bal;

create table if not exists 
  cartera.tbl_vars_bal as
select
  a.*,
  max(b.saldo) as max_bal_12m,
  min(b.saldo) as min_bal_12m,
  avg(b.saldo) as avg_bal_12m,
  sum(b.saldo * (1 + (a.mesesdc - b.mesesdc)) / 91) as avg_pnd_menos_bal_12m,
  sum(b.saldo * (13 - (a.mesesdc - b.mesesdc)) / 91) as avg_pnd_mas_bal_12m
from 
  cartera.tbl_vars_bal_step2 a
  left join cartera.tbl_cartera_comercial_rfc_saldo b
  on a.rfc = b.rfc and b.mesesdc >= a.mesesdc - 6 and b.mesesdc <= a.mesesdc
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17;

create index cartera__tbl_vars_bal_llave_uni_20_idx
on cartera.tbl_vars_bal (llave_universal_20);

create index cartera__tbl_vars_bal_rfc_idx
on cartera.tbl_vars_bal (rfc);

create index cartera__tbl_vars_bal_fecha_idx
on cartera.tbl_vars_bal (fecha);

create index cartera__tbl_vars_bal_mesesdc_idx
on cartera.tbl_vars_bal (mesesdc);

-------- Clean --------

drop table if exists 
  cartera.tbl_vars_bal_step1;

drop table if exists 
  cartera.tbl_vars_bal_step2;