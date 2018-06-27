drop table if exists cartera.tbl_cartera_crediticia_linea;

select 
lpad(concat(linea, moneda), 20, '0'::char(1))::char(20) as llave_universal_20,
* 
into cartera.tbl_cartera_crediticia_linea
from cartera.tbl_cartera_crediticia
where linea is not null and linea <> '';

create index cartera__tbl_colocacion_mens_uen_peq_med_fecha_idx
on cartera.tbl_cartera_crediticia_linea (fecha);

create index cartera__tbl_colocacion_mens_uen_peq_med_llave_universal_20_idx
on cartera.tbl_cartera_crediticia_linea (llave_universal_20);

create index cartera__tbl_colocacion_mens_uen_peq_med_cliente_idx
on cartera.tbl_cartera_crediticia_linea (cliente);

create index cartera__tbl_colocacion_mens_uen_peq_med_rfc_idx
on cartera.tbl_cartera_crediticia_linea (rfc);

create index cartera__tbl_colocacion_mens_uen_peq_med_mesesdc_idx
on cartera.tbl_cartera_crediticia_linea (mesesdc);