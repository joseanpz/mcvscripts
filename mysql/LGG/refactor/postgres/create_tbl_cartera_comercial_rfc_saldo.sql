
drop table if exists 
  cartera.tbl_cartera_comercial_rfc_saldo;

create table if not exists 
  cartera.tbl_cartera_comercial_rfc_saldo as
select 
  RFC, 
  FECHA, 
  MESESDC, 
  SUM(SALDO) AS SALDO 
from cartera.tbl_cartera_crediticia_linea 
group by 1,2,3;


create index cartera__tbl_cartera_comercial_rfc_saldo_rfc_idx
on cartera.tbl_cartera_comercial_rfc_saldo (rfc);

create index cartera__tbl_cartera_comercial_rfc_saldo_fecha_idx
on cartera.tbl_cartera_comercial_rfc_saldo (fecha);

create index cartera__tbl_cartera_comercial_rfc_saldo_mesesdc_idx
on cartera.tbl_cartera_comercial_rfc_saldo (mesesdc);

create unique index cartera__tbl_cartera_comer_rfc_saldo_rfc_fecha_idx
on cartera.tbl_cartera_comercial_rfc_saldo (rfc, fecha);