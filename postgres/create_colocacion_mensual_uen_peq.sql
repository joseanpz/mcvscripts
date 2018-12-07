drop table if exists colocacion.colocacion_mensual_uen_peq;
select
case
    when "Moneda" in ('DOLARE', 'DOLAR') then 
      lpad(concat("Linea Original", '02'::char(2)), 14, '0'::char(1))::char(14)
    else 
      lpad(concat("Linea Original", '01'::char(2)), 14, '0'::char(1))::char(14)
end as llave_universal,
"Actividad Economica" as actividad_economica,
"Compania" as compania,
concat(extract(year from "Fecha")::varchar(4), 
       lpad(extract(month from "Fecha")::varchar(2), 2, '0')
)::integer as fecha,
"Fecha Castigo Credito" as fecha_castigo_credito,
"Ingreso Mensual" as ingreso_mensual,
"Linea Original" as linea_original,
case 
    when "Moneda" in ('DOLARE', 'DOLAR') then 
      '02'::char(2)
    else 
      '01'::char(2)
end  as moneda,
"PerfilNegocioActual" as perfil_negocio_actual,
"Producto" as producto,
"Sub Segmento Producto" as subsegmento_producto,
"UEN" as uen
into
colocacion.colocacion_mensual_uen_peq
from colocacion."COLOCACION_MENSUAL_UEN_PEQ"