If 
([UEN] = '11 AUTOREGIO')
then '11 AUTOREGIO'

elseif
([UEN] = '05 PEQUEÑA EMPRESA NL'
or [UEN] = '09 PEQUEÑA EMPRESA TERRITORIAL'
or [UEN] = '10 MEDIANA EMPRESA TERRITORIAL'
or [UEN] = '06 MEDIANA EMPRESA NL')
and ([Sub Segmento Producto] ="AB - VARIOS")
then 'ARRENDAMIENTO VARIOS'

elseif
([UEN] = '05 PEQUEÑA EMPRESA NL'
or [UEN] = '09 PEQUEÑA EMPRESA TERRITORIAL')
and ([Producto] ="3I ACS AUTOPRESTO"
or [Producto] ="3N ACS AUTOPRESTO"
or [Producto] ="Z1 SEGURO ACS AUTOPRESTO")
then 'AUTO'

elseif
([UEN] = '05 PEQUEÑA EMPRESA NL'
or [UEN] = '09 PEQUEÑA EMPRESA TERRITORIAL'
or [UEN] = '10 MEDIANA EMPRESA TERRITORIAL'
or [UEN] = '06 MEDIANA EMPRESA NL')
and ([PerfilNegocioActual] ="CORPORATIVO")
then 'CORPORATIVO'

elseif
([UEN] = '05 PEQUEÑA EMPRESA NL'
or [UEN] = '09 PEQUEÑA EMPRESA TERRITORIAL'
or [UEN] = '10 MEDIANA EMPRESA TERRITORIAL'
or [UEN] = '06 MEDIANA EMPRESA NL')
and ([PerfilNegocioActual] ="DIRECCION")
then 'DUMMY'

elseif
([UEN] = '05 PEQUEÑA EMPRESA NL'
or [UEN] = '09 PEQUEÑA EMPRESA TERRITORIAL'
or [UEN] = '10 MEDIANA EMPRESA TERRITORIAL'
or [UEN] = '06 MEDIANA EMPRESA NL')
and ([PerfilNegocioActual] ="DUMMY")
then 'DUMMY'

elseif
([UEN] = '05 PEQUEÑA EMPRESA NL'
or [UEN] = '09 PEQUEÑA EMPRESA TERRITORIAL'
or [UEN] = '10 MEDIANA EMPRESA TERRITORIAL'
or [UEN] = '06 MEDIANA EMPRESA NL')
and ([PerfilNegocioActual] ="GOBIERNO")
then 'GOBIERNO'

elseif
([UEN] = '01 REGIONÓMINA')
then '01 REGIONÓMINA'

elseif
([UEN] = '13 CONSUMO')
then '13 CONSUMO'

elseif
( [UEN] = '12 HIPOTECARIO')
then '12 HIPOTECARIO'

elseif
([UEN] = '05 PEQUEÑA EMPRESA NL')
and ( [Sub Segmento Producto] <>"AB - VARIOS"
or [PerfilNegocioActual] <> "CORPORATIVO"
or [PerfilNegocioActual] <> "DIRECCION"
or [PerfilNegocioActual] <> "DUMMY"
or [PerfilNegocioActual] <> "GOBIERNO"
or [Producto] <> "3I ACS AUTOPRESTO"
or [Producto] <> "3N ACS AUTOPRESTO"
or [Producto] <> "Z1 SEGURO ACS AUTOPRESTO")
then '05 PEQUEÑA EMPRESA NL'

elseif
([UEN] = '09 PEQUEÑA EMPRESA TERRITORIAL')
and ( [Sub Segmento Producto] <>"AB - VARIOS"
or [PerfilNegocioActual] <> "CORPORATIVO"
or [PerfilNegocioActual] <> "DIRECCION"
or [PerfilNegocioActual] <> "DUMMY"
or [PerfilNegocioActual] <> "GOBIERNO"
or [Producto] <> "3I ACS AUTOPRESTO"
or [Producto] <> "3N ACS AUTOPRESTO"
or [Producto] <> "Z1 SEGURO ACS AUTOPRESTO")
then '09 PEQUEÑA EMPRESA TERRITORIAL'


elseif
([UEN] = '06 MEDIANA EMPRESA NL')
and ([Sub Segmento Producto] <>"AB - VARIOS"
or [PerfilNegocioActual] <> "CORPORATIVO"
or [PerfilNegocioActual] <> "DIRECCION"
or [PerfilNegocioActual] <> "DUMMY"
or [PerfilNegocioActual] <> "GOBIERNO")
then '06 MEDIANA EMPRESA NL'

elseif
([UEN] = '10 MEDIANA EMPRESA TERRITORIAL')
and ([Sub Segmento Producto] <>"AB - VARIOS"
or [PerfilNegocioActual] <> "CORPORATIVO"
or [PerfilNegocioActual] <> "DIRECCION"
or [PerfilNegocioActual] <> "DUMMY"
or [PerfilNegocioActual] <> "GOBIERNO")
then '10 MEDIANA EMPRESA TERRITORIAL'

END