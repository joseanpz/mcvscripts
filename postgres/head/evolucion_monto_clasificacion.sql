select llave_universal, array_agg(distinct monto_clasificacion)
from cartera.tbl_cosechas
where llave_universal not in (
select distinct llave_universal
from cartera.tbl_cosechas
where monto_clasificacion = 3
)
group by llave_universal
having count(distinct monto_clasificacion) > 1