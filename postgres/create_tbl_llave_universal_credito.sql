drop table if exists cartera.tbl_llave_universal_credito;

select a.llave_universal, a.fecha, a.credito_original
into cartera.tbl_llave_universal_credito
from colocacion.tbl_colocacion_mensual_uen_peq_med_credito a
inner join (
select llave_universal_20, fecha from cartera.tbl_universo_banderas
where cci_flag + reestructuras_flag + sobregiro_flag 
    + intercompania_flag + cartera_adquirida_flag = 0
    -- and fecha = 201401
) b
on a.llave_universal = b.llave_universal_20 and a.fecha = b.fecha;
--where a.fecha = 201401
--group by a.llave_universal

create index cartera__tbl_llave_universal_credito_fecha_idx
on cartera.tbl_llave_universal_credito (fecha);
