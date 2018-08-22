drop table if exists cartera.tbl_universo;

select a.*
into
cartera.tbl_universo
from cartera.tbl_cartera_crediticia_linea a
inner join (
select distinct llave_universal, fecha
from colocacion.tbl_colocacion_mensual_uen_peq_med
where uen in ('05 PEQUEÑA EMPRESA NL', '09 PEQUEÑA EMPRESA TERRITORIAL') 
    and perfil_negocio_actual not in ('CORPORATIVO', 'DIRECCION', 'DUMMY', 'GOBIERNO')
    and producto not in ('3I ACS AUTOPRESTO', '3N ACS AUTOPRESTO', 'Z1 SEGURO ACS AUTOPRESTO')
    and subsegmento_producto <> 'AB - VARIOS'
) b
on a.llave_universal_20 = b.llave_universal and a.fecha = b.fecha;

create index cartera__tbl_universo_fecha_idx
on cartera.tbl_universo (fecha);

create index cartera__tbl_universo_llave_universal_20_idx
on cartera.tbl_universo (llave_universal_20);

create unique index cartera__tbl_universo_llave_universal_20_fecha_idx
on cartera.tbl_universo (llave_universal_20, fecha);

create index cartera__tbl_universo_rfc_idx
on cartera.tbl_universo (rfc);

create index cartera__tbl_universo_cliente_idx
on cartera.tbl_universo (cliente);
