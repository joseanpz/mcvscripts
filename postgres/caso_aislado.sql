select llave_universal_14, fecha, count(*)
from cartera.tbl_cartera_crediticia_linea
where fecha > 201400
group by llave_universal_14, fecha
having count(*) > 1

