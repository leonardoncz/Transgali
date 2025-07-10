--------------------------------------------------------
-- Archivo creado  - miércoles-julio-09-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AQ$_SCHEDULES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."AQ$_SCHEDULES" SHARING=METADATA 
   (	"OID" RAW(16), 
	"DESTINATION" VARCHAR2(390 BYTE), 
	"START_TIME" DATE, 
	"DURATION" VARCHAR2(8 BYTE), 
	"NEXT_TIME" VARCHAR2(128 BYTE), 
	"LATENCY" VARCHAR2(8 BYTE), 
	"LAST_TIME" DATE, 
	"JOBNO" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BOLETASERVICIO
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BOLETASERVICIO" 
   (	"GR" VARCHAR2(15 BYTE), 
	"NUMBOLETA" NUMBER(*,0), 
	"SUBTOTAL" FLOAT(126), 
	"TOTAL" FLOAT(126), 
	"IDBOLETASERVICIO" NUMBER(*,0), 
	"IDSERVICIOTRANSPORTE" NUMBER(*,0), 
	"IDCLIENTE" NUMBER(*,0), 
	"IDUSUARIO" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CLIENTE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CLIENTE" 
   (	"NOMCLIENTE" VARCHAR2(50 BYTE), 
	"DNI" CHAR(8 BYTE), 
	"TELEFONO" CHAR(9 BYTE), 
	"CORREO" VARCHAR2(100 BYTE), 
	"IDCLIENTE" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CONDUCTOR
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CONDUCTOR" 
   (	"NOMBREEMPLEADO" VARCHAR2(50 BYTE), 
	"DNIEMPLEADO" CHAR(8 BYTE), 
	"AFP" VARCHAR2(30 BYTE), 
	"REMDIA" FLOAT(126), 
	"BASICO" NUMBER(*,0), 
	"REMNETA" FLOAT(126), 
	"REENCAJE" NUMBER(*,0), 
	"IDCONDUCTOR" NUMBER(*,0), 
	"TIPO" VARCHAR2(20 BYTE), 
	"BREVETE" VARCHAR2(9 BYTE), 
	"ESTADO" NUMBER(*,0), 
	"IDEMPRESA" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMPRESACLIENTE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."EMPRESACLIENTE" 
   (	"NOMBREEMPRESA" VARCHAR2(50 BYTE), 
	"TELEMPRESA" CHAR(9 BYTE), 
	"CORREOEMPRESA" VARCHAR2(50 BYTE), 
	"DIRECCIONEMPRESA" VARCHAR2(100 BYTE), 
	"IDEMPRESA" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HELP
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HELP" SHARING=METADATA 
   (	"TOPIC" VARCHAR2(50 BYTE), 
	"SEQ" NUMBER, 
	"INFO" VARCHAR2(80 BYTE)
   ) PCTFREE 0 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 49152 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
  GRANT SELECT ON "SYSTEM"."HELP" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table OL$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."OL$" SHARING=METADATA 
   (	"OL_NAME" VARCHAR2(128 BYTE), 
	"SQL_TEXT" LONG, 
	"TEXTLEN" NUMBER, 
	"SIGNATURE" RAW(16), 
	"HASH_VALUE" NUMBER, 
	"HASH_VALUE2" NUMBER, 
	"CATEGORY" VARCHAR2(128 BYTE), 
	"VERSION" VARCHAR2(64 BYTE), 
	"CREATOR" VARCHAR2(128 BYTE), 
	"TIMESTAMP" DATE, 
	"FLAGS" NUMBER, 
	"HINTCOUNT" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" VARCHAR2(1000 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
  GRANT DELETE ON "SYSTEM"."OL$" TO PUBLIC;
  GRANT INSERT ON "SYSTEM"."OL$" TO PUBLIC;
  GRANT SELECT ON "SYSTEM"."OL$" TO PUBLIC;
  GRANT UPDATE ON "SYSTEM"."OL$" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table OL$HINTS
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."OL$HINTS" SHARING=METADATA 
   (	"OL_NAME" VARCHAR2(128 BYTE), 
	"HINT#" NUMBER, 
	"CATEGORY" VARCHAR2(128 BYTE), 
	"HINT_TYPE" NUMBER, 
	"HINT_TEXT" VARCHAR2(512 BYTE), 
	"STAGE#" NUMBER, 
	"NODE#" NUMBER, 
	"TABLE_NAME" VARCHAR2(128 BYTE), 
	"TABLE_TIN" NUMBER, 
	"TABLE_POS" NUMBER, 
	"REF_ID" NUMBER, 
	"USER_TABLE_NAME" VARCHAR2(260 BYTE), 
	"COST" FLOAT(126), 
	"CARDINALITY" FLOAT(126), 
	"BYTES" FLOAT(126), 
	"HINT_TEXTOFF" NUMBER, 
	"HINT_TEXTLEN" NUMBER, 
	"JOIN_PRED" VARCHAR2(2000 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"HINT_STRING" CLOB
   ) ON COMMIT PRESERVE ROWS 
 LOB ("HINT_STRING") STORE AS BASICFILE (ENABLE STORAGE IN ROW 4000 CHUNK 8192 RETENTION 
  NOCACHE ) ;
  GRANT DELETE ON "SYSTEM"."OL$HINTS" TO PUBLIC;
  GRANT INSERT ON "SYSTEM"."OL$HINTS" TO PUBLIC;
  GRANT SELECT ON "SYSTEM"."OL$HINTS" TO PUBLIC;
  GRANT UPDATE ON "SYSTEM"."OL$HINTS" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table OL$NODES
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."OL$NODES" SHARING=METADATA 
   (	"OL_NAME" VARCHAR2(128 BYTE), 
	"CATEGORY" VARCHAR2(128 BYTE), 
	"NODE_ID" NUMBER, 
	"PARENT_ID" NUMBER, 
	"NODE_TYPE" NUMBER, 
	"NODE_TEXTLEN" NUMBER, 
	"NODE_TEXTOFF" NUMBER, 
	"NODE_NAME" VARCHAR2(64 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
  GRANT DELETE ON "SYSTEM"."OL$NODES" TO PUBLIC;
  GRANT INSERT ON "SYSTEM"."OL$NODES" TO PUBLIC;
  GRANT SELECT ON "SYSTEM"."OL$NODES" TO PUBLIC;
  GRANT UPDATE ON "SYSTEM"."OL$NODES" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table PAGO
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PAGO" 
   (	"MONTOPAGO" FLOAT(126), 
	"METODOPAGO" VARCHAR2(20 BYTE), 
	"FECHAPAGO" DATE, 
	"IDPAGO" NUMBER(*,0), 
	"IDBOLETASERVICIO" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REDO_DB
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."REDO_DB" SHARING=METADATA 
   (	"DBID" NUMBER, 
	"GLOBAL_DBNAME" VARCHAR2(129 BYTE), 
	"DBUNAME" VARCHAR2(32 BYTE), 
	"VERSION" VARCHAR2(32 BYTE), 
	"THREAD#" NUMBER, 
	"RESETLOGS_SCN_BAS" NUMBER, 
	"RESETLOGS_SCN_WRP" NUMBER, 
	"RESETLOGS_TIME" NUMBER, 
	"PRESETLOGS_SCN_BAS" NUMBER, 
	"PRESETLOGS_SCN_WRP" NUMBER, 
	"PRESETLOGS_TIME" NUMBER, 
	"SEQNO_RCV_CUR" NUMBER, 
	"SEQNO_RCV_LO" NUMBER, 
	"SEQNO_RCV_HI" NUMBER, 
	"SEQNO_DONE_CUR" NUMBER, 
	"SEQNO_DONE_LO" NUMBER, 
	"SEQNO_DONE_HI" NUMBER, 
	"GAP_SEQNO" NUMBER, 
	"GAP_RET" NUMBER, 
	"GAP_DONE" NUMBER, 
	"APPLY_SEQNO" NUMBER, 
	"APPLY_DONE" NUMBER, 
	"PURGE_DONE" NUMBER, 
	"HAS_CHILD" NUMBER, 
	"ERROR1" NUMBER, 
	"STATUS" NUMBER, 
	"CREATE_DATE" DATE, 
	"TS1" NUMBER, 
	"TS2" NUMBER, 
	"GAP_NEXT_SCN" NUMBER, 
	"GAP_NEXT_TIME" NUMBER, 
	"CURSCN_TIME" NUMBER, 
	"RESETLOGS_SCN" NUMBER, 
	"PRESETLOGS_SCN" NUMBER, 
	"GAP_RET2" NUMBER, 
	"CURLOG" NUMBER, 
	"ENDIAN" NUMBER, 
	"ENQIDX" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" DATE, 
	"SPARE6" VARCHAR2(65 BYTE), 
	"SPARE7" VARCHAR2(129 BYTE), 
	"TS3" NUMBER, 
	"CURBLKNO" NUMBER, 
	"SPARE8" NUMBER, 
	"SPARE9" NUMBER, 
	"SPARE10" NUMBER, 
	"SPARE11" NUMBER, 
	"SPARE12" NUMBER, 
	"TENANT_KEY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table REDO_LOG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."REDO_LOG" SHARING=METADATA 
   (	"DBID" NUMBER, 
	"GLOBAL_DBNAME" VARCHAR2(129 BYTE), 
	"DBUNAME" VARCHAR2(32 BYTE), 
	"VERSION" VARCHAR2(32 BYTE), 
	"THREAD#" NUMBER, 
	"RESETLOGS_SCN_BAS" NUMBER, 
	"RESETLOGS_SCN_WRP" NUMBER, 
	"RESETLOGS_TIME" NUMBER, 
	"PRESETLOGS_SCN_BAS" NUMBER, 
	"PRESETLOGS_SCN_WRP" NUMBER, 
	"PRESETLOGS_TIME" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"DUPID" NUMBER, 
	"STATUS1" NUMBER, 
	"STATUS2" NUMBER, 
	"CREATE_TIME" VARCHAR2(32 BYTE), 
	"CLOSE_TIME" VARCHAR2(32 BYTE), 
	"DONE_TIME" VARCHAR2(32 BYTE), 
	"FIRST_SCN_BAS" NUMBER, 
	"FIRST_SCN_WRP" NUMBER, 
	"FIRST_TIME" NUMBER, 
	"NEXT_SCN_BAS" NUMBER, 
	"NEXT_SCN_WRP" NUMBER, 
	"NEXT_TIME" NUMBER, 
	"FIRST_SCN" NUMBER, 
	"NEXT_SCN" NUMBER, 
	"RESETLOGS_SCN" NUMBER, 
	"BLOCKS" NUMBER, 
	"BLOCK_SIZE" NUMBER, 
	"OLD_BLOCKS" NUMBER, 
	"CREATE_DATE" DATE, 
	"ERROR1" NUMBER, 
	"ERROR2" NUMBER, 
	"FILENAME" VARCHAR2(513 BYTE), 
	"TS1" NUMBER, 
	"TS2" NUMBER, 
	"ENDIAN" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" DATE, 
	"SPARE6" VARCHAR2(65 BYTE), 
	"SPARE7" VARCHAR2(129 BYTE), 
	"TS3" NUMBER, 
	"PRESETLOGS_SCN" NUMBER, 
	"SPARE8" NUMBER, 
	"SPARE9" NUMBER, 
	"SPARE10" NUMBER, 
	"OLD_STATUS1" NUMBER, 
	"OLD_STATUS2" NUMBER, 
	"OLD_FILENAME" VARCHAR2(513 BYTE), 
	"TENANT_KEY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table SCHEDULER_JOB_ARGS_TBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SCHEDULER_JOB_ARGS_TBL" SHARING=METADATA 
   (	"OWNER" VARCHAR2(128 BYTE), 
	"JOB_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_POSITION" NUMBER, 
	"ARGUMENT_TYPE" VARCHAR2(257 BYTE), 
	"VALUE" VARCHAR2(4000 BYTE), 
	"ANYDATA_VALUE" "SYS"."ANYDATA" , 
	"OUT_ARGUMENT" VARCHAR2(5 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" 
 OPAQUE TYPE ("ANYDATA_VALUE") STORE AS BASICFILE LOB (
  ENABLE STORAGE IN ROW 4000 CHUNK 8192 RETENTION 
  CACHE ) ;
  GRANT SELECT ON "SYSTEM"."SCHEDULER_JOB_ARGS_TBL" TO "SELECT_CATALOG_ROLE";
--------------------------------------------------------
--  DDL for Table SCHEDULER_PROGRAM_ARGS_TBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SCHEDULER_PROGRAM_ARGS_TBL" SHARING=METADATA 
   (	"OWNER" VARCHAR2(128 BYTE), 
	"PROGRAM_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_POSITION" NUMBER, 
	"ARGUMENT_TYPE" VARCHAR2(257 BYTE), 
	"METADATA_ATTRIBUTE" VARCHAR2(19 BYTE), 
	"DEFAULT_VALUE" VARCHAR2(4000 BYTE), 
	"DEFAULT_ANYDATA_VALUE" "SYS"."ANYDATA" , 
	"OUT_ARGUMENT" VARCHAR2(5 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" 
 OPAQUE TYPE ("DEFAULT_ANYDATA_VALUE") STORE AS BASICFILE LOB (
  ENABLE STORAGE IN ROW 4000 CHUNK 8192 RETENTION 
  CACHE ) ;
  GRANT SELECT ON "SYSTEM"."SCHEDULER_PROGRAM_ARGS_TBL" TO "SELECT_CATALOG_ROLE";
--------------------------------------------------------
--  DDL for Table SERVICIO_CONDUCTOR_
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SERVICIO_CONDUCTOR_" 
   (	"OBSERVACION" CHAR(2 BYTE), 
	"IDSERVICIOTRANSPORTE" NUMBER(*,0), 
	"IDCONDUCTOR" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SERVICIOTRANSPORTE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SERVICIOTRANSPORTE" 
   (	"FECHAINICIO" DATE, 
	"FECHAENTREGA" DATE, 
	"PESO" FLOAT(126), 
	"ORIGEN" VARCHAR2(100 BYTE), 
	"DESTINO" VARCHAR2(100 BYTE), 
	"IDSERVICIOTRANSPORTE" NUMBER(*,0), 
	"IDEMPRESA" NUMBER(*,0), 
	"IDUSUARIO" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SQLPLUS_PRODUCT_PROFILE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SQLPLUS_PRODUCT_PROFILE" SHARING=METADATA 
   (	"PRODUCT" VARCHAR2(30 BYTE), 
	"USERID" VARCHAR2(128 BYTE), 
	"ATTRIBUTE" VARCHAR2(240 BYTE), 
	"SCOPE" VARCHAR2(240 BYTE), 
	"NUMERIC_VALUE" NUMBER(15,2), 
	"CHAR_VALUE" VARCHAR2(240 BYTE), 
	"DATE_VALUE" DATE, 
	"LONG_VALUE" LONG
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."USUARIO" 
   (	"IDUSUARIO" NUMBER(*,0), 
	"NOMUSUARIO" VARCHAR2(100 BYTE), 
	"TELUSUARIO" CHAR(9 BYTE), 
	"CORREOUSUARIO" VARCHAR2(50 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table VEHICULO
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."VEHICULO" 
   (	"TIPOUNIDAD" VARCHAR2(50 BYTE), 
	"PLACATRACTO" CHAR(6 BYTE), 
	"PLACACARRETA" CHAR(6 BYTE), 
	"IDVEHICULO" NUMBER(*,0), 
	"IDEMPRESA" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.AQ$_SCHEDULES
SET DEFINE OFF;
REM INSERTING into SYSTEM.BOLETASERVICIO
SET DEFINE OFF;
Insert into SYSTEM.BOLETASERVICIO (GR,NUMBOLETA,SUBTOTAL,TOTAL,IDBOLETASERVICIO,IDSERVICIOTRANSPORTE,IDCLIENTE,IDUSUARIO) values ('GR0001','1001','350','413','1','1','1','1');
Insert into SYSTEM.BOLETASERVICIO (GR,NUMBOLETA,SUBTOTAL,TOTAL,IDBOLETASERVICIO,IDSERVICIOTRANSPORTE,IDCLIENTE,IDUSUARIO) values ('GR0002','1002','280','330,4','2','2','2','2');
Insert into SYSTEM.BOLETASERVICIO (GR,NUMBOLETA,SUBTOTAL,TOTAL,IDBOLETASERVICIO,IDSERVICIOTRANSPORTE,IDCLIENTE,IDUSUARIO) values ('GR0003','1003','460','542,8','3','3','3','3');
Insert into SYSTEM.BOLETASERVICIO (GR,NUMBOLETA,SUBTOTAL,TOTAL,IDBOLETASERVICIO,IDSERVICIOTRANSPORTE,IDCLIENTE,IDUSUARIO) values ('GR0004','1004','200','236','4','4','4','1');
Insert into SYSTEM.BOLETASERVICIO (GR,NUMBOLETA,SUBTOTAL,TOTAL,IDBOLETASERVICIO,IDSERVICIOTRANSPORTE,IDCLIENTE,IDUSUARIO) values ('GR0005','1005','420','495,6','5','5','5','2');
REM INSERTING into SYSTEM.CLIENTE
SET DEFINE OFF;
Insert into SYSTEM.CLIENTE (NOMCLIENTE,DNI,TELEFONO,CORREO,IDCLIENTE) values ('Daniel Ruiz','45678912','915334455','daniel.ruiz@gmail.com','1');
Insert into SYSTEM.CLIENTE (NOMCLIENTE,DNI,TELEFONO,CORREO,IDCLIENTE) values ('Verónica Mendoza','78945612','987654321','vero.mdz@hotmail.com','2');
Insert into SYSTEM.CLIENTE (NOMCLIENTE,DNI,TELEFONO,CORREO,IDCLIENTE) values ('Andrés Quispe','12345678','912345678','andres.qs@outlook.com','3');
Insert into SYSTEM.CLIENTE (NOMCLIENTE,DNI,TELEFONO,CORREO,IDCLIENTE) values ('Laura Silva','87654321','918273645','laura.silva@gmail.com','4');
Insert into SYSTEM.CLIENTE (NOMCLIENTE,DNI,TELEFONO,CORREO,IDCLIENTE) values ('Pedro Torres','76543210','911223344','pedro.t@gmail.com','5');
REM INSERTING into SYSTEM.CONDUCTOR
SET DEFINE OFF;
Insert into SYSTEM.CONDUCTOR (NOMBREEMPLEADO,DNIEMPLEADO,AFP,REMDIA,BASICO,REMNETA,REENCAJE,IDCONDUCTOR,TIPO,BREVETE,ESTADO,IDEMPRESA) values ('Luis Chávez','41234567','PrimaAFP','120,5','1800','2400,75','300','1','Planta','B123456','1','1');
Insert into SYSTEM.CONDUCTOR (NOMBREEMPLEADO,DNIEMPLEADO,AFP,REMDIA,BASICO,REMNETA,REENCAJE,IDCONDUCTOR,TIPO,BREVETE,ESTADO,IDEMPRESA) values ('Sofía Gómez','42345678','Integra','110','1700','2200,3','280','2','Contratado','C654321','1','2');
Insert into SYSTEM.CONDUCTOR (NOMBREEMPLEADO,DNIEMPLEADO,AFP,REMDIA,BASICO,REMNETA,REENCAJE,IDCONDUCTOR,TIPO,BREVETE,ESTADO,IDEMPRESA) values ('Carlos Díaz','43456789','Habitat','130,75','1850','2500,2','320','3','Planta','D234567','1','3');
Insert into SYSTEM.CONDUCTOR (NOMBREEMPLEADO,DNIEMPLEADO,AFP,REMDIA,BASICO,REMNETA,REENCAJE,IDCONDUCTOR,TIPO,BREVETE,ESTADO,IDEMPRESA) values ('Andrea Pérez','44567890','Profuturo','115,6','1750','2300,55','290','4','Contratado','E345678','1','4');
Insert into SYSTEM.CONDUCTOR (NOMBREEMPLEADO,DNIEMPLEADO,AFP,REMDIA,BASICO,REMNETA,REENCAJE,IDCONDUCTOR,TIPO,BREVETE,ESTADO,IDEMPRESA) values ('Juan Reyes','45678901','Integra','125,4','1900','2600,1','310','5','Planta','F456789','1','5');
REM INSERTING into SYSTEM.EMPRESACLIENTE
SET DEFINE OFF;
Insert into SYSTEM.EMPRESACLIENTE (NOMBREEMPRESA,TELEMPRESA,CORREOEMPRESA,DIRECCIONEMPRESA,IDEMPRESA) values ('Transportes Águila','912345678','info@aguilatransp.com','Jr. Piura 456, Arequipa','2');
Insert into SYSTEM.EMPRESACLIENTE (NOMBREEMPRESA,TELEMPRESA,CORREOEMPRESA,DIRECCIONEMPRESA,IDEMPRESA) values ('Logística Perú SAC','998877665','contacto@logperu.com','Av. El Sol 123, Lima','1');
Insert into SYSTEM.EMPRESACLIENTE (NOMBREEMPRESA,TELEMPRESA,CORREOEMPRESA,DIRECCIONEMPRESA,IDEMPRESA) values ('CargoExpress','987654321','soporte@cargoexp.com','Calle Comercio 789, Trujillo','3');
Insert into SYSTEM.EMPRESACLIENTE (NOMBREEMPRESA,TELEMPRESA,CORREOEMPRESA,DIRECCIONEMPRESA,IDEMPRESA) values ('MoviCarga','955667788','ventas@movicarga.pe','Av. Industrial 101, Cusco','4');
Insert into SYSTEM.EMPRESACLIENTE (NOMBREEMPRESA,TELEMPRESA,CORREOEMPRESA,DIRECCIONEMPRESA,IDEMPRESA) values ('RapidEnvios SAC','911223344','rapido@enviosrapidos.com','Malecón 300, Iquitos','5');
REM INSERTING into SYSTEM.HELP
SET DEFINE OFF;
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@','2',' @ ("at" sign)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@','3',' -------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@','4',' Runs the SQL*Plus statements in the specified script. The script can be');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@','5',' called from the local file system or a web server.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@','6',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@','7',' @ {url|file_name[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@','9',' where url supports HTTP and FTP protocols in the form:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@','11','    http://host.domain/script.sql');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@','12',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@','2',' @@ (double "at" sign)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@','3',' ---------------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@','5',' Runs the specified script. This command is almost identical to');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@','6',' the @ command. It is useful for running nested scripts because it');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@','7',' has the additional functionality of looking for the nested script');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@','8',' in the same url or path as the calling script.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@','10',' @@ {url|file_name[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@','11',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/','2',' / (slash)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/','3',' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/','5',' Executes the most recently executed SQL command or PL/SQL block');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/','6',' which is stored in the SQL buffer. Use slash (/) at the command');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/','7',' prompt or line number prompt in SQL*Plus command line. The buffer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/','8',' has no command history and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/','10',' /');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/','11',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT','2',' ACCEPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT','3',' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT','5',' Reads a line of input and stores it in a given substitution variable.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT','6',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT','7',' ACC[EPT] variable [NUM[BER] | CHAR | DATE | BINARY_FLOAT | BINARY_DOUBLE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT','8',' [FOR[MAT] format] [DEF[AULT] default] [PROMPT text | NOPR[OMPT]] [HIDE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND','2',' APPEND');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND','3',' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND','5',' Adds text to the end of the current line in the SQL buffer.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND','6',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND','7',' A[PPEND] text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG','2',' ARCHIVE LOG');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG','3',' -----------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG','5',' Displays information about redo log files.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG','6',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG','7',' ARCHIVE LOG LIST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','2',' ATTRIBUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','3',' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','5',' Specifies display characteristics for a given attribute of an Object Type');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','6',' column, such as the format of NUMBER data. Columns and attributes should');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','7',' not have the same names as they share a common namespace. Lists the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','8',' current display characteristics for a single attribute or all attributes.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','10',' ATTRIBUTE [type_name.attribute_name [option ... ]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','11',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','12',' where option represents one of the following terms or clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','13','     ALI[AS] alias');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','14','     CLE[AR]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','15','     FOR[MAT] format');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','16','     LIKE {type_name.attribute_name | alias}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','17','     ON|OFF');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE','18',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','2',' BREAK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','3',' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','5',' Specifies where changes occur in a report and the formatting');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','6',' action to perform, such as:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','7',' - suppressing display of duplicate values for a given column');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','8',' - skipping a line each time a given column value changes');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','9',' - printing computed figures each time a given column value');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','10','   changes or at the end of the report.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','11',' Enter BREAK with no clauses to list the current BREAK definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','12',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','13',' BRE[AK] [ON report_element [action [action]]] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','14',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','15',' where report_element has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','16','     {column | expression | ROW | REPORT}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','17',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','18',' and where action has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','19','     [SKI[P] n | [SKI[P]] PAGE] [NODUP[LICATES] | DUP[LICATES]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK','20',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','2',' BTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','3',' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','5',' Places and formats a specified title at the bottom of each report');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','6',' page, or lists the current BTITLE definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','8',' BTI[TLE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','10',' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','11',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','12','     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','13','     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','14','     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE','15',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE','2',' CHANGE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE','3',' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE','5',' Changes the first occurrence of the specified text on the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE','6',' line of the SQL buffer. The buffer has no command history list and');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE','7',' does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE','9',' C[HANGE] sepchar old [sepchar [new[sepchar]]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','2',' CLEAR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','3',' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','5',' Resets or erases the current value or setting for the specified option.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','6',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','7',' CL[EAR] option ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','9',' where option represents one of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','10','     BRE[AKS]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','11','     BUFF[ER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','12','     COL[UMNS]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','13','     COMP[UTES]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','14','     SCR[EEN]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','15','     SQL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','16','     TIMI[NG]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR','17',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','2',' COLUMN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','3',' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','5',' Specifies display attributes for a given column, such as:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','6','     - text for the column heading');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','7','     - alignment for the column heading');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','8','     - format for NUMBER data');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','9','     - wrapping of column data');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','10',' Also lists the current display attributes for a single column');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','11',' or all columns.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','12',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','13',' COL[UMN] [{column | expr} [option ...] ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','14',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','15',' where option represents one of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','16','     ALI[AS] alias');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','17','     BOOL[EAN] text1 text2');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','18','     CLE[AR]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','19','     ENTMAP {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','20','     FOLD_A[FTER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','21','     FOLD_B[EFORE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','22','     FOR[MAT] format');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','23','     HEA[DING] text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','24','     JUS[TIFY] {L[EFT] | C[ENTER] | R[IGHT]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','25','     LIKE {expr | alias}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','26','     NEWL[INE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','27','     NEW_V[ALUE] variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','28','     NOPRI[NT] | PRI[NT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','29','     NUL[L] text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','30','     OLD_V[ALUE] variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','31','     ON|OFF');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','32','     WRA[PPED] | WOR[D_WRAPPED] | TRU[NCATED]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN','33',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE','2',' COMPUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE','3',' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE','5',' In combination with the BREAK command, calculates and prints');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE','6',' summary lines using various standard computations. Also lists');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE','7',' all COMPUTE definitions.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE','9',' COMP[UTE] [function [LAB[EL] text] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE','10','   OF {expr|column|alias} ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE','11','   ON {expr|column|alias|REPORT|ROW} ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE','12',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','2',' CONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','3',' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','5',' Connects a given username to the Oracle Database. When you run a');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','6',' CONNECT command, the site profile, glogin.sql, and the user profile,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','7',' login.sql, are processed in that order. CONNECT does not reprompt');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','8',' for username or password if the initial connection does not succeed.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','10',' CONN[ECT] [{logon|/|proxy}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','11',' [AS {SYSASM|SYSBACKUP|SYSDBA|SYSDG|SYSOPER|SYSRAC|SYSKM}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','12',' [edition=value]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','13',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','14',' where logon has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','15','     username[/password][@connect_identifier]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','16',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','17',' where proxy has the syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','18','     proxyuser[username][/password][@connect_identifier]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','19',' NOTE: Brackets around username in proxy are required syntax');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT','20',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY','2',' COPY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY','3',' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY','5',' Copies data from a query to a table in the same or another');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY','6',' database. COPY supports CHAR, DATE, LONG, NUMBER and VARCHAR2.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY','8',' COPY {FROM database | TO database | FROM database TO database}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY','9','            {APPEND|CREATE|INSERT|REPLACE} destination_table');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY','10','            [(column, column, column, ...)] USING query');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY','11',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY','12',' where database has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY','13','     username[/password]@connect_identifier');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY','14',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE','2',' DEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE','3',' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE','5',' Specifies a substitution variable and assigns a CHAR value to it, or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE','6',' lists the value and variable type of a single variable or all variables.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE','8',' DEF[INE] [variable] | [variable = text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL','2',' DEL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL','3',' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL','5',' Deletes one or more lines of the SQL buffer. The buffer has no');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL','6',' command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL','8',' DEL [n | n m | n * | n LAST | * | * n | * LAST | LAST]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE','2',' DESCRIBE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE','3',' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE','5',' Lists the column definitions for a table, view, or synonym,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE','6',' or the specifications for a function or procedure.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE','8',' DESC[RIBE] {[schema.]object[@connect_identifier]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT','2',' DISCONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT','3',' ----------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT','5',' Commits pending changes to the database and logs the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT','6',' user out of Oracle, but does not exit SQL*Plus.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT','7',' In SQL*Plus command line, use EXIT or QUIT to log out of Oracle');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT','8',' and return control to your computer''s operating system.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT','10',' DISC[ONNECT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT','11',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT','2',' EDIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT','3',' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT','5',' Invokes an operating system text editor on the contents of the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT','6',' specified file or on the contents of the SQL buffer. The buffer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT','7',' has no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT','9',' ED[IT] [file_name[.ext]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE','2',' EXECUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE','3',' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE','5',' Executes a single PL/SQL statement or runs a stored procedure.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE','6',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE','7',' EXEC[UTE] statement');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT','2',' EXIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT','3',' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT','5',' Commits or rolls back all pending changes, logs out of Oracle,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT','6',' terminates SQL*Plus and returns control to the operating system.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT','8',' {EXIT|QUIT} [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT','9','   [COMMIT|ROLLBACK]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET','2',' GET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET','3',' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET','5',' Loads a SQL statement or PL/SQL block from a script into the SQL buffer.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET','6',' The buffer has no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET','8',' GET [FILE] file_name[.ext] [LIST | NOLIST]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP','2',' HELP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP','3',' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP','5',' Accesses this command line help system. Enter HELP INDEX or ? INDEX');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP','6',' for a list of topics.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP','8',' You can view SQL*Plus resources at');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP','9','     http://www.oracle.com/technology/documentation/');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP','11',' ******************************************************************************');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP','12',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','2',' HISTORY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','3',' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','5',' Stores, lists, executes, or edits commands');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','6',' entered during the current SQL*Plus session.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','8',' HIST[ORY] [[[N] {R[UN] | E[DIT] | D[ELETE]}] | CLEAR | LIST]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','10',' N is the entry number listed in the history list to RUN, EDIT or DELETE.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','11',' If N is omitted then the active entry is used.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','12',' The most recently run or edited command becomes the active entry.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','13',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','14',' SET HISTORY needs to be ON to record command history.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','15',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','16',' Examples:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','17',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','18',' HIST       - Lists all entries in the history.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','19','              The active entry is indicated by an asterisk.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','20',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','21',' HIST 3 R   - Runs the 3rd entry in the history.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY','22',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST','2',' HOST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST','3',' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST','5',' Executes an operating system command without leaving SQL*Plus.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST','6',' Enter HOST without command to display an operating system prompt.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST','7',' You can then enter multiple operating system commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST','9',' HO[ST] [command]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','2','Enter Help [topic] for help.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','3',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','4',' @             COPY         PASSWORD                 SHOW');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','5',' @@            DEFINE       PAUSE                    SHUTDOWN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','6',' /             DEL          PRINT                    SPOOL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','7',' ACCEPT        DESCRIBE     PROMPT                   SQLPLUS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','8',' APPEND        DISCONNECT   QUIT                     START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','9',' ARCHIVE LOG   EDIT         RECOVER                  STARTUP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','10',' ATTRIBUTE     EXECUTE      REMARK                   STORE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','11',' BREAK         EXIT         REPFOOTER                TIMING');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','12',' BTITLE        GET          REPHEADER                TTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','13',' CHANGE        HELP         RESERVED WORDS (SQL)     UNDEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','14',' CLEAR         HISTORY      RESERVED WORDS (PL/SQL)  VARIABLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','15',' COLUMN        HOST         RUN                      WHENEVER OSERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','16',' COMPUTE       INPUT        SAVE                     WHENEVER SQLERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','17',' CONNECT       LIST         SET                      XQUERY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX','18',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT','2',' INPUT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT','3',' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT','5',' Adds one or more new lines of text after the current line in the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT','6',' SQL buffer. The buffer has no command history list and does not');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT','7',' record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT','9',' I[NPUT] [text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST','2',' LIST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST','3',' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST','5',' Lists one or more lines of the most recently executed SQL command');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST','6',' or PL/SQL block which is stored in the SQL buffer. Enter LIST with');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST','7',' no clauses to list all lines. In SQL*Plus command-line you can also');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST','8',' use ";" to list all the lines in the SQL buffer. The buffer has no');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST','9',' command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST','11',' L[IST] [n | n m | n  * | n LAST | * | * n | * LAST | LAST]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST','12',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU','2',' Menu');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU','3',' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU','5',' Enter HELP INDEX for a list of help topics.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU','6',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD','2',' PASSWORD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD','3',' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD','5',' Allows you to change a password without displaying it on an input device.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD','6',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD','7',' PASSW[ORD] [username]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE','2',' PAUSE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE','3',' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE','5',' Displays the specified text then waits for the user to press RETURN.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE','6',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE','7',' PAU[SE] [text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT','2',' PRINT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT','3',' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT','5',' Displays the current values of bind variables, or lists all bind');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT','6',' variables.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT','8',' PRINT [variable ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT','2',' PROMPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT','3',' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT','5',' Sends the specified message or a blank line to the user''s screen.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT','6',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT','7',' PRO[MPT] [text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT','2',' QUIT (Identical to EXIT)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT','3',' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT','5',' Commits or rolls back all pending changes, logs out of Oracle,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT','6',' terminates SQL*Plus and returns control to the operating system.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT','8',' {QUIT|EXIT} [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT','9','   [COMMIT|ROLLBACK]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','2',' RECOVER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','3',' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','5',' Performs media recovery on one or more tablespaces, one or more');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','6',' datafiles, or the entire database.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','8',' RECOVER {general | managed} | BEGIN BACKUP | END BACKUP}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','10',' where the general clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','11','   [AUTOMATIC] [FROM location]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','12','   { {full_database_recovery | partial_database_recovery |LOGFILE filename}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','13','   [ {TEST | ALLOW integer CORRUPTION | parallel_clause}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','14','   [TEST | ALLOW integer CORRUPTION | parallel_clause] ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','15','   |CONTINUE [DEFAULT]|CANCEL}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','16',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','17','   where the full_database_recovery clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','18','     [STANDBY] DATABASE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','19','     [{ UNTIL {CANCEL | TIME date | CHANGE integer}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','20','      | USING BACKUP CONTROLFILE}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','21','      [ UNTIL {CANCEL | TIME date | CHANGE integer}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','22','      | USING BACKUP CONTROLFILE] ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','23',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','24','   where the partial_database_recovery clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','25','     {TABLESPACE tablespace [, tablespace] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','26','      | DATAFILE filename | filenumber} [,filename | filenumber] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','27','      | STANDBY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','28','       {TABLESPACE tablespace [, tablespace] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','29','       | DATAFILE filename | filenumber} [,filename | filenumber] ...}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','30','     UNTIL [CONSISTENT WITH] CONTROLFILE }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','31',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','32',' where the parallel clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','33','   {NOPARALLEL | PARALLEL [integer]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','34',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','35',' where the managed clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','36','   MANAGED STANDBY DATABASE recover_clause | cancel_clause | finish_clause');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','37',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','38',' where the recover_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','39','   {{DISCONNECT [FROM SESSION] | {TIMEOUT integer | NOTIMEOUT} }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','40','    |{NODELAY | DEFAULT DELAY | DELAY integer} | NEXT integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','41','    |{EXPIRE integer | NO EXPIRE} | parallel_clause');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','42','    | USING CURRENT LOGFILE | UNTIL CHANGE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','43','    | THROUGH {[THREAD integer] SEQUENCE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','44','              | ALL ARCHIVELOG  | {ALL | LAST | NEXT } SWITCHOVER} }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','45','      [DISCONNECT [FROM SESSION ]  | {TIMEOUT integer | NOTIMEOUT}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','46','       | {NODELAY | DEFAULT DELAY | DELAY integer} | NEXT integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','47','       | {EXPIRE integer | NO EXPIRE} | parallel_clause');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','48','       | USING CURRENT LOGFILE | UNTIL CHANGE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','49','       | THROUGH {[THREAD integer] SEQUENCE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','50','                 | ALL ARCHIVELOG  | {ALL | LAST | NEXT } SWITCHOVER} ]...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','51',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','52',' where the cancel_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','53','   CANCEL [IMMEDIATE] [WAIT | NOWAIT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','54',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','55',' where the finish_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','56','   [DISCONNECT [FROM SESSION]] [parallel_clause]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','57','   FINISH [SKIP [STANDBY LOGFILE]] [WAIT | NOWAIT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','58',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','59',' where the parallel_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','60','   {NOPARALLEL | PARALLEL [integer] }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER','61',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK','2',' REMARK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK','3',' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK','5',' Begins a comment in a script. SQL*Plus does not interpret the comment');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK','6',' as a command.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK','8',' REM[ARK]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER','2',' REPFOOTER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER','3',' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER','5',' Places and formats a footer at the bottom of a report, or lists the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER','6',' REPFOOTER definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER','8',' REPF[OOTER] [PAGE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER','10',' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER','11','     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER','12','     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER','13','     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER','14',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER','2',' REPHEADER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER','3',' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER','5',' Places and formats a header at the top of a report, or lists the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER','6',' REPHEADER definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER','8',' REPH[EADER] [PAGE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER','10',' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER','11','     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER','12','     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER','13','     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER','14',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','2',' RESERVED WORDS (SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','3',' --------------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','5',' SQL Reserved Words have special meaning in SQL, and may not be used for');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','6',' identifier names unless enclosed in "quotes".');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','8',' An asterisk (*) indicates words are also ANSI Reserved Words.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','10',' Oracle prefixes implicitly generated schema object and subobject names');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','11',' with "SYS_". To avoid name resolution conflict, Oracle discourages you');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','12',' from prefixing your schema object and subobject names with "SYS_".');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','13',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','14',' ACCESS          DEFAULT*         INTEGER*        ONLINE          START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','15',' ADD*            DELETE*          INTERSECT*      OPTION*         SUCCESSFUL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','16',' ALL*            DESC*            INTO*           OR*             SYNONYM');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','17',' ALTER*          DISTINCT*        IS*             ORDER*          SYSDATE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','18',' AND*            DROP*            LEVEL*          PCTFREE         TABLE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','19',' ANY*            ELSE*            LIKE*           PRIOR*          THEN*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','20',' AS*             EXCLUSIVE        LOCK            PRIVILEGES*     TO*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','21',' ASC*            EXISTS           LONG            PUBLIC*         TRIGGER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','22',' AUDIT           FILE             MAXEXTENTS      RAW             UID');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','23',' BETWEEN*        FLOAT*           MINUS           RENAME          UNION*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','24',' BY*             FOR*             MLSLABEL        RESOURCE        UNIQUE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','25',' CHAR*           FROM*            MODE            REVOKE*         UPDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','26',' CHECK*          GRANT*           MODIFY          ROW             USER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','27',' CLUSTER         GROUP*           NOAUDIT         ROWID           VALIDATE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','28',' COLUMN          HAVING*          NOCOMPRESS      ROWNUM          VALUES*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','29',' COMMENT         IDENTIFIED       NOT*            ROWS*           VARCHAR*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','30',' COMPRESS        IMMEDIATE*       NOWAIT          SELECT*         VARCHAR2');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','31',' CONNECT*        IN*              NULL*           SESSION*        VIEW*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','32',' CREATE*         INCREMENT        NUMBER          SET*            WHENEVER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','33',' CURRENT*        INDEX            OF*             SHARE           WHERE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','34',' DATE*           INITIAL          OFFLINE         SIZE*           WITH*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','35',' DECIMAL*        INSERT*          ON*             SMALLINT*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)','36',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','2',' RESERVED WORDS (PL/SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','3',' -----------------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','5',' PL/SQL Reserved Words have special meaning in PL/SQL, and may not be used');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','6',' for identifier names (unless enclosed in "quotes").');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','8',' An asterisk (*) indicates words are also SQL Reserved Words.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','10',' ALL*            DESC*           JAVA            PACKAGE         SUBTYPE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','11',' ALTER*          DISTINCT*       LEVEL*          PARTITION       SUCCESSFUL*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','12',' AND*            DO              LIKE*           PCTFREE*        SUM');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','13',' ANY*            DROP*           LIMITED         PLS_INTEGER     SYNONYM*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','14',' ARRAY           ELSE*           LOCK*           POSITIVE        SYSDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','15',' AS*             ELSIF           LONG*           POSITIVEN       TABLE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','16',' ASC*            END             LOOP            PRAGMA          THEN*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','17',' AT              EXCEPTION       MAX             PRIOR*          TIME');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','18',' AUTHID          EXCLUSIVE*      MIN             PRIVATE         TIMESTAMP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','19',' AVG             EXECUTE         MINUS*          PROCEDURE       TIMEZONE_ABBR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','20',' BEGIN           EXISTS*         MINUTE          PUBLIC*         TIMEZONE_HOUR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','21',' BETWEEN*        EXIT            MLSLABEL*       RAISE           TIMEZONE_MINUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','22',' BINARY_INTEGER  EXTENDS         MOD             RANGE           TIMEZONE_REGION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','23',' BODY            EXTRACT         MODE*           RAW*            TO*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','24',' BOOLEAN         FALSE           MONTH           REAL            TRIGGER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','25',' BULK            FETCH           NATURAL         RECORD          TRUE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','26',' BY*             FLOAT*          NATURALN        REF             TYPE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','27',' CHAR*           FOR*            NEW             RELEASE         UI');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','28',' CHAR_BASE       FORALL          NEXTVAL         RETURN          UNION*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','29',' CHECK*          FROM*           NOCOPY          REVERSE         UNIQUE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','30',' CLOSE           FUNCTION        NOT*            ROLLBACK        UPDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','31',' CLUSTER*        GOTO            NOWAIT*         ROW*            USE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','32',' COALESCE        GROUP*          NULL*           ROWID*          USER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','33',' COLLECT         HAVING*         NULLIF          ROWNUM*         VALIDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','34',' COMMENT*        HEAP            NUMBER*         ROWTYPE         VALUES*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','35',' COMMIT          HOUR            NUMBER_BASE     SAVEPOINT       VARCHAR*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','36',' COMPRESS*       IF              OCIROWID        SECOND          VARCHAR2*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','37',' CONNECT*        IMMEDIATE*      OF*             SELECT*         VARIANCE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','38',' CONSTANT        IN*             ON*             SEPERATE        VIEW*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','39',' CREATE*         INDEX*          OPAQUE          SET*            WHEN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','40',' CURRENT*        INDICATOR       OPEN            SHARE*          WHENEVER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','41',' CURRVAL         INSERT*         OPERATOR        SMALLINT*       WHERE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','42',' CURSOR          INTEGER*        OPTION*         SPACE           WHILE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','43',' DATE*           INTERFACE       OR*             SQL             WITH*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','44',' DAY             INTERSECT*      ORDER*          SQLCODE         WORK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','45',' DECIMAL*        INTERVAL        ORGANIZATION    SQLERRM         WRITE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','46',' DECLARE         INTO*           OTHERS          START*          YEAR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','47',' DEFAULT*        IS*             OUT             STDDEV          ZONE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','48',' DELETE*         ISOLATION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)','49',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN','2',' RUN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN','3',' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN','5',' Lists and executes the most recently executed SQL command or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN','6',' PL/SQL block which is stored in the SQL buffer. The buffer has');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN','7',' no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN','9',' R[UN]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE','2',' SAVE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE','3',' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE','5',' Saves the contents of the SQL buffer in a script. The');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE','6',' buffer has no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE','8',' SAV[E] [FILE] file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','2',' SET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','3',' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','5',' Sets a system variable to alter the SQL*Plus environment settings');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','6',' for your current session. For example, to:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','7','     -   set the display width for data');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','8','     -   customize HTML formatting');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','9','     -   enable or disable printing of column headings');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','10','     -   set the number of lines per page');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','11',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','12',' SET system_variable value');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','13',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','14',' where system_variable and value represent one of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','15',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','16','   APPI[NFO]{OFF|ON|text}                   NEWP[AGE] {1|n|NONE}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','17','   ARRAY[SIZE] {15|n}                       NULL text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','18','   AUTO[COMMIT] {OFF|ON|IMM[EDIATE]|n}      NUMF[ORMAT] format');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','19','   AUTOP[RINT] {OFF|ON}                     NUM[WIDTH] {10|n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','20','   AUTORECOVERY {OFF|ON}                    PAGES[IZE] {14|n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','21','   AUTOT[RACE] {OFF|ON|TRACE[ONLY]}         PAU[SE] {OFF|ON|text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','22','     [EXP[LAIN]] [STAT[ISTICS]]             RECSEP {WR[APPED]|EA[CH]|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','23','   BLO[CKTERMINATOR] {.|c|ON|OFF}           RECSEPCHAR {_|c}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','24','   CMDS[EP] {;|c|OFF|ON}                    ROWPREF[ETCH] {n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','25','   COLINVI[SIBLE] {OFF|ON}                  SERVEROUT[PUT] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','26','   COLSEP {_|text}                            [SIZE {n | UNLIMITED}]|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','27','   CON[CAT] {.|c|ON|OFF}                      [FOR[MAT]  {WRA[PPED]|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','28','   COPYC[OMMIT] {0|n}                          WOR[D_WRAPPED]|TRU[NCATED]}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','29','   COPYTYPECHECK {ON|OFF}                   SHIFT[INOUT] {VIS[IBLE] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','30','   DEF[INE] {&|c|ON|OFF}                      INV[ISIBLE]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','31','   DESCRIBE [DEPTH {1|n|ALL}]               SHOW[MODE] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','32','     [LINENUM {OFF|ON}] [INDENT {OFF|ON}]   SQLBL[ANKLINES] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','33','   ECHO {OFF|ON}                            SQLC[ASE] {MIX[ED] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','34','   EDITF[ILE] file_name[.ext]                 LO[WER] | UP[PER]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','35','   EMB[EDDED] {OFF|ON}                      SQLCO[NTINUE] {> | text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','36','   ERRORL[OGGING] {ON|OFF}                  SQLN[UMBER] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','37','     [TABLE [schema.]tablename]             SQLPLUSCOMPAT[IBILITY] {x.y[.z]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','38','     [TRUNCATE] [IDENTIFIER identifier]     SQLPRE[FIX] {#|c}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','39','   ESC[APE] {\|c|OFF|ON}                    SQLP[ROMPT] {SQL>|text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','40','   ESCCHAR {@|?|%|$|OFF}                    SQLT[ERMINATOR] {;|c|ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','41','   EXITC[OMMIT] {ON|OFF}                    STATEMENTC[ACHE] {n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','42','   FEED[BACK] {6|n|ON|OFF|ONLY}[SQL_ID]     SUF[FIX] {SQL|text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','43','   FLAGGER {OFF|ENTRY|INTERMED[IATE]|FULL}  TAB {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','44','   FLU[SH] {ON|OFF}                         TERM[OUT] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','45','   HEA[DING] {ON|OFF}                       TI[ME] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','46','   HEADS[EP] {||c|ON|OFF}                   TIMI[NG] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','47','   HIST[ORY] {ON|OFF|N}                     TRIM[OUT] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','48','   INSTANCE [instance_path|LOCAL]           TRIMS[POOL] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','49','   LIN[ESIZE] {80|n|WINDOW}                 UND[ERLINE] {-|c|ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','50','   LOBOF[FSET] {1|n}                        VER[IFY] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','51','   LOBPREF[ETCH] {n}                        WRA[P] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','52','   LOGSOURCE [pathname]                     XQUERY {BASEURI text|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','53','   LONG {80|n}                                ORDERING{UNORDERED|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','54','   LONGC[HUNKSIZE] {80|n}                     ORDERED|DEFAULT}|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','55','   MARK[UP] {HTML html_option|CSV csv_option} NODE{BYVALUE|BYREFERENCE|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','56','     html_option;                             DEFAULT}|CONTEXT text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','57','       {ON|OFF} [HEAD text] [BODY text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','58','       [TABLE {ON|OFF}] [ENTMAP {ON|OFF}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','59','       [SPOOL {ON|OFF}] [PRE[FORMAT] {ON|OFF}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','60','     csv_option:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','61','       {ON|OFF} [DELIM[ITER] {c}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','62','       [QUOTE {ON|OFF}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET','63',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','2',' SHOW');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','3',' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','5',' Shows the value of a SQL*Plus system variable, or the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','6',' SQL*Plus environment. SHOW SGA requires a DBA privileged login.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','8',' SHO[W] option');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','10',' where option represents one of the following terms or clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','11','     system_variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','12','     ALL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','13','     BTI[TLE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','14','     CON_ID');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','15','     CON_NAME');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','16','     EDITION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','17','     ERR[ORS] [{ANALYTIC VIEW | ATTRIBUTE DIMENSION | HIERARCHY | FUNCTION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','18','        | PROCEDURE | PACKAGE | PACKAGE BODY | TRIGGER | VIEW | TYPE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','19','        | TYPE BODY | DIMENSION | JAVA CLASS} [schema.]name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','20','     LNO');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','21','     PARAMETERS [parameter_name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','22','     PDBS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','23','     PNO');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','24','     RECYC[LEBIN] [original_name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','25','     REL[EASE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','26','     REPF[OOTER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','27','     REPH[EADER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','28','     SGA');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','29','     SPOO[L]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','30','     SPPARAMETERS [parameter_name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','31','     SQLCODE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','32','     TTI[TLE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','33','     USER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW','34',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN','2',' SHUTDOWN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN','3',' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN','5',' Shuts down a currently running Oracle Database instance, optionally');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN','6',' closing and dismounting a database.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN','8',' SHUTDOWN [ABORT|IMMEDIATE|NORMAL|TRANSACTIONAL [LOCAL]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL','2',' SPOOL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL','3',' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL','5',' Stores query results in a file, or optionally sends the file to a printer.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL','6',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL','7',' SPO[OL] [file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]] | OFF | OUT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','2',' SQLPLUS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','3',' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','5',' Starts SQL*Plus from the operating system prompt.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','6',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','7',' SQLPLUS [ [option] [logon|/NOLOG] [start] ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','9',' where option has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','10','     -H[ELP]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','11','     | -V[ERSION]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','12','     | [[-C[OMPATIBILITY] x.y[.z]] [-L[OGON]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','13','        [-M[ARKUP] markup_option] [-NOLOGINTIME] [-R[ESTRICT] {1|2|3}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','14','	[-S[ILENT]] ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','15',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','16',' and where markup_option has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','17','     {HTML html_options|CSV csv_options}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','18','     See SET MARKUP command for detailed HTML and CSV options');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','19',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','20',' and where logon has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','21','     {username[/password][@connect_identifier] | /}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','22','     [AS {SYSASM|SYSBACKUP|SYSDBA|SYSDG|SYSOPER|SYSRAC|SYSKM}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','23','     [edition=value]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','24',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','25',' and where start has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','26','     @{url|filename[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS','27',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START','2',' START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START','3',' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START','5',' Runs the SQL*Plus statements in the specified script. The script can be');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START','6',' called from the local file system or a web server.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START','8',' STA[RT] {url|file_name[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START','10',' where url supports HTTP and FTP protocols in the form:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START','11',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START','12','    http://host.domain/script.sql');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START','13',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','2',' STARTUP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','3',' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','5',' Starts an Oracle instance with several options, including mounting,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','6',' and opening a database.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','8',' STARTUP db_options | cdb_options | upgrade_options');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','10',' where db_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','11','    [FORCE] [RESTRICT] [PFILE=filename] [QUIET] [ MOUNT [dbname] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','12','    [ OPEN [open_db_options] [dbname] ] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','13','    NOMOUNT ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','14',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','15','    where open_db_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','16','       READ {ONLY | WRITE [RECOVER]} | RECOVER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','17',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','18',' where cdb_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','19','    root_connection_options | pdb_connection_options');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','20',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','21',' where root_connection_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','22','    PLUGGABLE DATABASE pdbname');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','23','    [FORCE] [RESTRICT] | [OPEN [open_pdb_options]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','24',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','25',' where pdb_connection_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','26','    [FORCE] [RESTRICT] | [OPEN [open_pdb_options]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','27',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','28','    where open_pdb_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','29','       READ WRITE | READ ONLY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','30',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','31',' and where upgrade_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','32','    [PFILE=filename] {UPGRADE | DOWNGRADE} [QUIET]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP','33',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE','2',' STORE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE','3',' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE','5',' Saves attributes of the current SQL*Plus environment in a script.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE','6',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE','7',' STORE {SET} file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING','2',' TIMING');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING','3',' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING','5',' Records timing data for an elapsed time period, lists the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING','6',' timer''s name and timing data, or lists the number of active timers.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING','8',' TIMI[NG] [START text|SHOW|STOP]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING','9',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','2',' TTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','3',' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','5',' Places and formats a title at the top of each report page.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','6',' Enter TTITLE with no clause to list its current definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','8',' The old form of TTITLE is used if only a single word or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','9',' a string in quotes follows the TTITLE command.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','11',' TTI[TLE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','12',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','13',' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','14',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','15','     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','16','     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','17','     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE','18',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE','2',' UNDEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE','3',' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE','5',' Deletes one or more substitution variables that you defined either');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE','6',' explicitly (with the DEFINE command), or implicitly (with a START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE','7',' command argument).');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE','9',' UNDEF[INE] variable ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','2',' VARIABLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','3',' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','5',' Declares a bind variable that can be referenced in PL/SQL, or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','6',' lists the current display characteristics for a single variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','7',' or all variables.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','9',' VAR[IABLE] [<variable> [type][=value]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','11',' where type represents one of the following:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','12',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','13','     NUMBER         CHAR          CHAR (n [CHAR|BYTE])');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','14','     NCHAR          NCHAR (n)     VARCHAR2 (n [CHAR|BYTE])');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','15','     NVARCHAR2 (n)  CLOB          NCLOB');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','16','     REFCURSOR      BINARY_FLOAT  BINARY_DOUBLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','17','     BOOLEAN        VECTOR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','18',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','19',' One can assign value to a variable for input with the new syntax');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','20',' Example:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','21','   VARIABLE tmp_var VAHRCHAR2(10)=Smith');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','22','   or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','23','   VARIABLE tmp_var VAHRCHAR2(10)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','24','   VARIABLE tmp_var=Smith');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','25','   EXECUTE DBMS_OUTPUT.PUT_LINE(:tmp_var)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE','26',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR','2',' WHENEVER OSERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR','3',' ----------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR','5',' Performs the specified action (exits SQL*Plus by default) if an');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR','6',' operating system error occurs (such as a file writing error).');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR','8',' WHENEVER OSERROR {EXIT [SUCCESS|FAILURE|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR','9','                   [COMMIT|ROLLBACK] | CONTINUE [COMMIT|ROLLBACK|NONE]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR','2',' WHENEVER SQLERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR','3',' -----------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR','5',' Performs the specified action (exits SQL*Plus by default) if a');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR','6',' SQL command or PL/SQL block generates an error.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR','7',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR','8',' WHENEVER SQLERROR {EXIT [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR','9','                    [COMMIT|ROLLBACK] | CONTINUE [COMMIT|ROLLBACK|NONE]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY','2',' XQUERY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY','3',' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY','4',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY','5',' Performs an XQuery 1.0 query on a specified database. Attempting to use');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY','6',' XQUERY on a database earlier than Oracle Database 10g (Release 2) generates');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY','7',' an error.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY','8',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY','9',' XQUERY xquery_statement');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY','10',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','1',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','2',' Help is available on the following topics:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','3',null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','11','/');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','12','@');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','13','@@');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','14','ACCEPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','15','APPEND');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','16','ARCHIVE LOG');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','17','ATTRIBUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','18','BREAK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','19','BTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','20','CHANGE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','21','CLEAR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','22','COLUMN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','23','COMPUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','24','CONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','25','COPY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','26','DEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','27','DEL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','28','DESCRIBE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','29','DISCONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','30','EDIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','31','EXECUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','32','EXIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','33','GET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','34','HELP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','35','HISTORY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','36','HOST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','37','INDEX');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','38','INPUT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','39','LIST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','40','MENU');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','41','PASSWORD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','42','PAUSE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','43','PRINT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','44','PROMPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','45','QUIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','46','RECOVER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','47','REMARK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','48','REPFOOTER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','49','REPHEADER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','50','RESERVED WORDS (PL/SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','51','RESERVED WORDS (SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','52','RUN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','53','SAVE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','54','SET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','55','SHOW');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','56','SHUTDOWN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','57','SPOOL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','58','SQLPLUS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','59','START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','60','STARTUP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','61','STORE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','62','TIMING');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','63','TOPICS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','64','TTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','65','UNDEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','66','VARIABLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','67','WHENEVER OSERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','68','WHENEVER SQLERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS','69','XQUERY');
REM INSERTING into SYSTEM.MVIEW$_ADV_AJG
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_BASETABLE
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_CLIQUE
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_ELIGIBLE
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_EXCEPTIONS
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_FILTER
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_FILTERINSTANCE
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_FJG
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_GC
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_INFO
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_JOURNAL
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_LEVEL
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_LOG
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_OUTPUT
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_PARAMETERS
SET DEFINE OFF;
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_EXACT_DELETE','0',null,null,'0,02');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_EXACT_BUCKETS','0',null,null,'1000');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_PARTIAL_DELETE','0',null,null,'0,02');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_PARTIAL_BUCKETS','0',null,null,'1000');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_AJG_DELETE','0',null,null,'0,02');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_AJG_BUCKETS','0',null,null,'100');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_FJG_DELETE','0',null,null,'0,02');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_GC_DELETE','0',null,null,'0,02');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_MEA_DELETE','0',null,null,'0,05');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_TRACE_LEVEL','0',null,null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_REWRITE_NRF','0',null,null,'10');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.console_output','1','True',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.wip_interval','0',null,null,'250');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.commit_interval','0',null,null,'100');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.sql_exclusions','1','SYSTEM.%',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.pretty','1','True',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.lcase_names','1','True',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.lcase_keywords','1','False',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.add_alias','1','False',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.ignore_ambig','1','True',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.fixup_alias','1','False',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.optimize','1','True',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.ignore_columns','1','True',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.fixup_schema','1','False',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.remove_optional_keywords','1','False',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.dump_tree','1','True',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.debug_flags','1',null,null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.datetime_mask','1','dd/MM/yyyy HH:mm',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MIN_CLQ_MF_RATIO','0',null,null,'0,05');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MIN_SUM_BC_RATIO','0',null,null,'0,05');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MAX_GCS','0',null,null,'1000');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_PCT_COMPL_POLL_INTL','0',null,null,'10');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_TRACE_LEVEL','0',null,null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_AEP_MAX_LAT_SIZE','0',null,null,'1024');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_AEP_MAX_FACT_TABLES','0',null,null,'10');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color1','1','#FFFFDE',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color2','1','#336699',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color3','1','#FFCC60',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color4','1','white',null,'0');
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.include_unused','1','False',null,'0');
REM INSERTING into SYSTEM.MVIEW$_ADV_PLAN
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_PRETTY
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_ROLLUP
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_SQLDEPEND
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_TEMP
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_WORKLOAD
SET DEFINE OFF;
REM INSERTING into SYSTEM.OL$
SET DEFINE OFF;
REM INSERTING into SYSTEM.OL$HINTS
SET DEFINE OFF;
REM INSERTING into SYSTEM.OL$NODES
SET DEFINE OFF;
REM INSERTING into SYSTEM.PAGO
SET DEFINE OFF;
Insert into SYSTEM.PAGO (MONTOPAGO,METODOPAGO,FECHAPAGO,IDPAGO,IDBOLETASERVICIO) values ('413','Transferencia',to_date('06/06/25','DD/MM/RR'),'1','1');
Insert into SYSTEM.PAGO (MONTOPAGO,METODOPAGO,FECHAPAGO,IDPAGO,IDBOLETASERVICIO) values ('330,4','Efectivo',to_date('08/06/25','DD/MM/RR'),'2','2');
Insert into SYSTEM.PAGO (MONTOPAGO,METODOPAGO,FECHAPAGO,IDPAGO,IDBOLETASERVICIO) values ('542,8','Yape',to_date('09/06/25','DD/MM/RR'),'3','3');
Insert into SYSTEM.PAGO (MONTOPAGO,METODOPAGO,FECHAPAGO,IDPAGO,IDBOLETASERVICIO) values ('236','Tarjeta',to_date('10/06/25','DD/MM/RR'),'4','4');
Insert into SYSTEM.PAGO (MONTOPAGO,METODOPAGO,FECHAPAGO,IDPAGO,IDBOLETASERVICIO) values ('495,6','Transferencia',to_date('11/06/25','DD/MM/RR'),'5','5');
REM INSERTING into SYSTEM.REDO_DB
SET DEFINE OFF;
Insert into SYSTEM.REDO_DB (DBID,GLOBAL_DBNAME,DBUNAME,VERSION,THREAD#,RESETLOGS_SCN_BAS,RESETLOGS_SCN_WRP,RESETLOGS_TIME,PRESETLOGS_SCN_BAS,PRESETLOGS_SCN_WRP,PRESETLOGS_TIME,SEQNO_RCV_CUR,SEQNO_RCV_LO,SEQNO_RCV_HI,SEQNO_DONE_CUR,SEQNO_DONE_LO,SEQNO_DONE_HI,GAP_SEQNO,GAP_RET,GAP_DONE,APPLY_SEQNO,APPLY_DONE,PURGE_DONE,HAS_CHILD,ERROR1,STATUS,CREATE_DATE,TS1,TS2,GAP_NEXT_SCN,GAP_NEXT_TIME,CURSCN_TIME,RESETLOGS_SCN,PRESETLOGS_SCN,GAP_RET2,CURLOG,ENDIAN,ENQIDX,SPARE4,SPARE5,SPARE6,SPARE7,TS3,CURBLKNO,SPARE8,SPARE9,SPARE10,SPARE11,SPARE12,TENANT_KEY) values ('0',null,null,null,'0','0','0','2','0','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',null,'0','0','0','0','0','0','0','0','0','0','0','0',null,null,null,'0','0','0','0','0','0','0','0');
REM INSERTING into SYSTEM.REDO_LOG
SET DEFINE OFF;
REM INSERTING into SYSTEM.SCHEDULER_JOB_ARGS_TBL
SET DEFINE OFF;
REM INSERTING into SYSTEM.SCHEDULER_PROGRAM_ARGS_TBL
SET DEFINE OFF;
REM INSERTING into SYSTEM.SERVICIO_CONDUCTOR_
SET DEFINE OFF;
Insert into SYSTEM.SERVICIO_CONDUCTOR_ (OBSERVACION,IDSERVICIOTRANSPORTE,IDCONDUCTOR) values ('OK','1','1');
Insert into SYSTEM.SERVICIO_CONDUCTOR_ (OBSERVACION,IDSERVICIOTRANSPORTE,IDCONDUCTOR) values ('OK','2','2');
Insert into SYSTEM.SERVICIO_CONDUCTOR_ (OBSERVACION,IDSERVICIOTRANSPORTE,IDCONDUCTOR) values ('OK','3','3');
Insert into SYSTEM.SERVICIO_CONDUCTOR_ (OBSERVACION,IDSERVICIOTRANSPORTE,IDCONDUCTOR) values ('OK','4','4');
Insert into SYSTEM.SERVICIO_CONDUCTOR_ (OBSERVACION,IDSERVICIOTRANSPORTE,IDCONDUCTOR) values ('OK','5','5');
REM INSERTING into SYSTEM.SERVICIOTRANSPORTE
SET DEFINE OFF;
Insert into SYSTEM.SERVICIOTRANSPORTE (FECHAINICIO,FECHAENTREGA,PESO,ORIGEN,DESTINO,IDSERVICIOTRANSPORTE,IDEMPRESA,IDUSUARIO) values (to_date('01/06/25','DD/MM/RR'),to_date('05/06/25','DD/MM/RR'),'450,5','Lima','Arequipa','1','1','1');
Insert into SYSTEM.SERVICIOTRANSPORTE (FECHAINICIO,FECHAENTREGA,PESO,ORIGEN,DESTINO,IDSERVICIOTRANSPORTE,IDEMPRESA,IDUSUARIO) values (to_date('02/06/25','DD/MM/RR'),to_date('07/06/25','DD/MM/RR'),'300','Trujillo','Cusco','2','2','2');
Insert into SYSTEM.SERVICIOTRANSPORTE (FECHAINICIO,FECHAENTREGA,PESO,ORIGEN,DESTINO,IDSERVICIOTRANSPORTE,IDEMPRESA,IDUSUARIO) values (to_date('03/06/25','DD/MM/RR'),to_date('06/06/25','DD/MM/RR'),'550,3','Piura','Iquitos','3','3','3');
Insert into SYSTEM.SERVICIOTRANSPORTE (FECHAINICIO,FECHAENTREGA,PESO,ORIGEN,DESTINO,IDSERVICIOTRANSPORTE,IDEMPRESA,IDUSUARIO) values (to_date('04/06/25','DD/MM/RR'),to_date('08/06/25','DD/MM/RR'),'270','Chiclayo','Lima','4','4','1');
Insert into SYSTEM.SERVICIOTRANSPORTE (FECHAINICIO,FECHAENTREGA,PESO,ORIGEN,DESTINO,IDSERVICIOTRANSPORTE,IDEMPRESA,IDUSUARIO) values (to_date('05/06/25','DD/MM/RR'),to_date('09/06/25','DD/MM/RR'),'500,8','Tacna','Puno','5','5','2');
REM INSERTING into SYSTEM.SQLPLUS_PRODUCT_PROFILE
SET DEFINE OFF;
REM INSERTING into SYSTEM.USUARIO
SET DEFINE OFF;
Insert into SYSTEM.USUARIO (IDUSUARIO,NOMUSUARIO,TELUSUARIO,CORREOUSUARIO) values ('1','César Martínez','924112233','cesar.mtz@transgali.com');
Insert into SYSTEM.USUARIO (IDUSUARIO,NOMUSUARIO,TELUSUARIO,CORREOUSUARIO) values ('2','Lucía Torres','945667788','lucia.torres@transgali.com');
Insert into SYSTEM.USUARIO (IDUSUARIO,NOMUSUARIO,TELUSUARIO,CORREOUSUARIO) values ('3','Marco León','987123456','marco.leon@transgali.com');
REM INSERTING into SYSTEM.VEHICULO
SET DEFINE OFF;
Insert into SYSTEM.VEHICULO (TIPOUNIDAD,PLACATRACTO,PLACACARRETA,IDVEHICULO,IDEMPRESA) values ('Camión de carga','AB123C','XY789Z','1','1');
Insert into SYSTEM.VEHICULO (TIPOUNIDAD,PLACATRACTO,PLACACARRETA,IDVEHICULO,IDEMPRESA) values ('Furgón','CD456E','ZW456X','2','2');
Insert into SYSTEM.VEHICULO (TIPOUNIDAD,PLACATRACTO,PLACACARRETA,IDVEHICULO,IDEMPRESA) values ('Tráiler','EF789G','UV123W','3','3');
Insert into SYSTEM.VEHICULO (TIPOUNIDAD,PLACATRACTO,PLACACARRETA,IDVEHICULO,IDEMPRESA) values ('Camión cerrado','GH012I','TS345R','4','4');
Insert into SYSTEM.VEHICULO (TIPOUNIDAD,PLACATRACTO,PLACACARRETA,IDVEHICULO,IDEMPRESA) values ('Carreta plana','IJ345K','QR567P','5','5');
