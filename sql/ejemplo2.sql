create database ornitologia

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

create ave arbol(
	cod_ave smallint not null,
	cod_arbol smallint  not null)

create arbol_region(
	cod_arbol smallint not null,
	cod_region smallint not null)

alter table ave add constraint clave_av primary key (cod_ave)
alter table arbol add constraint  calve_ab primary key (cod_region)
alter table ave_arbol add  constraint  clave_aa primary  key (cod_ave, cod_arbol)
alter table arbol_region add constraint clave_ar primary key (cod_arbol, cod_region)

alter table ave add observaciones text null

create  view migratorias as
select nombre  from ave  where migratoria = 1

insert into ave(cod_ave, nombre, nom_cientifico, clase, migratoria, observaciones)
values(1, 'Flamenco', '', 'Zancuda', 1, 'Migran en grupo hacia lugares cálidos')
insert into ave(cod_ave, nombre, nom_cientifico, clase, migratoria, observaciones)
values(2, 'Pato salvaje', '', 'Palmipedo', 0, '')
insert into ave(cod_ave, nombre, nom_cientifico, clase, migratoria, observaciones)
values(3, 'mirlo Blanco', '', '', 1, 'Emite un sonido muy peculiar')
insert into ave(cod_ave, nombre, nom_cientifico, clase, migratoria, observaciones)
values(4, 'Golondrina', 'Golondrina común', '', 1, 'Famosa por los versos  de Becquer')

insert into arbol(cod_arbol, nombre, tipo_hoja)
values(1, 'Encina', 'Caduca')
insert into arbol(cod_arbol, nombre, tipo_hoja)
values(2, 'Roble', 'Perenne')
insert into arbol(cod_arbol, nombre, tipo_hoja)
values(3, 'Naranjo', 'Caduca')
insert into arbol(cod_arbol, nombre, tipo_hoja)
values(4, 'Pino', 'Perenne')

insert into region(cod_region, desc_region)
values(1, 'Centro')
insert into region(cod_region, desc_region)
values(2, 'Sur')
insert into region(cod_region, desc_region)
values(3, 'Nor-noreoeste')
insert into region(cod_region, desc_region)
values(4, 'Pirineos')
insert into region(cod_region, desc_region)
values(5, 'Levante')

insert into arbol_region(cod_arbol, cod_region)
values(4, 1)
insert into arbol_region(cod_arbol, cod_region)
values(4,3)
insert into arbol_region(cod_arbol, cod_region)
values(4, 4)
insert into arbol_region(cod_arbol, cod_region)
values(3, 5)
insert into arbol_region(cod_arbol, cod_region)
values(1, 1)
insert into arbol_region(cod_arbol, cod_region)
values(1, 2)
insert into arbol_region(cod_arbol, cod_region)
values(1, 3)
