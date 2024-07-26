/*
	1) Elimine una orden actualizar en estock del producto

	2) Actualice los preciod de los productos y guardlos en una tabla de 
	historicosPrecios(id,idproducto, precionAnteriorm precioNuevo, fechaModificacion)
*/


-- 2)
create or alter proc sp_deleteOrdenCompra
    @OrderID int
as
begin
    begin transaction
    begin try
	declare @Cantidad int

		/* Usando marge */
		merge into products as tgt
        using (
            select Quantity, ProductID
    from [Order Details]
    where OrderID = @OrderID
        ) AS src 
        ON tgt.ProductID = src.ProductID
        when MATCHED THEN
            update set tgt.UnitsInStock = (tgt.UnitsInStock+src.Quantity);
			delete [Order Details] where OrderID=@OrderID;
			delete Orders where OrderID=@OrderID;
		
		/* Usando inner */
			update Products set UnitsInStock= p.UnitsInStock+od.Quantity from Products as p
        join [Order Details] as od on p.ProductID=od.ProductID where OrderID=11077
			delete [Order Details] where OrderID=@OrderID;
			delete Orders where OrderID=@OrderID;
       /* commit transaction */
    end try
    begin catch 
        rollback transaction
        declare @mensajeError varchar(400) 
        set @mensajeError = error_message()
        print @mensajeError
    end catch
end

exec sp_deleteOrdenCompra @OrderID=11077

select *
from Products
where ProductID=2
select *
from Products
where ProductID=3

select *
from [Order Details]
where OrderID=11077
rollback transaction

go

-- 2)
--actualizar el precio de los productos y los guarde en una tabal de historicos id, id del producto que se modifico ,precioold y precio new
Create table ProductPriceHistory
(
    id int IDENTITY(1,1),
    productid int,
    oldprice Money,
    newprice Money,
    changedate Datetime Default Getdate()
);

go

Create or alter procedure usp_actualizarPrecio
    @Producto as int,
    @NewPrice as Money
as
begin
    BEGIN TRANSACTION
    BEGIN TRY
            declare
            @price money
            set @price= (select UnitPrice
    from Products
    where ProductID = @Producto)
            Update Products
            Set UnitPrice = @NewPrice
            where ProductID = @Producto
            Print ('se actulizo la lista de precios')
            insert into ProductPriceHistory
        (productid,oldprice,newprice)
    select ProductID, @price, @NewPrice
    from Products
    where ProductID = @Producto
            COMMIT TRANSACTION
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION;
            DECLARE @mensajeError VARCHAR(50)
            set @mensajeError = ERROR_MESSAGE()
            PRINT @mensajeError
        END CATCH
END
GO

exec usp_actualizarPrecio @Producto = 6, @NewPrice = 32.00;
--crear un store procedure que elimine una orden y orden details y actulizar el stock
select *
from ProductPriceHistory;

go
-- 3)



create or alter procedure ps_insertOrder
    @CustomerID nchar(5),
    @EmployeeID int,
    @OrderDate datetime,
    @RequiredDate datetime,
    @ShippedDate datetime,
    @ShipVia int,
    @Freight money = null,
    @ShipName nvarchar(40) = null,
    @ShipAddress nvarchar(60) = null,
    @ShipCity nvarchar(15) = null,
    @ShipRegion nvarchar(15) = null,
    @ShipPostalCode nvarchar(10) = null,
    @ShipCountry nvarchar(15),
    @POT productsOrders readonly
as
begin
    begin transaction
    begin try
            -- Insertar en la tabla Orders
            insert into Northwind.dbo.Orders
        (CustomerID, EmployeeID,OrderDate, RequiredDate, ShippedDate,ShipVia,Freight,ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
    values(@CustomerID, @EmployeeID, @OrderDate, @RequiredDate, @ShippedDate, @ShipVia, @Freight, @ShipName, @ShipAddress, @ShipCity, @ShipRegion, @ShipPostalCode, @ShipCountry)
            
            -- Obtener el Id Insertado en la orden 
            declare @OrderID int;
            set @OrderID = scope_identity();

            -- Iterar sobre cada fila de la tabla de parámetros
            DECLARE @ProductID int, @Quantity smallint, @Discount real, @precioVenta money;
            
            DECLARE cur CURSOR FOR 
            SELECT ProductID, Quantity, Discount
    FROM @POT;

            OPEN cur;
            FETCH NEXT FROM cur INTO @ProductID, @Quantity,@Discount;
            -- Insertar en detalle Orden el producto
                --Obtener el Precio del producto a insertar
            while @@FETCH_STATUS =0
            begin
        if exists(select 1
        from Northwind.dbo.Products
        where ProductID=@ProductID  )
                begin
            select @precioVenta = p.UnitPrice
            from Northwind.dbo.Products as p
            where ProductID=@ProductID;
            insert into Northwind.dbo.[Order Details]
                (OrderID, ProductID, UnitPrice, Quantity, Discount)
            values(@OrderID, @ProductID, @precioVenta, @Quantity, @Discount)
            --Actualizar la tabla products reducioendo el unitsinstock con cantidad vendida
            update products set UnitsInStock = UnitsInStock - @Quantity where ProductID = @ProductID
        end
                else 
                begin
            raiserror('El producto no se encuentra',1,16,@ProductID);
            rollback
        end

        fetch next from cur into @productid, @quantity, @discount;

        close cur;
        deallocate cur;
    -- commit transaction
    end
        end try
        begin catch 
            rollback transaction
            declare @mensajeError varchar(400) 
            set @mensajeError = error_message()
            print @mensajeError   
        end catch
end
go
create type productsOrders as table(
    ProductID int,
    Quantity smallint,
    Discount real
)

-- Declarar la tabla de parámetros
DECLARE @TablaProducto productsOrders;

-- Insertar datos en la tabla de parámetros
INSERT INTO @TablaProducto
    (ProductID, Quantity, Discount)
VALUES
    (1, 1, 0),
    (2, 8, 0),
    (3, 10, 0);

-- Visualizar los datos de la tabla de parámetros
-- SELECT * FROM @TablaProducto;

-- Ejecutar el procedimiento almacenado
EXEC ps_insertOrder
    @CustomerID = 'ALFKI', -- Ejemplo de CustomerID
    @EmployeeID = 5, 
    @OrderDate = '2023-02-18', -- Formato de fecha adecuado
    @RequiredDate = '2023-02-18', -- Formato de fecha adecuado
    @ShippedDate = '2023-02-18', -- Formato de fecha adecuado
    @ShipVia = 3,
    @Freight = 10.0, -- Valor de ejemplo para Freight
    @ShipCountry = 'USA', -- Valor de ejemplo para ShipCountry
    @POT = @TablaProducto;
GO
select max(OrderID)
from [Order Details]
select max(OrderID)
from [Orders]
select *
from Products
where ProductID=9

select *
from Orders
where OrderID=1
select *
from Products
where ProductID=9
select *
from [Orders]
where OrderDate=18-02-2023

ROLLBACK TRANSACTION

select *
from StudentsC1
select *
from StudentsC2

go

create or alter proc sp_VentasClienteAnio
@fullname varchar(50),
@anioInicial int,
@anioFinal int
as
begin
    select c.CompanyName, sum(od.Quantity*od.UnitPrice) as 'Total_Ventas'
    from Customers as c
        left join Orders as o on c.CustomerID=o.CustomerID
        left join [Order Details] as od on o.OrderID= od.OrderID
        join Employees as e on e.EmployeeID=o.EmployeeID
    where concat(e.FirstName,' ', e.LastName)=@fullname and
        datepart(year,o.OrderDate)  between @anioInicial and @anioFinal
        or c.CustomerID is null
    group by c.CompanyName
end