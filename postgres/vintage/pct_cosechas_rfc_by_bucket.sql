-- create view cartera.pct_cosechas_by_bucket as
select 
    fecha_ancla, 
    round(100 * avg(sdovdo_m0), 2) as pct0,
    round(100 * avg(sdovdo_m1), 2) as pct1,
    round(100 * avg(sdovdo_m2), 2) as pct2,
    round(100 * avg(sdovdo_m3), 2) as pct3,
    round(100 * avg(sdovdo_m4), 2) as pct4,
    round(100 * avg(sdovdo_m5), 2) as pct5,
    round(100 * avg(sdovdo_m6), 2) as pct6,
    count(*)
from cartera.tbl_cosechas_rfc
where bkt = 4 and monto_clasificacion = 2
group by fecha_ancla
order by fecha_ancla