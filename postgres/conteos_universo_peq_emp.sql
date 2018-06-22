select 
a.*,
b.no_flag_count
--a.ccis + a.reestructuras + a.sobregiros + a.intercompanias 
--+ a.carteras_vencidas + a.carteras_adquiridas + b.no_flag_count as total 
from (
select 
    fecha,
    count(distinct rfc) as rfcs,
    count(distinct cliente) as clientes,
    count(*) as lineas,
    sum(saldo) as saldo_total,
    sum(cartera_vencida) as cartera_vencida_total,
    sum(cci_flag) as ccis,
    sum(reestructuras_flag) as reestructuras,
    sum(sobregiro_flag) as sobregiros,
    sum(intercompania_flag) as intercompanias,
    sum(cartera_vencida_flag) as carteras_vencidas,
    sum(cartera_adquirida_flag) as carteras_adquiridas
from cartera.tbl_universo_banderas
group by fecha
order by fecha
) a
join (
select
fecha,
count(*) as no_flag_count
from cartera.tbl_universo_banderas
where cci_flag + reestructuras_flag + sobregiro_flag + intercompania_flag + cartera_vencida_flag + cartera_adquirida_flag = 0
group by fecha
) b
on a.fecha = b.fecha
