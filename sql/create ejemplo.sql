create table [dbo].[Oferta](
	[OF_ID] [int] not null primary key,
	[Prv_ID] [int] not null,
	[OF_Direccion] [varchar] (50) not null,
	[TB_ID] [int] not null,
	[OF_Transaccion] [varchar] (50) not null,
	[OF_Precio] [int] not null,
	[Com_NIF] [char] (10) not null,
	[Cli_NIF] [char] (10) not null
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
	[Prv_ID] [int] not null,
	[OF_Direccion] [varchar] (50) not null,
	[TB_ID] [int] not null,
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
	[Com_Dirección] [varchar] (50) not null,
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
	[Tr_Nombre] [varchar](30) not null,
	[TT_ID] [int] not null,
) on [primary]
go

create table [dbo].[CodigosPostales](
	[Prv_Id] [int] not null,
	[CP_Codigo] [char] (5) not null primary key
) on [primary]
go

alter table [dbo].[Oferta] add [Com_NIF] [char] (10) not null
go

alter table [dbo].[Oferta] add [Cli_NIF] [char] (10)
go

alter table [dbo].[Oferta] alter column [Cli_NIF] [char] (10) not null
go

create table [dbo].[OfertaTransporte](
	[Of_ID] [int] not null,
	[Tr_ID] [int] not null
) on [primary]
go

alter table [dbo].[OfertaTransporte] with nocheck add
	constraint [PK_OfertaTransporte] primary key nonclustered
	(
		[Of_ID],
		[Tr_ID]
	) on [primary]
go

alter table [dbo].[Oferta] add
	constraint [FK_Oferta_Cliente] foreign key
	(
		[Cli_NIF]
	) references [dbo].[Cliente](
		[Cli_NIF]
	),
	constraint [FK_Oferta_Comercial] foreign key
	(
		[Com_NIF]
	) references [dbo].[Comercial](
		[Com_NIF]
	),
	constraint [FK_Oferta_Provincia] foreign key
	(
		[Prv_ID]
	) references [dbo].[Provincia](
		[Prv_ID]
	),
	constraint [FK_Oferta_TipoBien] foreign key
	(
		[TB_ID]
	) references [dbo].[TipoBien](
		[TB_ID]
	)
go

alter table [dbo].[Provincia] add
	constraint [FK_Provincia_ComunidadAutonoma] foreign key
	(
		[CA_ID]
	) references [dbo].[ComunidadAutonoma](
		[CA_ID]
	)
go

alter table [dbo].[Transporte] add
	constraint [FK_Transporte_TipoTransporte] foreign key
	(
		[TT_ID]
	) references [dbo].[TipoTransporte](
		[TT_ID]
	)
go

Drop table CodigosPostales
go

Create index oferta1 on Oferta(Of_Transaccion)
go

create index oferta2 on Oferta(OF_Precio)
go

drop index Oferta.oferta2
