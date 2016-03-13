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

select OF_Precio
from OfertaTransporte 
	inner join Oferta on OfertaTransporte.Of_ID = Oferta.OF_ID
	inner join Transporte on OfertaTransporte.Tr_ID = Transporte.Tr_ID
	inner join TipoTransporte on Transporte.TT_ID = TipoTransporte.TT_ID
			and (TipoTransporte.TT_Nombre = 'Metro'
				    or Tipotransporte.TT_Nombre = 'Cercanias')