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
