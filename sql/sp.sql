--create procedure sp_insertar_TipoTransporte
--	@TT_ID int,
--	@TT_Nombre varchar(40),
--	@error char(1) output
--as
--	if (select count(*)
--		from TipoTransporte
--		where TT_ID = @TT_ID) = 0 begin
--			set @error = 'N'
--			insert into TipoTransporte
--			values (@TT_ID, @TT_Nombre)
--	end
--	else
--		set @error = 'S'
		
--create procedure sp_Hay_Comerciales
--	@Prv varchar(40)
--as
--	if(select count(*)
--	   from Provincia inner join Comercial on Comercial.Prv_ID = Provincia.Prv_ID
--	   and Provicia.Prv_Nombre = @Prv) > 0
--	   print 'Hay comerciales asociados a la provincia de ' + @Prv
--	else
--	   print 'No hay comerciales asociados a la provincia de ' + @Prv	
		
--create procedure sp_Hay_Comerciales2
--	@Prv varchar(40)
--as
--	select
--	case(select count(*) 
--		 from Provincia inner join Comercial on Comercial.Prv_ID = Provincia.Prv_ID
--		 and Provincia.Prv_Nombre = @Prv)
--	when 0 then 'No hay comerciales asociados a la provincia de ' + @Prv
--	else 'Hay comerciales asociados a la provincia de ' + @Prv
--	end

--create procedure sp_Clientes
--	@Prv varchar(40),
--	@CP varchar(5)
--as
--	--La variable condición almacena la claúsula where  y la variable  join los  
--	declare @condicion varchar(255)
--	declare @join varchar(255)
--	set @condicion = ''
--	set @join = ''
	
--	--Si se ha especificado la variable @Prv, montar la condicion  y el join
--	if not @Prv is null begin
--		set @condicion = ' Provincia.Prv_Nombre = ' + '''' + @Prv + ''''
--		set @join = ' inner join Provincia on Provincia.Prv_ID = Cliente. Prv_ID'
--	end
	
--	--Si se ha especificado el codigo, concatenar la condición
--	if not @CP is null begin
--		if @condicion <> ''
--			set @condicion = @condicion + ' and ' 
--			set @condicion = @condicion + ' Cli_CodPostal = ' + '''' + @CP + ''''
--		end
--		if @condicion <> ''
--			set @condicion = ' where ' + @condicion
--		exec ('select * from Cliente ' + @join + @condicion)

create procedure sp_ActualizarComercial
as
	while (select top 1 Com_Categoria from Comercial) <> '6'
	begin
		update Comercial
		set Com_Categoria = cast(Com_Categoria as int) * 2
		
		if(select max(Com_Categoria) from Comercial) > 6
			break
		else
			continue
	end	
