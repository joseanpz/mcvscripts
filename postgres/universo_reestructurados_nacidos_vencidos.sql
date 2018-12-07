create or replace view cartera.reestructuras_nacidos_vencidos as
select a.*
from cartera.tbl_universo_cartera_crediticia_historia a
join 
(
	select 
	  llave_universal, 
	  min(fecha) as min_fecha, 
	  min(mesesdc) as min_mesesdc 
    from cartera.tbl_universo_cartera_crediticia_historia
    where llave_universal in (
    	select distinct 
    	  llave_universal 
    	from cartera.tbl_universo_cartera_crediticia_pequena_empresa
        where coalesce(cartera_vencida, 0) > 0
    )
    group by llave_universal
) b
on a.llave_universal = b.llave_universal
where a.fecha = b.min_fecha and coalesce(a.cartera_vencida, 0) > 0 and b.min_fecha > 201201


