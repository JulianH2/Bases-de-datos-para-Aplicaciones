-- Ejercicio 1: Obtener el nombre del cliente y el nombre del empleado del representante de ventas de cada pedido.
-- Forma 1
SELECT 
    o.OrderID AS 'Numero de orden', 
    o.OrderDate AS 'Fecha de Orden', 
    c.CompanyName AS 'Nombre', 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nombre del Empleado'
FROM Employees AS e
INNER JOIN Orders AS o ON e.EmployeeID = o.EmployeeID
INNER JOIN Customers AS c ON c.CustomerID = o.CustomerID;

-- Ejercicio 2: Mostrar el nombre del producto, el nombre del proveedor y el precio unitario de cada producto.
-- Forma 1
SELECT 
    p.ProductName AS 'Nombre del producto', 
    s.CompanyName AS 'Nombre del Proveedor', 
    p.UnitPrice AS 'Precio Unitario'
FROM Products AS p
INNER JOIN Suppliers AS s ON s.SupplierID = p.SupplierID;

-- Forma 2
SELECT 
    p.ProductName AS 'Nombre del producto', 
    s.CompanyName AS 'Nombre del Proveedor', 
    p.UnitPrice AS 'Precio Unitario'
FROM (
    SELECT SupplierID, ProductName, UnitPrice
    FROM Products
) AS p
INNER JOIN (
    SELECT SupplierID, CompanyName
    FROM Suppliers
) AS s ON s.SupplierID = p.SupplierID;

-- Ejercicio 3: Listar el nombre del cliente, el ID del pedido y la fecha del pedido para cada pedido.
-- Forma 1
SELECT 
    c.CompanyName AS 'Nombre del Cliente', 
    o.OrderID AS 'Orden Id', 
    o.OrderDate AS 'Fecha del pedido', 
    YEAR(o.OrderDate) AS 'Año del pedido', 
    MONTH(o.OrderDate) AS 'Mes del pedido', 
    DAY(o.OrderDate) AS 'Día del pedido'
FROM Customers AS c
INNER JOIN Orders AS o ON c.CustomerID = o.CustomerID;

-- Forma 2
SELECT 
    c.CompanyName AS 'Nombre del Cliente', 
    o.OrderID AS 'Orden Id', 
    o.OrderDate AS 'Fecha del pedido', 
    YEAR(o.OrderDate) AS 'Año del pedido', 
    MONTH(o.OrderDate) AS 'Mes del pedido', 
    DAY(o.OrderDate) AS 'Día del pedido'
FROM (
    SELECT CompanyName, CustomerID
    FROM Customers
) AS c
INNER JOIN (
    SELECT OrderDate, OrderID, CustomerID
    FROM Orders
) AS o ON c.CustomerID = o.CustomerID;

-- Ejercicio 4: Obtener el nombre del empleado, el título del cargo y el nombre del territorio.
-- Forma 1
SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nombre del empleado', 
    e.Title AS 'Titulo del cargo', 
    t.TerritoryDescription AS 'Territorio'
FROM Employees AS e
INNER JOIN EmployeeTerritories AS et ON e.EmployeeID = et.EmployeeID
INNER JOIN Territories AS t ON t.TerritoryID = et.TerritoryID;

-- Forma 2
SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nombre del empleado', 
    e.Title AS 'Titulo del cargo', 
    t.TerritoryDescription AS 'Territorio'
FROM (
    SELECT EmployeeID, Title, FirstName, LastName
    FROM Employees
) AS e
INNER JOIN (
    SELECT EmployeeID, TerritoryID
    FROM EmployeeTerritories
) AS et ON e.EmployeeID = et.EmployeeID
INNER JOIN (
    SELECT TerritoryDescription, TerritoryID
    FROM Territories
) AS t ON t.TerritoryID = et.TerritoryID;

-- Ejercicio 5: Mostrar el nombre del proveedor, el nombre del contacto y el teléfono del contacto para cada proveedor.
-- Forma 1
SELECT 
    s.CompanyName AS 'Nombre del Proveedor', 
    s.ContactName AS 'Nombre del contacto', 
    s.Phone AS 'Telefono'
FROM Suppliers AS s;

-- Forma 2
SELECT 
    s.CompanyName AS 'Nombre del Proveedor', 
    s.ContactName AS 'Nombre del contacto', 
    s.Phone AS 'Telefono'
FROM (
    SELECT CompanyName, ContactName, Phone
    FROM Suppliers
) AS s;

-- Ejercicio 6: Listar el nombre del producto, la categoría del producto y el nombre del proveedor para cada producto.
-- Forma 1
SELECT 
    p.ProductName AS 'Nombre del Producto', 
    c.CategoryName AS 'Categoria', 
    s.CompanyName AS 'Nombre del Proveedor'
FROM Products AS p
INNER JOIN Suppliers AS s ON p.SupplierID = s.SupplierID
INNER JOIN Categories AS c ON c.CategoryID = p.CategoryID;

-- Forma 2
SELECT 
    p.ProductName AS 'Nombre del Producto', 
    c.CategoryName AS 'Categoria', 
    s.CompanyName AS 'Nombre del Proveedor'
FROM (
    SELECT ProductName, ProductID, CategoryID, SupplierID
    FROM Products
) AS p
INNER JOIN (
    SELECT SupplierID, CompanyName
    FROM Suppliers
) AS s ON p.SupplierID = s.SupplierID
INNER JOIN (
    SELECT CategoryID, CategoryName
    FROM Categories
) AS c ON c.CategoryID = p.CategoryID;

-- Ejercicio 7: Obtener el nombre del cliente, el ID del pedido, el nombre del producto y la cantidad del producto para cada detalle del pedido.
-- Forma 1
SELECT 
    c.CompanyName AS 'Nombre del cliente', 
    o.OrderID AS 'Id del Pedido', 
    p.ProductName AS 'Nombre del producto', 
    od.Quantity AS 'Cantidad del Producto'
FROM Customers AS c
INNER JOIN Orders AS o ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] AS od ON o.OrderID = od.OrderID
INNER JOIN Products AS p ON p.ProductID = od.ProductID;

-- Forma 2
SELECT 
    c.CompanyName AS 'Nombre del cliente', 
    o.OrderID AS 'Id del Pedido', 
    p.ProductName AS 'Nombre del producto', 
    od.Quantity AS 'Cantidad del Producto'
FROM (
    SELECT CompanyName, CustomerID
    FROM Customers
) AS c
INNER JOIN (
    SELECT *
    FROM Orders
) AS o ON c.CustomerID = o.CustomerID
INNER JOIN (
    SELECT OrderID, Quantity, ProductID
    FROM [Order Details]
) AS od ON o.OrderID = od.OrderID
INNER JOIN (
    SELECT ProductID, ProductName
    FROM Products
) AS p ON p.ProductID = od.ProductID;

-- Ejercicio 8: Obtener el nombre del empleado, el nombre del territorio y la región del territorio para cada empleado que tiene asignado un territorio.
-- Forma 1
SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nombre del empleado', 
    t.TerritoryDescription AS 'Territorio', 
    r.RegionDescription AS 'Region'
FROM Employees AS e
INNER JOIN EmployeeTerritories AS et ON e.EmployeeID = et.EmployeeID
INNER JOIN Territories AS t ON t.TerritoryID = et.TerritoryID
INNER JOIN Region AS r ON r.RegionID = t.RegionID;

-- Forma 2
SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nombre del empleado', 
    e.Title AS 'Titulo del cargo', 
    t.TerritoryDescription AS 'Territorio', 
    r.RegionDescription AS 'Region'
FROM (
    SELECT EmployeeID, Title, FirstName, LastName
    FROM Employees
) AS e
INNER JOIN (
    SELECT EmployeeID, TerritoryID
    FROM EmployeeTerritories
) AS et ON e.EmployeeID = et.EmployeeID
INNER JOIN (
    SELECT TerritoryDescription, TerritoryID, RegionID
    FROM Territories
) AS t ON t.TerritoryID = et.TerritoryID
INNER JOIN (
    SELECT RegionDescription, RegionID
    FROM Region
) AS r ON r.RegionID = t.RegionID;

-- Ejercicio 9: Mostrar el nombre del cliente, el nombre del transportista y el nombre del país del transportista para cada pedido enviado por un transportista.


-- Ejercicio de reto: Seleccionar todas las ordenes mostrando el empleado que la realizó, el cliente al que se le vendió, el nombre de los productos, sus categorías, el precio que se vendió, las unidades vendidas y el importe, de enero de 1997 a enero de 1998.
SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nombre del Empleado', 
    c.CompanyName AS 'Nombre del Cliente', 
    p.ProductName AS 'Nombre del Producto', 
    cat.CategoryName AS 'Categoria del Producto', 
    od.Quantity AS 'Cantidad de productos', 
    od.UnitPrice AS 'Precio', 
    (od.Quantity * od.UnitPrice) AS 'Importe'
FROM [Orders] AS o
INNER JOIN [Order Details] AS od ON o.OrderID = od.OrderID
INNER JOIN Customers AS c ON o.CustomerID = c.CustomerID
INNER JOIN Products AS p ON od.ProductID = p.ProductID
INNER JOIN Employees AS e ON e.EmployeeID = o.EmployeeID
INNER JOIN Categories AS cat ON cat.CategoryID = p.CategoryID
WHERE o.OrderDate BETWEEN '1997-01-01' AND '1998-01-31';

-- Seleccaiona la suma del total de ventas de cada categoria
SELECT 
    cat.CategoryName AS 'Categoria del Producto', 
    SUM(od.Quantity * od.UnitPrice) AS 'Importe'
FROM [Orders] AS o
INNER JOIN [Order Details] AS od ON o.OrderID = od.OrderID
INNER JOIN Customers AS c ON o.CustomerID = c.CustomerID
INNER JOIN Products AS p ON od.ProductID = p.ProductID
INNER JOIN Employees AS e ON e.EmployeeID = o.EmployeeID
INNER JOIN Categories AS cat ON cat.CategoryID = p.CategoryID
WHERE o.OrderDate BETWEEN '1997-01-01' AND '1998-01-31'
GROUP BY cat.CategoryName;

-- Seleccaiona la suma del total de ventas de la categoria Beverages
SELECT 
    SUM(od.Quantity * od.UnitPrice) AS 'Importe'
FROM [Orders] AS o
INNER JOIN [Order Details] AS od ON o.OrderID = od.OrderID
INNER JOIN Customers AS c ON o.CustomerID = c.CustomerID
INNER JOIN Products AS p ON od.ProductID = p.ProductID
INNER JOIN Employees AS e ON e.EmployeeID = o.EmployeeID
INNER JOIN Categories AS cat ON cat.CategoryID = p.CategoryID
WHERE o.OrderDate BETWEEN '1997-01-01' AND '1998-01-31' and cat.CategoryName='Beverages'

select *
from Products
select *
from Categories

select CategoryID, count(*)
from Products
group by CategoryID

-- Selecciona cuantos Productos tiene cada categoria
Select c.CategoryName as 'Categoria', p.ProductName as 'Nombre del producto'
from Categories as c inner join Products as p on c.CategoryID=p.CategoryID
order by c.CategoryName asc

Select c.CategoryName as 'Categoria', count(*) as 'Total de productos'
from Categories as c inner join Products as p on c.CategoryID=p.CategoryID
group by c.CategoryName

-- Consultar para mostrar todos los productos con sus categorias y sus precios 
Select p.ProductName as 'Nombre del producto', p.UnitPrice as 'Precio del producto', c.CategoryName as 'Categoria'
from Categories as c inner join Products as p on c.CategoryID=p.CategoryID
order by c.CategoryName asc

-- Consutlta para mostrar los nombres de los productos y los nombres de su proveedores 
Select p.ProductName as 'Nombre del producto', s.CompanyName as 'Proveedor'
from Suppliers as s inner join Products as p on s.SupplierID=p.SupplierID
order by p.ProductName asc

-- Seleccionar las ordenes de compra mostrando los nombres de lo productos y sus importes 
Select o.OrderID as 'Id de la Orden', p.ProductName as 'Nombre del producto' , (o.UnitPrice*o.Quantity) as 'Importe'
from [Order Details] as o inner join Products as p on o.ProductID=p.ProductID
order by Importe desc

-- Seleccionar las ordenes de compra mostrando los nombres de lo productos y sus importes 
Select o.OrderID as 'Id de la Orden', p.ProductName as 'Nombre del producto' , (o.UnitPrice*o.Quantity) as 'Importe'
from [Order Details] as o inner join Products as p on o.ProductID=p.ProductID
order by Importe desc

Select o.OrderID as 'Id de la Orden', p.ProductName as 'Nombre del producto' , (o.UnitPrice*o.Quantity) as 'Importe'
from [Order Details] as o inner join Products as p on o.ProductID=p.ProductID
WHERE (o.UnitPrice*o.Quantity)<=15000
order by Importe desc

-- Mostrar las ordens de compro y los nombres de los empleados que las realizaron 
Select concat(e.FirstName,' ',e.LastName) as Nombre, count(*) as 'Ordenes Realizadas'
from [Orders] as o inner join Employees as e on o.EmployeeID=e.EmployeeID where year(o.OrderDate) in ('1996','1999')
group by Nombre;

-- seleccionar las ordenes mostrando los clientes a las que se les hicieron las cantidades vendidas y los nombres de los productos 
select c.CompanyName, p.ProductName, od.Quantity
from [Orders] as o
    join [Order Details] as od on o.OrderID=od.OrderID
    join Customers as c on o.CustomerID= c.CustomerID
    join Products as p on od.ProductID= p.ProductID


