# Directorio telefónico (FMX Delphi)
Se requiere desarrollar un directorio telefónico que contenga los números de teléfono fijo, extensión, número celular y cargo de los trabajadores de la empresa, esto con la finalidad de compartirlo internamente entre los empleados. 

# Recursos

1. [Delphi Community Edition](https://www.embarcadero.com/es/products/delphi/starter). 
2. [SQL Lite](https://www.sqlite.org/download.html)
3. [TortoiseGit](https://tortoisegit.org/download/)

# Base de datos y Tablas

## Roles definition  
DROP TABLE if exists roles;  
CREATE TABLE roles (   
	rol_nid INTEGER PRIMARY KEY ,  
	rol_cnombre TEXT(100) not null	 
);   
  
 ## Usuarios definition  
DROP TABLE  if exists uusarios;  
CREATE TABLE usuarios (    
	usu_nid INTEGER PRIMARY KEY AUTOINCREMENT,  
	usu_cnombre TEXT(100) not null,  
	usu_ccargo TEXT(100) not null,  
	usu_cnum_celular TEXT(50),  
	usu_cnum_tele_fijo TEXT(50),  
	usu_cnum_extension TEXT(10),  
	usu_nperfil integer,   
	usu_cestado TEXT(10),  
    usu_cusuario TEXT(100),  
	usu_cpassword TEXT(100));    
CREATE UNIQUE INDEX usuarios_usu_cusuario_IDX ON usuarios (usu_cusuario);  
  
## Cargos definition  
DROP TABLE if exists cargos;  
CREATE TABLE cargos (  
	car_nid INTEGER PRIMARY KEY AUTOINCREMENT,  
	car_cnombre TEXT  
);  
CREATE UNIQUE INDEX cargos_car_cnombre_IDX ON cargos (car_cnombre);  
  
## Estados definition  
DROP TABLE if exists estados;  
CREATE TABLE estados (  
	est_nid INTEGER  PRIMARY KEY,  
	est_cestado TEXT(10) not null  
);  
CREATE UNIQUE INDEX estados_est_cestado_IDX ON estados (est_cestado);  

# Datos Iniciales

## Cargos
INSERT INTO cargos (car_cnombre) VALUES  
	 ('GERENTE'),  
	 ('SECRETARIA GENERAL'),  
	 ('PROFESIONAL UNIVERSITARIO'),  
	 ('ANALISTA DE SISTEMAS'),  
	 ('AUXILIAR ACABADOS ');  

## Estados
INSERT INTO estados (est_nid,est_cestado) VALUES  
	 (1,'HABILITADO'),  
	 (2,'RETIRADO');  

## Roles
INSERT INTO roles (rol_nid,rol_cnombre) VALUES  
	 (1,'ADMINISTRADOR'),  
	 (2,'USUARIO');  
	 
## Usuarios
INSERT INTO usuarios (usu_cnombre,usu_ccargo,usu_cnum_celular,usu_cnum_tele_fijo,  
usu_cnum_extension, usu_nperfil,usu_cestado,usu_cusuario,usu_cpassword) VALUES  
	 ('JUAN LOZANO FAJARDO','GERENTE','3115148587','254878','1245',  
		2,'HABILITADO','juan.lozano','123456'),  
	 ('JUANA DE ARCOS','SECRETARIA GENERAL','3158295800','25645895','2541',  
	 2,'RETIRADO','juana.arcos','654321');  

	 
	 

	 

