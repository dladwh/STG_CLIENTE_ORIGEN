/**********************************************************************
-- Product                   : Oracle Warehouse Builder
-- Generator Version         : 11.2.0.4.0 
-- Created Date              : Thu Sep 25 14:32:39 ART 2014
-- Modified Date             : Thu Sep 25 14:32:39 ART 2014
-- Created By                : owb11204_idesa
-- Modified By               : owb11204_idesa
-- Generated Object Type     : EXTERNAL TABLE
-- Generated Object Name     : EXT_CLIENTE_ORIGEN
-- Comments                  : 
-- Copyright (c) 2000, 2014, Oracle. Todos los Derechos Reservados.
**********************************************************************/


WHENEVER SQLERROR EXIT FAILURE;


CREATE TABLE "EXT_CLIENTE_ORIGEN"
(
"VALOR_DE_TIPO" VARCHAR2(1),
"ID_CLIENTE_ORIGEN" NUMBER(2),
"TX_CLIENTE_ORIGEN" VARCHAR2(10)
)
ORGANIZATION EXTERNAL (
  TYPE ORACLE_LOADER
  DEFAULT DIRECTORY EXTERNAL_TABLES
  ACCESS PARAMETERS (
    RECORDS DELIMITED BY NEWLINE
    CHARACTERSET WE8MSWIN1252
    STRING SIZES ARE IN BYTES
    LOAD WHEN (
      ("VALOR_DE_TIPO"='D')
    )
    NOBADFILE
    NODISCARDFILE
    NOLOGFILE
    FIELDS
      TERMINATED BY ','
      NOTRIM
      (
        "VALOR_DE_TIPO" CHAR,
        "ID_CLIENTE_ORIGEN" CHAR,
        "TX_CLIENTE_ORIGEN" CHAR
      )
    )
  LOCATION (
      'CLIENTE_ORIGEN.txt'
  )
)
REJECT LIMIT UNLIMITED
NOPARALLEL
;

