-- Crear un trigger que permita gestionar una venta en la cula se debe actualizar la existencia del producto, vendido, bajo las siguientes condiciones
/*
1) Verificar si la existencia es suficiente si la existencia no es sufuciente cancelar la operacion,
2)Si es suficiente agregar la venta y disminuir el stock sobre el producto 
*/
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