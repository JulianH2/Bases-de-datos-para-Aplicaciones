
-- Funciones de fecha

-- Seleccionar los años, dias, meses y cuatrimentes de las ordens
Use Northwind

SELECT GETDATE()

SELECT DATEPART(year,'2024-06-06') as 'Anio', 
DATEPART(MONTH,'2024-06-06') as 'Mes', 
DATEPART(DAY,'2024-06-06') as 'Dia',
DATEPART(WEEK,'2024-06-06') as 'Semana',
DATEPART(QUARTER,'2024-06-06') as 'Trimestre',
DATEPART(WEEKDAY,'2024-06-06') as 'Dia de la semana'

--

SELECT DATEPART(WEEK,o.OrderDate) as 'Semana',
DATEPART(QUARTER,o.OrderDate) as 'Trimestre',
DATEPART(WEEKDAY,o.OrderDate) as 'Dia de la semana',
DATEPART(year,o.OrderDate) as 'Anio', 
DATEPART(MONTH,o.OrderDate) as 'Mes', 
DATEPART(DAY,o.OrderDate) as 'Dia'
FROM Orders as o

SET LANGUAGE spanish

--
SELECT DATENAME(WEEK,o.OrderDate) as 'Semana',
DATENAME(QUARTER,o.OrderDate) as 'Trimestre',
DATENAME(WEEKDAY,o.OrderDate) as 'Dia de la semana',
DATENAME(year,o.OrderDate) as 'Anio', 
DATENAME(MONTH,o.OrderDate) as 'Mes', 
DATENAME(DAY,o.OrderDate) as 'Dia'
FROM Orders as o


SELECT DATEDIFF(YEAR,year(o.OrderDate), GETDATE()) AS 'Años de antiguadad' from Orders as o

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Crear el procedimiento almacenado
ALTER PROCEDURE [dbo].[sp_VentasPorClientePorAnio]
AS
BEGIN
    -- Consulta para obtener las ventas por cliente y año
   select  c.CompanyName as 'Cliente', year(o.OrderDate) as 'Año', sum(od.UnitPrice*od.Quantity) as total
from Customers as c join Orders as o on  c.CustomerID=o.CustomerID join [Order Details] as od on o.OrderID=od.OrderID group by c.CompanyName,year(o.OrderDate)
END;
GO
