/* 
Ejercicio 1:
 -> Realizar un Venta dentro de la base de datos Northwind  utilizando transacciones y stores Procedures
*/

-- Crear un trigger que permita gestionar una venta en la cula se debe actualizar la existencia del producto, vendido, bajo las siguientes condiciones
/*
1) Verificar si la existencia es suficiente si la existencia no es sufuciente cancelar la operacion,
2)Si es suficiente agregar la venta y disminuir el stock sobre el producto 

create or alter trigger tg_VerificarInsertOrders
on Northwind.dbo.[Order Details]
after insert
as begin 
    begin transaction
    declare @ProductoID int, @OrderID int, @UnitsInStock smallint, @Quiantity smallint;
    select @OrderID=OrderID from inserted;
    select @ProductoID=ProductID from inserted;
    select @Quiantity= Quantity from inserted;
    select @UnitsInStock=p.UnitsInStock from Northwind.dbo.[Products] as p where p.ProductID=@ProductoID; 

    if @Quiantity>@UnitsInStock
    begin 
        rollback transaction
          raiserror('La cantida supera el estock',1,16);
    end 
    else if @Quiantity<=@UnitsInStock
    begin 
        update Northwind.dbo.[Products] set UnitsInStock=(@UnitsInStock-@Quiantity) where ProductID=@ProductoID;
        print('Ya se actualizo');
    end
    rollback
end

create or alter procedure ps_insertOrder
    @ProductID int, 
    @OrderID int, 
    @Quantity smallint,
    @Discount real
as
begin
    declare @UnitPrice money;
    if exists(select 1 from Northwind.dbo.Products where ProductID=@ProductID)
    begin
        select @UnitPrice=p.UnitPrice from Northwind.dbo.Products as p where ProductID=@ProductID;
        insert into Northwind.dbo.[Order Details](OrderID, ProductID, UnitPrice, Quantity, Discount) values(@OrderID, @ProductID, @UnitPrice, @Quantity, @Discount)
    end
    else 
    begin
          raiserror('El producto no se encuentra',1,16);
    end
end 


declare  @idProducto int=1, @cantidad smallint=9, @Descuento real=0.5, @OID int=10400;
exec ps_insertOrder @ProductID=@idProducto, @Quantity=@cantidad, @Discount=@Descuento, @OrderID=@OID;

select * from [Order Details] where OrderID=10400

*/
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
    @ProductID int, 
    @Quantity smallint,
    @Discount real
as
begin
    begin transaction
        begin try
            -- Insertar en la tabla Orders
            insert into Northwind.dbo.Orders(CustomerID, EmployeeID,OrderDate, RequiredDate, ShippedDate,ShipVia,Freight,ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry) 
            values(@CustomerID, @EmployeeID,@OrderDate, @RequiredDate, @ShippedDate,@ShipVia,@Freight,@ShipName, @ShipAddress, @ShipCity, @ShipRegion, @ShipPostalCode, @ShipCountry)
            
            -- Obtener el Id Insertado en la orden 
            declare @OrderID int;
            set @OrderID = scope_identity();

            -- Insertar en detalle Orden el producto
                --Obtener el Precio del producto a insertar
            declare @precioVenta money;
            if exists(select 1 from Northwind.dbo.Products where ProductID=@ProductID)
            begin
                select @precioVenta = p.UnitPrice from Northwind.dbo.Products as p where ProductID=@ProductID;
                insert into Northwind.dbo.[Order Details](OrderID, ProductID, UnitPrice, Quantity, Discount) values(@OrderID, @ProductID, @precioVenta, @Quantity, @Discount)
                --Actualizar la tabla products reducioendo el unitsinstock con cantidad vendida
                update products set UnitsInStock = UnitsInStock - @Quantity where ProductID = @ProductID
            end
            else 
            begin
                raiserror('El producto no se encuentra',1,16);
                rollback
            end
            commit transaction
        end try
        begin catch 
            rollback transaction
            declare @mensajeError varchar(400) 
            set @mensajeError = error_message()
            print @mensajeError
           
        end catch
end

select max(OrderID) from [Order Details]
select max(OrderID) from [Orders]
select * from Products where ProductID=9

delete from Orders where OrderID=11078
delete from Products where ProductID=9
delete from [Order Details] where OrderID=11078