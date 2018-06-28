create or replace view cartera.buckets as
select
    *,
    case
        when coalesce(dias_atraso, 0) = 0 then 0
        when dias_atraso between 1 and 29 then 1
        when dias_atraso between 30 and 59 then 2
        when dias_atraso between 60 and 89 then 3
        when dias_atraso >= 89 then 4
        else 5
    end as bkt 
from cartera.tbl_universo_banderas
-- Se caculan buckets sin cosiderar cartas de credito, reestructuras, creditos de sobregiro o intercompanias
where  cci_flag + reestructuras_flag 
    + sobregiro_flag + intercompania_flag + cartera_adquirida_flag  = 0