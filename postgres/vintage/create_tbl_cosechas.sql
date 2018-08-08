drop table if exists cartera.tbl_cosechas;

select
    b.*,
    a.monto_linea,
    case 
        when a.monto_linea <= 8000000 then 0
        when a.monto_linea > 8000000 and a.monto_linea <= 15000000 then 1
        when a.monto_linea > 15000000 then 2
        else 3
    end as monto_clasificacion,
    a.bkt
into cartera.tbl_cosechas 
from cartera.buckets a
inner join cartera.ventanas_cartera_vencida b
on a.llave_universal_20 = b.llave_universal and a.fecha = b.fecha_ancla;

create index cartera__tbl_cosechas_llave_universal_idx
on cartera.tbl_cosechas (llave_universal);

create index cartera__tbl_cosechas_fecha_ancla_idx
on cartera.tbl_cosechas (fecha_ancla);

create index cartera__tbl_cosechas_rfc_idx
on cartera.tbl_cosechas (rfc);

create unique index cartera__tbl_cosechas_llave_universal_fecha_idx
on cartera.tbl_cosechas (llave_universal, fecha_ancla);
