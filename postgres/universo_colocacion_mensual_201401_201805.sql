select count(*), min(fecha), max(fecha) 
from colocacion.tbl_colocacion_mensual_uen_peq_med
where uen in ('05 PEQUEÑA EMPRESA NL', '09 PEQUEÑA EMPRESA TERRITORIAL') 
and perfil_negocio_actual not in ('CORPORATIVO', 'DIRECCION', 'DUMMY', 'GOBIERNO')
and producto not in ('3I ACS AUTOPRESTO', '3N ACS AUTOPRESTO', 'Z1 SEGURO ACS AUTOPRESTO')
and subsegmento_producto <> 'AB - VARIOS'
