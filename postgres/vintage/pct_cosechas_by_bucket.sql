create view cartera.pct_cosechas_by_bucket as
select 
    fecha_ancla, 
    avg(sdovdo_m0) as pct0,
    avg(sdovdo_m1) as pct1,
    avg(sdovdo_m2) as pct2,
    avg(sdovdo_m3) as pct3,
    avg(sdovdo_m4) as pct4,
    avg(sdovdo_m5) as pct5,
    avg(sdovdo_m6) as pct6
from cartera.tbl_cosechas
where bkt = 3 
group by fecha_ancla
order by fecha_ancla