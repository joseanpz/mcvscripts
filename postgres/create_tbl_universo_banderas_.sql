drop table if exists cartera.tbl_universo_banderas_;
select 
  llave_universal_20,
  rfc,
  fecha,
  cci_flag,
  reestructuras_flag,
  sobregiro_flag,
  intercompania_flag,
  cartera_adquirida_flag,
  case
    when tipo_de_credito in (select tipo_de_credito from cartera.tipo_credito_revolvente) then 1
    when tipo_de_credito in (select tipo_de_credito from cartera.tipo_credito_no_revolvente) then 0
    else -1
  end as revolvente_flag
  into cartera.tbl_universo_banderas_
from cartera.tbl_universo_banderas;

create index cartera__tbl_universo_banderas__fecha_idx
on cartera.tbl_universo (fecha);

create index cartera__tbl_universo_banderas__llave_universal_20_idx
on cartera.tbl_universo (llave_universal_20);

create unique index cartera__tbl_universo_banderas__llave_universal_20_fecha_idx
on cartera.tbl_universo (llave_universal_20, fecha);

create index cartera__tbl_universo_banderas__rfc_idx
on cartera.tbl_universo (rfc);