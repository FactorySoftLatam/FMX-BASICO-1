# Directorio telefónico (FMX Delphi)
Se requiere desarrollar un directorio telefónico que contenga los números de teléfono fijo, extensión, número celular y cargo de los trabajadores de la empresa, esto con la finalidad de compartirlo internamente entre los empleados. 

# Recursos

1. [Delphi Community Edition](https://www.embarcadero.com/es/products/delphi/starter). 
2. [SQL Lite](https://www.sqlite.org/download.html)
3. [TortoiseGit](https://tortoisegit.org/download/)
4. [DBeaver Community](https://dbeaver.io/download/)

## TortoiseGit
TortoiseGit es una interfaz de shell de Windows para Git y se basa en TortoiseSVN. Es de código abierto y se puede construir completamente con software disponible gratuitamente.  
Dado que no es una integración para un IDE específico como Visual Studio, Eclipse u otros, puede usarlo con las herramientas de desarrollo que desee y con cualquier tipo de archivo. La interacción principal con TortoiseGit será utilizando el menú contextual del explorador de Windows.  
TortoiseGit lo apoya con tareas regulares, como confirmar, mostrar registros, diferenciar dos versiones, crear ramas y etiquetas, crear parches, etc. (consulte nuestras capturas de pantalla o documentación).  
Se desarrolla bajo la GPL. Lo que significa que es completamente gratuito para cualquier persona, incluso en un entorno comercial, sin ninguna restricción. El código fuente también está disponible gratuitamente, por lo que incluso puede desarrollar su propia versión si lo desea.   

## Delphi Community Edition
Delphi Community Edition, que se comparte gratuitamente con nuestra comunidad de desarrolladores freelance, empresas emergentes, estudiantes y organizaciones sin fines de lucro, es un IDE con todas las características para crear aplicaciones iOS, Android, Windows y macOS a partir de un código fuente Delphi (licencia de uso comercial limitado). Delphi Community Edition incluye un editor de código, potentes herramientas de depuración, acceso integrado a bases de datos locales populares con datos en tiempo real en tiempo de diseño, funcionalidad Bluetooth y de IoT y un diseñador visual de UI con soporte para diseño de píxel perfecto y específico para la plataforma.

## SQL Lite
SQLite se ha utilizado con gran éxito como formato de archivo en disco para aplicaciones de escritorio como sistemas de control de versiones, herramientas de análisis financiero, salas de catalogación y edición de medios, CAD paquetes, programas de mantenimiento de registros, etc. Lo tradicional La operación File/Open llama a sqlite3_open() para adjuntarlas a la base de datos archivo. Las actualizaciones se realizan automáticamente a medida que se revisa el contenido de la aplicación por lo que la opción de menú Archivo/Guardar se vuelve superflua. El archivo/Save_As La opción de menú se puede implementar utilizando la API de copia de seguridad.

## DBeaver Community
Herramienta de base de datos multiplataforma gratuita para desarrolladores, administradores de bases de datos, analistas y todas las personas que necesitan trabajar con bases de datos. Soporta todas las bases de datos populares: MySQL, PostgreSQL, SQLite, Oracle, DB2, SQL Server, Sybase, MS Access, Teradata, Firebird, Apache Hive, Phoenix, Presto, etc.



# Base de datos y Tablas

##Base de datos: 
 Archivo dbdirectorio.db (Carpeta Data)

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

	 
# 
	 

