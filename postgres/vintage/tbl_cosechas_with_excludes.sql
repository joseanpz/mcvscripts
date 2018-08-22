drop table if exists cartera.tbl_cosechas_with_excludes;

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
into cartera.tbl_cosechas_with_excludes 
from cartera.buckets_with_excludes a
inner join cartera.ventanas_cartera_vencida b
on a.llave_universal_20 = b.llave_universal and a.fecha = b.fecha_ancla;

create index cartera__tbl_cosechas_with_excludes_llave_universal_idx
on cartera.tbl_cosechas_with_excludes (llave_universal);

create index cartera__tbl_cosechas_with_excludes_fecha_ancla_idx
on cartera.tbl_cosechas_with_excludes (fecha_ancla);

create index cartera__tbl_cosechas_with_excludes_rfc_idx
on cartera.tbl_cosechas_with_excludes (rfc);

create unique index cartera__tbl_cosechas_with_excludes_llave_universal_fecha_idx
on cartera.tbl_cosechas_with_excludes (llave_universal, fecha_ancla);
