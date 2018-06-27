create or replace view cartera.ventanas_cartera_vencida as
select
    llave_universal,
    rfc,
    fecha as fecha_ancla,
    case
        when coalesce(cartera_vencida, 0) = 0 then 0
        else 1
    end as sdovdo_m0,
    case
        when coalesce(cartera_vencida, 0) = 0 
            and coalesce(sdovdo_m1, 0) = 0 then 0
        else 1
    end as sdovdo_m1,
    case
        when coalesce(cartera_vencida, 0) = 0
            and coalesce(sdovdo_m1, 0) = 0
            and coalesce(sdovdo_m2, 0) = 0 then 0
        else 1
    end as sdovdo_m2,
    case
        when coalesce(cartera_vencida, 0) = 0
            and coalesce(sdovdo_m1, 0) = 0
            and coalesce(sdovdo_m2, 0) = 0
            and coalesce(sdovdo_m3, 0) = 0 then 0
        else 1
    end as sdovdo_m3,
    case
        when coalesce(cartera_vencida, 0) = 0
            and coalesce(sdovdo_m1, 0) = 0
            and coalesce(sdovdo_m2, 0) = 0
            and coalesce(sdovdo_m3, 0) = 0
            and coalesce(sdovdo_m4, 0) = 0 then 0
        else 1
    end as sdovdo_m4,
    case
        when coalesce(cartera_vencida, 0) = 0
            and coalesce(sdovdo_m1, 0) = 0
            and coalesce(sdovdo_m2, 0) = 0
            and coalesce(sdovdo_m3, 0) = 0
            and coalesce(sdovdo_m4, 0) = 0
            and coalesce(sdovdo_m5, 0) = 0 then 0
        else 1
    end as sdovdo_m5,
    case
        when coalesce(cartera_vencida, 0) = 0
            and coalesce(sdovdo_m1, 0) = 0
            and coalesce(sdovdo_m2, 0) = 0
            and coalesce(sdovdo_m3, 0) = 0
            and coalesce(sdovdo_m4, 0) = 0
            and coalesce(sdovdo_m5, 0) = 0
            and coalesce(sdovdo_m6, 0) = 0 then 0
        else 1
    end as sdovdo_m6
from cartera.tbl_cartera_ventana_cv