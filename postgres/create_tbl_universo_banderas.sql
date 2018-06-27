drop table if exists cartera.tbl_universo_banderas;

select
    a.*,

    case tipo_de_credito
        when 'CARTA DE CREDITO' then 1::smallint
        when 'CCI' then 1::smallint
        when 'CCI PROV' then 1::smallint
        else 0::smallint
    end as cci_flag,

    case 
        when tipo_de_credito like '%REE%' or tipo_de_credito = 'CVMGA' then 1::smallint
        when llave_universal in (select llave_universal from movimiento_lineas.lineas_reestructuradas) then 1::smallint -- faltan créditos que hayan nacido vencido
	when llave_universal in (select llave_universal from cartera.reestructuras_nacidos_vencidos) then 1::smallint
        else 0::smallint
    end as reestructuras_flag,

    case
        when tipo_de_credito in ('LINEA DE CREDITO POR SOBREGIRO', 'LINEA SOBREGIRO') then 1::smallint
        else 0::smallint
    end as sobregiro_flag,

    case 
        when hsc_cic_grupo = 'CIC' then 1::smallint
        else 0::smallint
    end as intercompania_flag,

    case
        when coalesce(cartera_vencida, 0) > 0 then 1::smallint
        else 0::smallint
    end as cartera_vencida_flag,

    case
        when mis = '5' or mis = '2' or mis = '3' then 1::smallint
        else 0::smallint
    end as cartera_adquirida_flag
    into cartera.tbl_universo_banderas    
from cartera.tbl_universo a;
