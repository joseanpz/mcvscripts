select "rfc_decrypted" as rfc_decrypted, "rfc" as rfc
union all
select DISTINCT RFC as rfc_decrypted, fun_encripta(RFC) as rfc 

from DBRSKDATAMART.Tbl_CarteraCrediticia

WHERE LINEA IS NOT NULL AND LINEA != '' 


INTO OUTFILE '/data/mysql-files/rfcjunio.csv'
CHARACTER SET utf8
FIELDS TERMINATED BY ','
-- OPTIONALLY ENCLOSED BY '"'
-- ESCAPED BY ''
LINES TERMINATED BY '\n';