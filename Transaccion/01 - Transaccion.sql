/*
Las transacciones son fundamentales para asegurar la consistencia y la integridad de los datos
-> Transaction: es una unidad de trabajo que se ejecuta de manera completamente exitosa o no se ejecuta en absoluto
-> Begin transaction: inicia una nueva transaccion
-> Commit transaction: confirma todos los cambios realizados durante la transaccion
-> Rollback transaction: revierte todos los cambios realizados durante la transaccion
*/

use Northwind

begin transaction
insert into Categories(CategoryName,[Description]) values('Categoria 11', 'Los remediales')

rollback transaction

commit transaction