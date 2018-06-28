create view cartera.cosechas_by_rfc as
select
    rfc,
    fecha_ancla,
    max(sdovdo_m0) as sdovdo_m0,
    max(sdovdo_m1) as sdovdo_m1,
    max(sdovdo_m2) as sdovdo_m2,
    max(sdovdo_m3) as sdovdo_m3,
    max(sdovdo_m4) as sdovdo_m4,
    max(sdovdo_m5) as sdovdo_m5,
    max(sdovdo_m6) as sdovdo_m6,
    max(bkt) as bkt
from cartera.tbl_cosechas
group by fecha_ancla, rfc