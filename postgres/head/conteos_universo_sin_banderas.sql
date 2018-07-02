select 
fecha,
count(*)
from cartera.tbl_universo_banderas
where cci_flag + reestructuras_flag + sobregiro_flag + 
intercompania_flag + cartera_adquirida_flag = 0
group by fecha
order by fecha
