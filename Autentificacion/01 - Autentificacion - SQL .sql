select * from Customers
select * from Products
select * from Employees
select * from [Order Details]
select * from Orders

update Customers set City = 'cI' where CustomerID='ALFKI'

select * from shippers

declare   @cantidad smallint=9, @Descuento real=0.5, @OID int=10400,  @CusID nchar(5), @EmpID=1 int, @ODate datetime= getdate,  @RDate datetime=getdate, @SDate datetime = getdate, @SVia int=2,;
exec sp_insertOrder @Quantity=@cantidad, @Discount=@Descuento, @OrderID=@OID, @EmployeeID=@EmpID , @CustomerID=@CusID, @OrderDate=@ODate, @RequiredDate = @RDate, @ShippedDate= @SDate , @ShipVia=@SVia
select * from [Order Details] where OrderID=10400 