--select *
--from ComunidadAutonoma

--select *
--from Provincia

--select *
--from Comercial

--select Cli_Nombre, Cli_Apellidos
--from Cliente

--select *
--from Oferta
--where Oferta.OF_Transaccion = 'v'

--select *
--from Oferta
--where Oferta.OF_Precio >= 100 and Oferta.OF_Precio <= 2000

--select *
--from Oferta
--where Oferta.OF_Precio between 100 and 2000
--Order by Oferta.OF_Precio

--select OF_Direccion, Prv_Nombre
--from Oferta
--		inner join Provincia on Oferta.Prv_ID = Provincia.Prv_ID

--select OF_Direccion, Prv_Nombre, Cliente.Cli_NIF
--from Oferta
--		inner join Provincia on Oferta.Prv_ID = Provincia.Prv_ID
--		Left outer join Cliente on Oferta.Cli_NIF = Cliente.Cli_NIF
--where Cliente.Cli_NIF is null

--select *
--from Oferta
--		inner join Provincia on Oferta.Prv_ID = Provincia.Prv_ID and Provincia.Prv_Nombre = 'Madrid'
--		inner join TipoBien on Oferta.TB_ID = TipoBien.TB_ID and TipoBien.TB_Nombre = 'Piso'
--where Oferta.OF_transaccion = 'A'

--create view dbo.vInmuebles as
--select Oferta.OF_transaccion, Oferta.OF_Direccion,
--	   Provincia.Prv_Nombre, TipoBien.TB_Nombre
--from Oferta 
--	   inner join Provincia on Oferta.Prv_ID = Provincia.Prv_ID 
--	   inner join TipoBien on Oferta.TB_ID = TipoBien.TB_ID

--select *
--from vInmuebles
--WHERE Of_Transaccion = 'A' and TB_Nombre = 'Piso' and Prv_Nombre = 'Madrid'

--select OF_Precio
--from OfertaTransporte 
--	inner join Oferta on OfertaTransporte.Of_ID = Oferta.OF_ID
--	inner join Transporte on OfertaTransporte.Tr_ID = Transporte.Tr_ID
--	inner join TipoTransporte on Transporte.TT_ID = TipoTransporte.TT_ID
--			and (TipoTransporte.TT_Nombre = 'Metro'
--				    or Tipotransporte.TT_Nombre = 'Cercanias')

--select Cliente.Cli_Nombre
--from Cliente
--		left outer join Oferta on Oferta.Cli_NIF = Cliente.Cli_NIF
--where Oferta.Cli_NIF is null

--select Cliente.Cli_NIF
--from Cliente
--where Cli_NIF not in (select Cli_NIF from Oferta)

--select top 1 OF_Direccion, Of_Precio
--from Oferta
--order by OF_Precio desc

--select max(OF_Precio)
--from Oferta

--select min(OF_Precio)
--from Oferta 
--		inner join Provincia on Provincia.Prv_ID = Oferta.Prv_ID and 
--Provincia.Prv_Nombre = 'Madrid'

--select sum(OF_Precio)
--from Oferta
--		inner join Cliente on Oferta.Cli_NIF = Cliente.Cli_NIF
--		and Cliente.Cli_Apellidos like 'Marti%'

--select count(*)
--from Oferta

--select count(*)
--from Oferta
--		inner join Provincia on Oferta.Prv_ID = Provincia.Prv_ID
--				and Provincia.Prv_nombre = 'Barcelona'

--select avg(OF_Precio)
--from Oferta
--		inner join Provincia on Oferta.Prv_ID = Provincia.Prv_ID
--				and Provincia.Prv_nombre = 'Barcelona'

--select sum(OF_Precio) / count(OF_Precio) as media
--from Oferta
--		inner join Provincia on Oferta.Prv_ID = Provincia.Prv_ID
--				and Provincia.Prv_nombre = 'Barcelona'

--select avg(OF_Precio), Provincia.Prv_Nombre
--from Oferta
--		inner join  Provincia on Oferta.Prv_ID = Provincia.Prv_ID
--group by Provincia.Prv_Nombre
--where avg(OF_Precio) > 100000

--select distinct(Prv_Nombre)
--from Oferta
--	   inner join Provincia on Oferta.Prv_ID = Provincia.Prv_ID

--select count(Prv_Nombre) cantidad, Prv_Nombre
--from Oferta
--		inner join Provincia on Oferta.Prv_ID = Provincia.Prv_ID
--group by Prv_Nombre

--update Comercial
--set Com_Dirección = 'C/Esplandiu, 5'
--where Com_NIF = '11323K'

--select Com_NIF, Com_Dirección
--from Comercial
--where Com_NIF = '11323K'

--update Comercial
--set Com_Categoria = '4'
--from Comercial, Provincia
--where Comercial.Prv_ID = Provincia.Prv_ID
--		and Prv_Nombre = 'Madrid'

--select Com_Categoria, Prv_Nombre
--from Comercial, Provincia
--where Comercial.Prv_ID = Provincia.Prv_ID

--update Cliente
--set Cli_Direccion = 'C/Apache 35', Cli_Telefono = '912237878'
--where Cli_Nombre = 'Juan Jose' and Cli_Apellidos = 'Martinez'

--select *
--from Cliente
--where Cli_Nombre = 'Juan Jose' and Cli_Apellidos = 'Martinez'

--select Of_Precio, Prv_Nombre
--from Oferta
--		inner join Provincia on Provincia.Prv_ID = Oferta.Prv_ID
--where Prv_Nombre = 'Barcelona'

--update Oferta
--set OF_Precio = OF_Precio + (OF_Precio * 0.05)
--from Oferta, Provincia
--where Provincia.Prv_ID = Oferta.Prv_ID and Prv_Nombre = 'Barcelona'

--select count(*) as cantidad, Com_Nombre
--from Comercial
--		left outer join Oferta on Oferta.Com_NIF = Comercial.Com_NIF
--group by Comercial.Com_Nombre

--update Comercial
--set Com_Categoria = ((select count(*) / 2 
--					  from Oferta
--					  where Comercial.Com_NIF  = Oferta.Com_NIF) +
--					 (select count(*) % 2
--					  from Oferta
--					  where Comercial.Com_NIF = Oferta.Com_NIF))
					  
--select Com_Nombre, Com_Categoria
--from Comercial

--delete from Oferta
--where OF_ID = 11

--select max(OF_ID)
--from Oferta

--delete from Oferta
--from Comercial
--where Oferta.Com_NIF = Comercial.Com_NIF
--	 and Com_Nombre = 'Luis' and Com_Apellido= 'Canto'

--delete From Comercial
--where Com_Nombre = 'Luis' and Com_Apellido = 'Canto'

--truncate table Cliente

--delete from OfertaTransporte
--where OF_ID in (select OF_ID
--				from Oferta
--				where Prv_ID in (select Prv_ID
--								 from ComunidadAutonoma, Provincia
--								 where ComunidadAutonoma.CA_Nombre = 'Catalunya'
--								 and ComunidadAutonoma.CA_ID = Provincia.CA_ID))

--delete Oferta
--from (Select top 2 * from Oferta) as t
--where t.OF_ID = OfertaTransporte.OF_ID

--sp_who

--sp_tables

--sp_columns Cliente

--exec sp_insertar_TipoTransporte 1, 'Metro'
--exec sp_insertar_TipoTransporte 4, 'Tranvia'

--declare @error char(1)
--exec sp_insertar_Tipotransporte 5, 'Aeropuerto', @error output
--select @error

--exec sp_Hay_Comerciales 'Barcelona'

--exec ('select * from Provincia')

--exec sp_Clientes Madrid, 28023

--select cast('01/01/01' as datetime)

--select convert(datetime, '01/01/01')

--exec sp_ActualizarComercial

--select *
--from ave

--select nombre
--from arbol inner join arbol_region on arbol.cod_arbol = arbol_region.cod_arbol
--inner join region on arbol_region.cod_region = region.cod_region
--where region.desc_region = 'centro'

--select nombre
--from arbol, arbol_region, region
--where region.desc_region = 'centro'
--and region.cod_region = arbol_region.cod_region
--and arbol_region.cod_arbol = arbol.cod_arbol

--select count(*) as cantidad_aves
--from ave
--where migratoria = 1

--select ave.nombre
--from ave, arbol, ave_arbol
--where arbol.tipo_hoja = 'Caduca'
--and ave.cod_ave = ave_arbol.cod_ave
--and ave_arbol.cod_arbol = arbol.cod_arbol
--order by ave.nombre

select *
from migratorias