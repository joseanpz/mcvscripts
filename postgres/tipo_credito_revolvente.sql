CREATE OR REPLACE VIEW cartera.tipo_credito_revolvente AS
select distinct tipo_de_credito
from cartera.tbl_universo_banderas a
where tipo_de_credito in (
  select distinct 
    descripcion_tipo_credito
  from catalogo_lineas
  where es_revolvente = 'Si'
)
union 
select distinct tipo_de_credito
from cartera.tbl_universo_banderas a
where tipo_de_credito in (
  select distinct 
    abreviacion
  from catalogo_lineas
  where es_revolvente = 'Si'
)
except
select 
  'AV C/GAD C/A' as tipo_de_credito
union 
select 
  'DEUDOR FACTOR PLAN DISTRIBUIDOR' as tipo_de_credito
union 
select 
  'DFPD' as tipo_de_credito
union 
select 
  'FFCR.' as tipo_de_credito
union 
select 
  'CR ANTICIPO' as tipo_de_credito
union 
select 
  'FFPCEOP' as tipo_de_credito
union 
select 
  '3F' as tipo_de_credito
union 
select 
  'CR PUENTE' as tipo_de_credito
