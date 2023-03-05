-- roles definition
DROP TABLE if exists roles;
CREATE TABLE roles (
	rol_nid INTEGER PRIMARY KEY ,
	rol_cnombre TEXT(100) not null	
);

-- usuarios definition
DROP TABLE  if exists uusarios; 
CREATE TABLE usuarios (
	usu_nid INTEGER PRIMARY KEY AUTOINCREMENT,
	usu_cnombre TEXT(100) not null,
	usu_ccargo TEXT(100) not null,
	usu_cnum_celular TEXT(50),
	usu_cnum_tele_fijo TEXT(50),
	usu_cnum_extension TEXT(10),
	usu_nperfil integer
, usu_cestado TEXT(10), usu_cusuario TEXT(100), usu_cpassword TEXT(100));

CREATE UNIQUE INDEX usuarios_usu_cusuario_IDX ON usuarios (usu_cusuario);

-- cargos definition
DROP TABLE if exists cargos;
CREATE TABLE cargos (
	car_nid INTEGER PRIMARY KEY AUTOINCREMENT,
	car_cnombre TEXT
);

CREATE UNIQUE INDEX cargos_car_cnombre_IDX ON cargos (car_cnombre);

-- estados definition
DROP TABLE if exists estados;
-- estados definition

CREATE TABLE estados (
	est_nid INTEGER  PRIMARY KEY,
	est_cestado TEXT(10) not null
);

CREATE UNIQUE INDEX estados_est_cestado_IDX ON estados (est_cestado);


SELECT car_nid, CAST(car_cnombre AS TEXT(100)) AS car_cnombre
FROM cargos;

SELECT *
FROM estados e;
 
SELECT *
FROM roles r ;


SELECT *
FROM usuarios;



