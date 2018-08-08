select count(distinct llave_universal)
from cartera.tbl_cosechas
union all
select count(distinct llave_universal)
from cartera.tbl_cosechas
where monto_clasificacion = 0
union all
select count(distinct llave_universal)
from cartera.tbl_cosechas
where monto_clasificacion = 1
union all
select count(distinct llave_universal)
from cartera.tbl_cosechas
where monto_clasificacion = 2
union all
select count(distinct llave_universal)
from cartera.tbl_cosechas
where monto_clasificacion = 3
--limit 100;