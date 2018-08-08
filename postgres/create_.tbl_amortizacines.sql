drop table if exists amortizaciones.tbl_amortizaciones;
select 
  "Amortizacion"::integer as amortizacion,
  "Credito"::varchar(20) as credito,
  "FechaCorte"::date as fecha_corte,
  "FechaLiquidacion"::date fecha_liquidacion,
  "FechaPago"::date as fecha_pago,
  "FechaPAgoCliente"::date as fecha_pago_cliente,
  "FechaVencimiento"::date as fecha_vencimiento,
  "Modulo"::char(2) as modulo,
  "Status"::varchar(20) as estatus,
  "AmortizacionInteres (SUMA)"::double precision as amortizacion_intereses,
  "Cantidad (SUMA)" as cantidad,
  "Número de registros (SUMA)" as numero_registros
  into amortizaciones.tbl_amortizaciones
from amortizaciones.amortizaciones_fuentes;

create index amortizaciones__tbl_amortizaciones_credito_idx
on amortizaciones.tbl_amortizaciones (credito);

create index amortizaciones__tbl_amortizaciones_modulo_idx
on amortizaciones.tbl_amortizaciones (modulo);

