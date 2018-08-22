CREATE OR REPLACE VIEW cartera.tipo_credito_no_revolvente AS
select distinct tipo_de_credito
from cartera.tbl_universo_banderas a
where tipo_de_credito in (
  select distinct 
    descripcion_tipo_credito
  from catalogo_lineas
  where es_revolvente = 'No'
)
union 
select distinct tipo_de_credito
from cartera.tbl_universo_banderas a
where tipo_de_credito in (
  select distinct 
    abreviacion
  from catalogo_lineas
  where es_revolvente = 'No'
)
union 
select 
  'Simple' as tipo_de_credito
union 
select 
  'Arrendamiento Puro' as tipo_de_credito
union 
select 
  'A. PURO' as tipo_de_credito
union 
select 
  'A. FIN' as tipo_de_credito
union 
select 
  'Credito' as tipo_de_credito
union 
select 
  'ACSSGR PE NAFIN' as tipo_de_credito
union 
select 
  '3K' as tipo_de_credito

