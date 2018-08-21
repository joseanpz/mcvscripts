drop table if exists cartera.tbl_universo_label;

select 
 a.llave_universal as llave_universal_20,
 a.rfc, 
 a.fecha_ancla,
 7 - (b.sdovdo_max_m0 + b.sdovdo_max_m1 + 
 b.sdovdo_max_m2 + b.sdovdo_max_m3 + 
 b.sdovdo_max_m4 + b.sdovdo_max_m5 + b.sdovdo_max_m6) as label
 into cartera.tbl_universo_label 
from cartera.tbl_cosechas a
left join cartera.tbl_cosechas_rfc b
on a.rfc = b.rfc and a.fecha_ancla = b.fecha_ancla;

create index cartera__tbl_universo_label_llave_universal_20
on cartera.tbl_universo_label (llave_universal_20);

create index cartera__tbl_universo_label_fecha_ancla
on cartera.tbl_universo_label (fecha_ancla);

create index cartera__tbl_universo_label_rfc
on cartera.tbl_universo_label (rfc);