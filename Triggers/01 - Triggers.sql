
-- Sintaxis 
/*
create trigger --Nombre
on -- tabla
after insert
as begin
 -- Codigo
end
*/

create database Pruebatrigges;
go
use Pruebatrigges;
go

create table tabla1
(
    id int not null primary key,
    nombre varchar(50) not null
);
go


create or alter trigger tg_VerificaInsert
on tabla1 after insert
as begin
    print('se ejecuto el evento insert en la tabla')
end

insert into tabla1
values(1, 'Nombre')

-- trigger que verifica el evento que se ejecuta
go
create or alter trigger tg_VerificaDelete
on tabla1 after delete
as begin
    print('se ejecuto el evento delete en la tabla')
end

delete tabla1 where id=1

-- trigger que verifica el evento que se ejecuta
go
create or alter trigger tg_VerificaUpdate
on tabla1 after update
as begin
    print('se ejecuto el evento update en la tabla')
end

update tabla1 set nombre='Nombre Nuevo' where id = 1 
go
create or alter trigger tg_verificarContenidoInsert
on tabla1 after insert  
as begin
    --Ver los datos de la tabla inserted
    select *
    from inserted;
end

insert into tabla1
values(2, 'Nombre 2')
insert into tabla1
values(3, 'Nombre 3')

insert into tabla1
values(4, 'Nombre 4'),
    (5, 'Nombre 5')
go
 create or alter trigger tg_VerificarInsertCategories 
 on Categories
 after insert
 as begin
    select CategoryID, CategoryName, [Description]
    from inserted
end

insert into Categories
    (CategoryName, [Description])
values
    ('Categoria nueva', 'Prueba triggers')

go
create or alter trigger tg_VerificarIUpdateCategories
 on Categories
 after update
 as begin
    select CategoryID, CategoryName, [Description]
    from inserted;
    select CategoryID, CategoryName, [Description]
    from deleted;
end

begin transaction
update Categories set CategoryName='CategoriaOtra', [Description] = 'Si esta bien' where CategoryID=9
rollback

go

create or alter trigger tg_VerificarInsertDelete
on Categories 
after insert, update, delete
as begin 
    if(exists(select 1 from inserted) and not exists(select 1 from deleted))
    begin
        print('Existen datos en la tabla , se realizo un insert')
    end
    if(exists(select 1 from deleted) and not exists(select 1 from inserted))
    begin
        print('Existen datos en la tabla Deleted, se realizo un deleted')
    end
    else if(exists(select 1 from deleted) and exists(select 1 from inserted))
    begin
        print('Existen datos en las dos tablas, se realizo un Update')
    end
end


go
select * from Categories
delete Categories where CategoryName='Categoria 10';
insert into Categories(CategoryName,[Description]) values('Categoria 10','Pinpon')
update Categories set CategoryName='CategoriaOtra', [Description] = 'Si esta bien' where CategoryID=9

-- Crear un trigger en la base de daros de prueba trigers, para la tabla empleados, este trigger debe evitar que se inserten o modifiquen los salarios mayores a 5000
use Pruebatrigges

create table empleado
(
    id int not null identity primary key,
    Nombre varchar(50) not null,
    Salario money not null
)


go

create or alter trigger tg_VerifiarSalario 
on empleado after insert, delete
as begin 
    declare @newsalario money;
    set @newsalario = (select Salario from inserted);
    
    if(@newsalario>50000)
    begin 
    raiserror('El salario es mayor a 50000 y no esta permitido', 16,1);
    rollback transaction
    end

    if(exists(select 1 from inserted) and not exists(select 1 from deleted))
    begin
        print('Existen datos en la tabla , se realizo un insert')
    end
    if(exists(select 1 from deleted) and not exists(select 1 from inserted))
    begin
        print('Existen datos en la tabla Deleted, se realizo un deleted')
    end
end

insert into Pruebatrigges.dbo.empleado values ('Nombre',550000)