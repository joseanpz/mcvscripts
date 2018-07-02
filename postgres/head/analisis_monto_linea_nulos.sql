select 
    *,
    array_length(montos_linea, 1) as length
from (
select 
    llave_universal_20, 
    array_agg(distinct monto_linea) as montos_linea, 
    array_agg(distinct monto_original) as montos_originales    
from cartera.tbl_universo
where llave_universal_20 in (
    select distinct llave_universal
    from cartera.tbl_cosechas
    where monto_clasificacion = 3
)
-- and (monto_linea >= 8000000 or monto_original >= 8000000)
group by llave_universal_20
) a
order by length