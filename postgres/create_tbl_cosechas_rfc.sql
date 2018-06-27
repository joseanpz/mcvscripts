drop table if exists cartera.tbl_cosechas_rfc;
select
    b.llave_universal,
    a.*
    into cartera.tbl_cosechas_rfc
from cartera.cosechas_by_rfc a
inner join cartera.tbl_cosechas b
on a.rfc = b.rfc and a.fecha_ancla = b.fecha_ancla;

create index cartera__tbl_cosechas_rfc_llave_universal_idx
on cartera.tbl_cosechas_rfc (llave_universal);

create index cartera__tbl_cosechas_rfc_fecha_ancla_idx
on cartera.tbl_cosechas_rfc (fecha_ancla);

create index cartera__tbl_cosechas_rfc_rfc_idx
on cartera.tbl_cosechas_rfc (rfc);

create unique index cartera__tbl_cosechas_rfc_llave_universal_fecha_idx
on cartera.tbl_cosechas_rfc (llave_universal, fecha_ancla);