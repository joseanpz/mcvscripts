select 
    a.fecha_ancla, 
    a.mc0,
    b.mc1,
    c.mc2,
    d.mc3,
    e.total
from (
    select fecha_ancla, count(*) as mc0
    from cartera.tbl_cosechas
    where monto_clasificacion = 0
        and bkt = 1
    group by fecha_ancla
) a
left join (
    select fecha_ancla, count(*) as mc1
    from cartera.tbl_cosechas
    where monto_clasificacion = 1
    and bkt = 1
    group by fecha_ancla
) b
on a.fecha_ancla = b.fecha_ancla
left join (
    select fecha_ancla, count(*) as mc2
    from cartera.tbl_cosechas
    where monto_clasificacion = 2
    and bkt = 1
    group by fecha_ancla
) c
on a.fecha_ancla = c.fecha_ancla
left join (
    select fecha_ancla, count(*) as mc3
    from cartera.tbl_cosechas
    where monto_clasificacion = 3
    and bkt = 1
    group by fecha_ancla
) d
on a.fecha_ancla = d.fecha_ancla
left join (
    select fecha_ancla, count(*) as total
    from cartera.tbl_cosechas
    where bkt = 1
    group by fecha_ancla
) e
on a.fecha_ancla = e.fecha_ancla
order by a.fecha_ancla