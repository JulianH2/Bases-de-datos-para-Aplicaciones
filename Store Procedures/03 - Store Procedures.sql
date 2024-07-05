-- SP Parametros de salida

-- Crear un store Procedure que calcule el area de un circulo

create or alter proc sp_AreaCirculo
@radio float, --Parametro entrada
@area float output --Parametro salida
as
begin 
    set @area = PI()*(@radio* @radio);
end

declare @resultado float
exec sp_AreaCirculo @radio=10.5, @area = @resultado output

print  cast(@resultado as varchar)

create or alter proc sp_ObtenerInformacionEmpleado
@employeeID int,
@apellido varchar(20) output,
@nombre as varchar(10) output 
as begin 
	if @employeeID <> -1
	begin 
		select @nombre = e.FirstName, @apellido = e.LastName 
		from Northwind.dbo.Employees as e 
		where EmployeeID=@employeeID
	end
	else 
	begin
		print('El valor del empleado no es valido')
	end
end

declare @firstName varchar(100), @lastName varchar(10) 

exec sp_ObtenerInformacionEmpleado @employeeID=1, @nombre= @firstName output, @apellido= @lastName output

print('El nombre es: '+@firstName)
print('El apellido es: '+@lastName)

-- 1
create or alter proc sp_ObtenerInformacionEmpleado
    @employeeID int,
    @apellido varchar(20) output,
    @nombre as varchar(10) output
as
begin
    declare @id int;
    set @id = (select e.EmployeeID
    from Northwind.dbo.Employees as e
    where e.EmployeeID = @employeeID)

    if(not(@id =''))
	begin
        if @employeeID <> -1
	begin
            select @nombre = e.FirstName, @apellido = e.LastName
            from Northwind.dbo.Employees as e
            where EmployeeID=@employeeID
        end
	else 
	begin
            print('El valor del empleado no es valido')
        end
    end
	else 
	begin
        print('El Empleado no se encuentra')
    end
end

declare @firstName varchar(100), @lastName varchar(10)

exec sp_ObtenerInformacionEmpleado @employeeID=10, @nombre= @firstName output, @apellido= @lastName output

print('El nombre es: '+@firstName)
print('El apellido es: '+@lastName)

-- 2
create or alter proc sp_TotalCampos
    @total int output,
    @fechaInicio date,
    @fechaFin date,
    @clienteID nvarchar(10)
as
begin
    set @total = (
	select sum(od.Quantity*od.UnitPrice) as 'Total'
    from Northwind.dbo.Orders as o 
	join Northwind.dbo.Customers as c on c.CustomerID = o.CustomerID 
	join Northwind.dbo.[Order Details] as od on o.OrderID = od.OrderID
    where (o.OrderDate between  '1990-05-30' and '2000-05-30') and o.CustomerID = @clienteID 
	)
end

declare @respuesta int
exec sp_TotalCampos  @clienteID='VINET',  @fechaFin = '1999-05-30', @fechaInicio = '1990-07-01', @total = @respuesta output
print @respuesta