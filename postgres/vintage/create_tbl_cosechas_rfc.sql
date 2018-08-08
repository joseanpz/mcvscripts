drop table if exists cartera.tbl_cosechas_rfc;
select
    rfc,
    fecha_ancla,
    max(sdovdo_m0) as sdovdo_max_m0,
    max(sdovdo_m1) as sdovdo_max_m1,
    max(sdovdo_m2) as sdovdo_max_m2,
    max(sdovdo_m3) as sdovdo_max_m3,
    max(sdovdo_m4) as sdovdo_max_m4,
    max(sdovdo_m5) as sdovdo_max_m5,
    max(sdovdo_m6) as sdovdo_max_m6,
    max(bkt) as bkt_max,
    max(monto_clasificacion) as monto_max_clasificacion,
    max(monto_linea) as monto_max_rfc,
    min(monto_linea) as monto_min_rfc,
    array_agg(llave_universal) as llaves_universales,
    array_agg(monto_linea) as montos_linea,
    array_agg(monto_clasificacion) as monto_clasificaciones    
    into cartera.tbl_cosechas_rfc
from cartera.tbl_cosechas
group by fecha_ancla, rfc;

create index cartera__tbl_cosechas_rfc_fecha_ancla_idx
on cartera.tbl_cosechas_rfc (fecha_ancla);

create index cartera__tbl_cosechas_rfc_rfc_idx
on cartera.tbl_cosechas_rfc (rfc);

create unique index cartera__tbl_cosechas_rfc_rfc_fecha_idx
on cartera.tbl_cosechas_rfc (rfc, fecha_ancla);

