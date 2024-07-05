
-- Crear un procedimiento almacenado para visualizar las ventas por cliente y año
/*
create or alter procedure sp_VentasPorClientePorAnio
    @Anio int
    @Mes int
    @Dia int
as
begin
    select 
        c.CompanyName as Cliente, 
        yearq(o.OrderDate) as Año, 
        sum(od.UnitPrice * od.Quantity) as Total
    from 
        [Northwind].dbo.Customers as c 
        join [Northwind].dbo.Orders as o on c.CustomerID = o.CustomerID 
        join [Northwind].dbo.[Order Details] as od on o.OrderID = od.OrderID
    where
        year(o.OrderDate) = @Anio
        month(o.OrderDate) = @Mes
        day(o.OrderDate) = @Dia
    group by 
        c.CompanyName, year(o.OrderDate);

end;

EXECUTE sp_VentasPorClientePorAnio @Anio = 1996;
*/

-- Crear un procedimiento almacenado para insertar un nuevo producto
/*
create procedure sp_InsertarProducto
    @ProductName varchar(50), 
    @SupplierID int, 
    @CategoryID int, 
    @QuantityPerUnit varchar(50), 
    @UnitPrice decimal(10, 2), 
    @UnitsInStock int, 
    @UnitsOnOrder int, 
    @ReorderLevel int, 
    @Discontinued bit
as
begin
    insert into Products
        (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
    values
        (@ProductName, @SupplierID, @CategoryID, @QuantityPerUnit, @UnitPrice, @UnitsInStock, @UnitsOnOrder, @ReorderLevel, @Discontinued);
end;

-- Ejecución del procedimiento almacenado para insertar un producto
EXECUTE sp_InsertarProducto 
    @ProductName = 'Alpura', 
    @SupplierID = 1, 
    @CategoryID = 1, 
    @QuantityPerUnit = '12 - 550 ml bottles', 
    @UnitPrice = 15, 
    @UnitsInStock = 18, 
    @UnitsOnOrder = 0, 
    @ReorderLevel = 0, 
    @Discontinued = 0;

-- Selección de los datos de productos para verificar la inserción
select * from Products where ProductName = 'Alpura';

*/
-- Creación de una Almacen
create database Almacen;
-- Uso de la nueva base de datos
use Almacen;

-- 1. Crear la tabla Suppliers
select top 0
    s.SupplierID, s.CompanyName, s.Country, s.Address, s.City
into [Almacen].dbo.Suppliers
from [Northwind].dbo.Suppliers as s;
go
alter table Suppliers add constraint PK_Suppliers primary key (SupplierID);
go

-- 2. Employees
select top 0
    e.EmployeeID, concat(e.FirstName, ' ', e.LastName) as FullName, e.Title, e.HireDate, e.Address, e.City, e.Region, e.Country
into [Almacen].dbo.Employees
from [Northwind].dbo.Employees as e;
go
alter table Employees add constraint PK_Employees primary key (EmployeeID);
go

-- 3. Customers
select top 0
    c.CustomerID, c.CompanyName, c.Address, c.City, c.Region, c.Country
into [Almacen].dbo.Customers
from [Northwind].dbo.Customers as c;
go
alter table Customers add constraint PK_Customers primary key (CustomerID);
go

-- 4. Products
select top 0
    p.ProductID, p.ProductName, c.CategoryName
into [Almacen].dbo.Products
from [Northwind].dbo.Products as p
    join [Northwind].dbo.Categories as c on p.CategoryID = c.CategoryID;
go
alter table Products add constraint PK_Products primary key (ProductID);
go

-- 5. Sales
select top 0
    concat(o.CustomerID, o.EmployeeID, od.ProductID, p.SupplierID) as SaleID,
    o.CustomerID, o.EmployeeID, od.ProductID, p.SupplierID, od.Quantity, od.UnitPrice
into [Almacen].dbo.Sales
from [Northwind].dbo.Orders as o
    join [Northwind].dbo.[Order Details] as od on o.OrderID = od.OrderID
    join [Northwind].dbo.Products as p on p.ProductID = od.ProductID;

alter table Sales add constraint FK_Customers foreign key (CustomerID) references Customers(CustomerID);
go
alter table Sales add constraint FK_Employees foreign key (EmployeeID) references Employees(EmployeeID);
go
alter table Sales add constraint FK_Products foreign key (ProductID) references Products(ProductID);
go
alter table Sales add constraint FK_Suppliers foreign key (SupplierID) references Suppliers(SupplierID);
go

-- Procedimientos almacenados para actualizar o insertar registros

-- 1. Proveedores
/*
create or alter procedure sp_UpdateInsertSuppliers
as
begin
    -- Insertar
    set identity_insert [Almacen].dbo.Suppliers on;

    insert into [Almacen].dbo.Suppliers
        (SupplierID, CompanyName, Country, [Address], City)
    select 
        s.SupplierID, 
        isnull(s.CompanyName, 'No tiene nombre'), 
        isnull(s.Country, 'No tiene Pais'), 
        isnull(s.Address, 'No tiene direccion'), 
        isnull(s.City, 'No tiene ciudad')
    from 
        [Northwind].dbo.Suppliers as s 
        left join [Almacen].dbo.Suppliers as s2 on s.SupplierID = s2.SupplierID
    where s2.SupplierID is null;

    set identity_insert [Almacen].dbo.Suppliers off;

    -- Actualizar
    update [Almacen].dbo.Suppliers
    set 
        CompanyName = isnull(s.CompanyName, 'No tiene nombre'),
        Country = isnull(s.Country, 'No tiene Pais'), 
        [Address] = isnull(s.Address, 'No tiene direccion'), 
        City = isnull(s.City, 'No tiene ciudad')
    from 
        [Northwind].dbo.Suppliers as s 
        join [Almacen].dbo.Suppliers as s2 on s.SupplierID = s2.SupplierID
    where 
        s.CompanyName <> s2.CompanyName or
        s.Country <> s2.Country or
        s.[Address] <> s2.[Address] or
        s.City <> s2.City;
end;

exec sp_UpdateInsertSuppliers;
*/

-- 2. Empleados
/*
create or alter procedure sp_UpdateInsertEmployees
as
begin
    -- Insertar
    set identity_insert [Almacen].dbo.Employees on;

    insert into [Almacen].dbo.Employees
        (EmployeeID, FullName, Title, HireDate, [Address], City, Region, Country)
    select 
        e.EmployeeID, 
        isnull(concat(e.FirstName, ' ', e.LastName), 'No tiene nombre'), 
        isnull(e.Title, 'No tiene Titulo'), 
        isnull(cast(e.HireDate as varchar(120)), 'No tiene Hire Date'), 
        isnull(e.[Address], 'No tiene direccion'), 
        isnull(e.City, 'No tiene ciudad'), 
        isnull(e.Region, 'No tiene Region'), 
        isnull(e.Country, 'No tiene Pais')
    from 
        [Northwind].dbo.Employees as e 
        left join [Almacen].dbo.Employees as e2 on e2.EmployeeID = e.EmployeeID
    where e2.EmployeeID is null;

    set identity_insert [Almacen].dbo.Employees off;

    -- Actualizar
    update [Almacen].dbo.Employees
    set
        FullName = isnull(concat(e.FirstName, ' ', e.LastName), 'No tiene nombre'),
        Title = isnull(e.Title, 'No tiene Titulo'),
        HireDate = isnull(cast(e.HireDate as varchar(120)), 'No tiene Hire Date'),
        [Address] = isnull(e.[Address], 'No tiene direccion'), 
        City = isnull(e.City, 'No tiene ciudad'), 
        Region = isnull(e.Region, 'No tiene Region'), 
        Country = isnull(e.Country, 'No tiene Pais')
    from 
        [Almacen].dbo.Employees as e2 
        join [Northwind].dbo.Employees as e on e.EmployeeID = e2.EmployeeID
    where 
        e.Title <> e2.Title or
        e.HireDate <> e2.HireDate or
        e.[Address] <> e2.[Address] or
        e.City <> e2.City or
        e.Region <> e2.Region or
        e.Country <> e2.Country;
end;

exec sp_UpdateInsertEmployees;
*/

-- 3. Clientes
/*
create or alter procedure sp_UpdateInsertCustomers
as
begin
    -- Insertar 
    insert into [Almacen].dbo.Customers
        (CustomerID, CompanyName, [Address], City, Region, Country)
    select 
        c.CustomerID, 
        isnull(c.CompanyName, 'No tiene nombre'), 
        isnull(c.Address, 'No tiene direccion'), 
        isnull(c.City, 'No tiene ciudad'), 
        isnull(c.Region, 'No tiene region'), 
        isnull(c.Country, 'No tiene pais')
    from 
        [Northwind].dbo.Customers as c 
        left join [Almacen].dbo.Customers as c2 on c.CustomerID = c2.CustomerID
    where c2.CustomerID is null;

    -- Actualizar
    update [Almacen].dbo.Customers
    set
        CompanyName = isnull(c.CompanyName, 'No tiene nombre'), 
        [Address] = isnull(c.Address, 'No tiene direccion'), 
        City = isnull(c.City, 'No tiene ciudad'), 
        Region = isnull(c.Region, 'No tiene region'), 
        Country = isnull(c.Country, 'No tiene pais')
    from 
        [Almacen].dbo.Customers as c2 
        join [Northwind].dbo.Customers as c on c.CustomerID = c2.CustomerID
    where 
        c2.CompanyName <> c.CompanyName or
        c2.[Address] <> c.Address or
        c2.City <> c.City or
        c2.Region <> c.Region or
        c2.Country <> c.Country;
end;

exec sp_UpdateInsertCustomers;
*/

-- 4. Productos
/*
create or alter procedure sp_UpdateInsertProducts
as
begin
    -- Insertar
    insert into [Almacen].dbo.Products
        (ProductID, ProductName, CategoryName)
    select 
        p.ProductID, 
        isnull(p.ProductName, 'No tiene nombre de producto'), 
        isnull(c.CategoryName, 'No tiene categoria')
    from 
        [Northwind].dbo.Products as p 
        join [Northwind].dbo.Categories as c on p.CategoryID = c.CategoryID
        left join [Almacen].dbo.Products p2 on p.ProductID = p2.ProductID
    where p2.ProductID is null;

    -- Actualizar
    update [Almacen].dbo.Products
    set
        ProductName = isnull(p.ProductName, 'No tiene nombre'), 
        CategoryName = isnull(c.CategoryName, 'No tiene categoria')
    from 
        [Almacen].dbo.Products as p2 
        join [Northwind].dbo.Products as p on p.ProductID = p2.ProductID 
        join [Northwind].dbo.Categories as c on p.CategoryID = c.CategoryID
    where 
        p2.ProductName <> p.ProductName or
        p2.CategoryName <> c.CategoryName;
end;

exec sp_UpdateInsertProducts;
*/

-- 5. Ventas
/*
create or alter procedure sp_UpdateInsertSales
as
begin
    -- Insertar nuevos registros
    insert into [Almacen].dbo.Sales
        (SaleID, CustomerID, EmployeeID, ProductID, SupplierID, Quantity, UnitPrice)
    select
        o.OrderID as SaleID,
        isnull(cast(o.CustomerID as varchar), 'No tiene Cliente'),
        isnull(cast(o.EmployeeID as varchar), 'No tiene Empleado'),
        isnull(cast(od.ProductID as varchar), 'No tiene Producto'),
        isnull(cast(p.SupplierID as varchar), 'No tiene Proveedor'),
        isnull(cast(od.Quantity as varchar), 'No tiene Cantidad'),
        isnull(cast(od.UnitPrice as varchar), 'No tiene Precio')
    from
        [Northwind].dbo.Orders as o
        join [Northwind].dbo.[Order Details] as od on o.OrderID = od.OrderID
        join [Northwind].dbo.Products as p on p.ProductID = od.ProductID
        left join [Almacen].dbo.Sales s on s.SaleID = o.OrderID
    where s.CustomerID is null;

    -- Actualizar registros existentes
    update [Almacen].dbo.Sales
    set
        SaleID = o.OrderID,
        CustomerID = isnull(cast(o.CustomerID as varchar), 'No tiene Cliente'), 
        EmployeeID = isnull(cast(o.EmployeeID as varchar), 'No tiene Empleado'), 
        ProductID = isnull(cast(od.ProductID as varchar), 'No tiene Producto'), 
        SupplierID = isnull(cast(p.SupplierID as varchar), 'No tiene Proveedor'), 
        Quantity = isnull(cast(od.Quantity as varchar), 'No tiene Cantidad'), 
        UnitPrice = isnull(cast(od.UnitPrice as varchar), 'No tiene Precio')
    from
        [Almacen].dbo.Sales s left join [Northwind].dbo.Orders as o on s.SaleID = o.OrderID
        join [Northwind].dbo.[Order Details] as od on o.OrderID = od.OrderID
        join [Northwind].dbo.Products as p on p.ProductID = od.ProductID
    where not s.SaleID = o.OrderID and(
        s.CustomerID <> o.CustomerID or
        s.EmployeeID <> o.EmployeeID or
        s.ProductID <> od.ProductID or
        s.SupplierID <> p.SupplierID or
        s.Quantity <> od.Quantity or
        s.UnitPrice <> od.UnitPrice);
end;

exec sp_UpdateInsertSales;
*/

-----------------------------------------------
/*
create or alter procedure sp_VentasProveedorFecha
    @year int,
    @month int,
    @day int
as
begin
    select s.CompanyName,
        sum (od.UnitPrice * quantity) as Total
    from
        [Northwind].dbo.Suppliers as s
        inner join [Northwind].dbo.Products as p
        on s.SupplierID=P.SupplierID
        inner join [Northwind].dbo.[Order Details] as od
        on p.ProductID=od.ProductID
        inner join [Northwind].dbo.Orders as o
        on o.OrderID=od.OrderID
    where  datepart (year,o.OrderDate)=@year
        and datepart (month, o.OrderDate)=@month
        and datepart (day,o.OrderDate)=@day
    group by s.CompanyName
    order by s.companyName;
end 


-- Ejecucion de Store Procedure

execute sp_VentasProveedorFecha  1997,07,04

exec sp_VentasProveedorFecha  1996,07,04

exec sp_VentasProveedorFecha @day=04,@year=1996,@month=04
*/

-- SP que premita visualizar cuantas ordenes se han haecho por año y paselect s.CompanyName,

create or alter procedure ps_OrdersPaisAnio
    @pais varchar(50),
    @año int
as
begin
    select count (*) as [Numero de ordenes]
    from [Northwind].dbo.Orders as o
    where o.shipcountry = @pais and datepart(year,o.OrderDate)=@año
end

exec ps_OrdersPaisAnio @pais='Austria', @año=1996