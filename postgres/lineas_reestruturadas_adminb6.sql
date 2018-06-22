create view movimiento_lineas.lineas_reestructuradas as
select 
distinct
case moneda
    when 'DOLARE' then lpad(concat(lineaoriginal, '02'), 14, '0')::varchar(14)
    when 'DOLAR' then lpad(concat(lineaoriginal, '02'), 14, '0')::varchar(14)
    else lpad(concat(lineaoriginal, '01'), 14, '0')::varchar(14)
end as llave_universal,
case moneda
    when 'DOLARE' then '02'::varchar(2)
    when 'DOLAR' then '02'::varchar(2)
    else '01'
end as moneda,
lineaoriginal::varchar(12)
from movimiento_lineas.tbl_movimiento_lineas
where adminb6 = 'Reestructura'
--limit 100; 