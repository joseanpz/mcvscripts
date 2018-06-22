-- select count(*) from cartera.universo_cartera_crediticia
CREATE INDEX tbl_universo_cartera_crediticia_pequena_empresa_fecha_idx
  ON cartera.tbl_universo_cartera_crediticia_pequena_empresa
  USING btree
  (fecha);

CREATE INDEX tbl_universo_cartera_crediticia_pequena_empresa_fecha_date_idx
  ON cartera.tbl_universo_cartera_crediticia_pequena_empresa
  USING btree
  (fecha_date);

CREATE INDEX tbl_universo_cartera_crediticia_pequena_empresa_linea_idx
  ON cartera.tbl_universo_cartera_crediticia_pequena_empresa
  USING btree
  (linea);

CREATE INDEX tbl_universo_cartera_crediticia_pequena_empresa_llave_universal_idx
  ON cartera.tbl_universo_cartera_crediticia_pequena_empresa
  USING btree
  (llave_universal);

CREATE INDEX tbl_universo_cartera_crediticia_pequena_empresa_mesesdc_idx
  ON cartera.tbl_universo_cartera_crediticia_pequena_empresa
  USING btree
  (mesesdc);

CREATE INDEX tbl_universo_cartera_crediticia_pequena_empresa_rfc_idx
  ON cartera.tbl_universo_cartera_crediticia_pequena_empresa
  USING btree
  (rfc);