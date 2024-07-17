-- Store Procedurre que visualice los resultados de acuerdo a cualquoer tabla

create or alter proc sp_visualiceResultados
    @Tabla varchar(50)
as
begin
    declare  @sql NVARCHAR(MAX)

    set @sql = N'SELECT * FROM ' + quotename(@Tabla)
    
    exec sp_executesql @sql
end

declare @nombreTabla varchar(50)='Products'
exec sp_visualiceResultados @Tabla=@nombreTabla