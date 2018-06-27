select llave_universal, cliente, rfc, linea, moneda
from cartera.tbl_universo
where tipo_de_credito in (
    select distinct descripcion_tipo_credito
    from public.catalogo_lineas
    where es_revolvente = 'Si')
or tipo_de_credito in (
    select distinct abreviacion
    from public.catalogo_lineas
    where es_revolvente = 'Si')
and fecha = 201401
order by random()
limit 10;