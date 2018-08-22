drop table if exists cartera.tbl_universo_banderas_labels;
select 
  a.*,
  b.label
  into cartera.tbl_universo_banderas_labels
from cartera.tbl_universo_banderas_ a
left join cartera.tbl_universo_labels b
on a.llave_universal_20 = b.llave_universal_20 and a.fecha = b.fecha_ancla;

create index cartera__tbl_universo_banderas_labels_fecha_idx
on cartera.tbl_universo_banderas_labels (fecha);

create index cartera__tbl_universo_banderas_labels_llave_universal_20_idx
on cartera.tbl_universo_banderas_labels (llave_universal_20);

create unique index cartera__tbl_universo_banderas_labels_llave_universal_20_fecha_idx
on cartera.tbl_universo_banderas_labels (llave_universal_20, fecha);

create index cartera__tbl_universo_banderas_labels_rfc_idx
on cartera.tbl_universo_banderas_labels (rfc);  