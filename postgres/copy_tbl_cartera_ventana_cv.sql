drop table if exists cartera.tbl_cartera_ventana_cv;

create table cartera.tbl_cartera_ventana_cv (
    llave_universal char(20),
    rfc  varchar(15),
    mes_ancla date,
    fecha integer,
    cartera_vencida double precision,
    sdovdo_m1 double precision,
    sdovdo_m2 double precision,
    sdovdo_m3 double precision,
    sdovdo_m4 double precision,
    sdovdo_m5 double precision,
    sdovdo_m6 double precision
);

copy cartera.tbl_cartera_ventana_cv 
from '/home/jose/Desktop/Riesgo/projects/CRTV/data/cartera/cartera_vencida2_utf8.csv'
delimiter '|' null '\N' csv;

create index cartera__tbl_cartera_ventana_cv_rfc_idx
on cartera.tbl_cartera_ventana_cv (rfc);

create index cartera__tbl_cartera_ventana_cv_fecha_idx
on cartera.tbl_cartera_ventana_cv (fecha);

create index cartera__tbl_cartera_ventana_cv_lleave_universal_idx
on cartera.tbl_cartera_ventana_cv (llave_universal);