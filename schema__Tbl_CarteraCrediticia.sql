-- Table: cartera."Tbl_CarteraCrediticia"

-- DROP TABLE cartera."Tbl_CarteraCrediticia";

CREATE TABLE cartera."Tbl_CarteraCrediticia"
(
  "Id_cartera" serial NOT NULL,
  "LLAVE_UNIVERSAL" character varying(50) DEFAULT NULL::character varying,
  "FECHA" integer,
  "FECHA_DATE" date,
  "EMPRESA" character varying(3) DEFAULT NULL::character varying,
  "CLIENTE" character varying(10) DEFAULT NULL::character varying,
  "RFC" character varying(20) DEFAULT NULL::character varying,
  "LINEA" character varying(20) DEFAULT NULL::character varying,
  "CREDITO" character varying(20) DEFAULT NULL::character varying,
  "MONEDA" character varying(3) DEFAULT NULL::character varying,
  "DIAS_ATRASO" integer,
  "CLASIFICACION" character varying(50) DEFAULT NULL::character varying,
  "MIS" character varying(20) DEFAULT NULL::character varying,
  "HSC_CIC_GRUPO" character varying(20) DEFAULT NULL::character varying,
  "TIPO_DE_CREDITO" character varying(100) DEFAULT NULL::character varying,
  "HSC_PI" double precision,
  "HSC_SP" double precision,
  "HSC_EI" double precision,
  "HSC_PCT_RVA" double precision,
  "CLASS2" character varying(20) DEFAULT NULL::character varying,
  "CLASS2_5" character varying(20) DEFAULT NULL::character varying,
  "CLASS8" character varying(20) DEFAULT NULL::character varying,
  class5 character varying(20) DEFAULT NULL::character varying,
  "CLASS10" character varying(20) DEFAULT NULL::character varying,
  "CLASS15" character varying(20) DEFAULT NULL::character varying,
  "MONTO_LINEA" double precision,
  "SALDO" double precision,
  "CARTERA_VENCIDA" double precision,
  "RESERVA_TOTAL" double precision,
  "CALIFICACION" character varying(5) DEFAULT NULL::character varying,
  "MONTO_ORIGINAL" double precision,
  "ACTIVIDAD_ECO" character varying(200) DEFAULT NULL::character varying,
  "RAMA_ECO" character varying(200) DEFAULT NULL::character varying,
  "TERRITORIAL" character varying(50) DEFAULT NULL::character varying,
  "PLAZA" character varying(50) DEFAULT NULL::character varying,
  "REGION" character varying(50) DEFAULT NULL::character varying,
  fecha_actualiza date,
  fecha_updated date,
  "MESESDC" integer,
  CONSTRAINT "CARTERA_CREDITICIA_ID_CARTERA" PRIMARY KEY ("Id_cartera")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cartera."Tbl_CarteraCrediticia"
  OWNER TO postgres;

-- Index: cartera."CARTERA_CREDITICIA_FECHA"

-- DROP INDEX cartera."CARTERA_CREDITICIA_FECHA";

CREATE INDEX "CARTERA_CREDITICIA_FECHA"
  ON cartera."Tbl_CarteraCrediticia"
  USING btree
  ("FECHA");

-- Index: cartera."CARTERA_CREDITICIA_FECHA_DATE"

-- DROP INDEX cartera."CARTERA_CREDITICIA_FECHA_DATE";

CREATE INDEX "CARTERA_CREDITICIA_FECHA_DATE"
  ON cartera."Tbl_CarteraCrediticia"
  USING btree
  ("FECHA_DATE");

-- Index: cartera."CARTERA_CREDITICIA_LLAVE_UNIVERSAL"

-- DROP INDEX cartera."CARTERA_CREDITICIA_LLAVE_UNIVERSAL";

CREATE INDEX "CARTERA_CREDITICIA_LLAVE_UNIVERSAL"
  ON cartera."Tbl_CarteraCrediticia"
  USING btree
  ("LLAVE_UNIVERSAL" COLLATE pg_catalog."default");

-- Index: cartera."CARTERA_CREDITICIA_LLAVE_UNIVERSAL_FECHA"

-- DROP INDEX cartera."CARTERA_CREDITICIA_LLAVE_UNIVERSAL_FECHA";

CREATE INDEX "CARTERA_CREDITICIA_LLAVE_UNIVERSAL_FECHA"
  ON cartera."Tbl_CarteraCrediticia"
  USING btree
  ("LLAVE_UNIVERSAL" COLLATE pg_catalog."default", "FECHA");

-- Index: cartera."CARTERA_CREDITICIA_MESESDC"

-- DROP INDEX cartera."CARTERA_CREDITICIA_MESESDC";

CREATE INDEX "CARTERA_CREDITICIA_MESESDC"
  ON cartera."Tbl_CarteraCrediticia"
  USING btree
  ("MESESDC");

-- Index: cartera."CARTERA_CREDITICIA_RFC"

-- DROP INDEX cartera."CARTERA_CREDITICIA_RFC";

CREATE INDEX "CARTERA_CREDITICIA_RFC"
  ON cartera."Tbl_CarteraCrediticia"
  USING btree
  ("RFC" COLLATE pg_catalog."default");

