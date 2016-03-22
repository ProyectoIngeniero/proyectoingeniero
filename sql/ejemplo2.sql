create table ave(
	cod_ave smallint not null,
	nombre varchar(30) not null,
	nom_cientifico varchar(30),
	clase varchar(10),
	migratoria bit)

create table arbol(
	cod_arbol smallint not null,
	nombre varchar(30) not null,
	tipo_hoja varchar(10))

create table region(
	cod_region smallint not null,
	desc_region varchar(30) not null)

create table ave_arbol(
	cod_ave smallint not null,
	cod_arbol smallint  not null)

create table arbol_region(
	cod_arbol smallint not null,
	cod_region smallint not null)
	
alter table region add constraint clave_re primary key(cod_region)
alter table ave add constraint clave_av primary key (cod_ave)
alter table arbol add constraint  clave_ab primary key (cod_arbol)
alter table ave_arbol add  constraint  clave_aa primary  key (cod_ave, cod_arbol)
alter table arbol_region add constraint clave_ar primary key (cod_arbol, cod_region)
alter table ave add observaciones text null




