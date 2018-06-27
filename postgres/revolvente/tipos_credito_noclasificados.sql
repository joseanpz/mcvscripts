select distinct tipo_de_credito as tipo 
from cartera.tbl_universo
except
select distinct abreviacion as tipo 
from public.catalogo_lineas
except
select distinct descripcion_tipo_credito as tipo
from public.catalogo_lineas
