%hive

DROP TABLE IF EXISTS RSS_MCV_UNIVERSO_LLAVES;

CREATE TABLE  RSS_MCV_UNIVERSO_LLAVES(
llave_universal  CHAR(20) ,
fecha           CHAR(10),
tipo_de_credito   CHAR(100),
cartera_vencida   double, 
dias_atraso        int ,
mesesdc            int
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LOCATION 's3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M/MCV/RSS_MCV_UNIVERSO_LLAVES';

INSERT INTO  RSS_MCV_UNIVERSO_LLAVES
SELECT  A.LLAVE_UNIVERSAL_20 as llave_universal,A.FECHA, A.TIPO_DE_CREDITO ,A.cartera_vencida,A.dias_atraso,A.mesesdc
FROM RSS_MCV_CARTERA_CREDITICIA_LINEA A 
INNER JOIN RSS_MCV_COLOCACION_PEQUE B
ON A.LLAVE_UNIVERSAL_20 = B.llave_universal AND A.fecha = B.fecha