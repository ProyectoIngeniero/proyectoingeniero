create table [dbo].[Oferta](
	[OF_ID] [int] not null primary key,
	[OF_Provincia] [varchar] (50) not null,
	[OF_Direccion] [varchar] (50) not null,
	[OF_Tipo] [varchar] (50) not null,
	[OF_Transaccion] [varchar] (50) not null,
	[OF_Precio] [int] not null
) ON [Primary]

Drop table Oferta
go

create table [dbo].[ComunidadAutonoma](
	[CA_ID] [int] not null primary key,
	[CA_Nombre] [varchar] (50) not null
) on [primary]
go

create table [dbo].[Oferta](
	[OF_ID] [int] not null primary key,
	[OF_Provincia] [varchar] (50) not null,
	[OF_Direccion] [varchar] (50) not null,
	[OF_Tipo] [varchar] (50) not null,
	[OF_Transaccion] [varchar] (50) not null,
	[OF_Precio] [int] not null
) ON [Primary]
go

create table [dbo].[Provincia](
	[Prv_ID] [int] not null primary key,
	[CA_ID] [int] not null,
	[Prv_Nombre] [varchar] (50) not null
) on [primary]
go

create table [dbo].[TipoBien](
	[TB_ID] [int] not null primary key,
	[TB_Nombre] [varchar] (50) not null
) on [primary]
go

create table [dbo].[Comercial](
	[Com_NIF] [char] (10) not null primary key,
	[Com_Nombre] [varchar] (50) not null,
	[Com_Apellido] [varchar] (50) not null,
	[Com_CodPostal] [char] (5) not null,
	[Prv_ID] [int] not null,
	[Com_Telefono] [char] (9) not null,
	[Com_Categoria] [varchar] (10) not null
) on [primary]
go

create table[dbo].[Cliente](
	[Cli_NIF] [char] (10) not null primary key,
	[Cli_Nombre] [varchar] (50) not null,
	[Cli_Apellidos] [varchar] (50) not null,
	[Cli_Direccion] [varchar] (50) not null,
	[Cli_CodPostal] [char] (5) not null,
	[Prv_ID] [int] not null,
	[Cli_Telefono] [char] (9) not null,
	[Cli_CCC] [varchar] (30) not null
) on [primary]
go

create table [dbo].[TipoTransporte](
	[TT_ID] [int] not null primary key,
	[TT_Nombre] [varchar] (30) not null
) on [primary]
go 

create table [dbo].[Transporte](
	[Tr_ID] [int] not null primary key,
	[Tr_Nombre] [varchar]