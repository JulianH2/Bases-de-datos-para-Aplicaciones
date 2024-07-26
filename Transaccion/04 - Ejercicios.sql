--MERGE INTO <target table> AS TGT
--USING <SOURCE TABLE> AS SRC  
--  ON <merge predicate>
--WHEN MATCHED [AND <predicate>] -- two clauses allowed:  
--  THEN <action> -- one with UPDATE one with DELETE
--WHEN NOT MATCHED [BY TARGET] [AND <predicate>] -- one clause allowed:  
--  THEN INSERT... –- if indicated, action must be INSERT
--WHEN NOT MATCHED BY SOURCE [AND <predicate>] -- two clauses allowed:  
--  THEN <action>; -- one with UPDATE one with DELETE

create database Escuelita
use Escuelita

create table StudentsC1
(
    StudentID INT
    ,
    StudentName VARCHAR(50)
    ,
    StudentStatus BIT
);
go

insert into StudentsC1
    (StudentID, StudentName, StudentStatus)
values(1, 'Axel Romero', 1)
insert into StudentsC1
    (StudentID, StudentName, StudentStatus)
values(2, 'Sofía Mora', 1)
insert into StudentsC1
    (StudentID, StudentName, StudentStatus)
values(3, 'Rogelio Rojas', 0)
insert into StudentsC1
    (StudentID, StudentName, StudentStatus)
values(4, 'Mariana Rosas', 1)
insert into StudentsC1
    (StudentID, StudentName, StudentStatus)
values(5, 'Roman Zavaleta', 1)
go

create table StudentsC2
(
    StudentID INT
    ,
    StudentName VARCHAR(50)
    ,
    StudentStatus BIT
);
go

insert into StudentsC2
    (StudentID, StudentName, StudentStatus)
values(1, 'Axel Romero Rendón', 1)
insert into StudentsC2
    (StudentID, StudentName, StudentStatus)
values(2, 'Sofía Mora Ríos', 0)
insert into StudentsC2
    (StudentID, StudentName, StudentStatus)
values(6, 'Mario Gonzalez Pae', 1)
insert into StudentsC2
    (StudentID, StudentName, StudentStatus)
values(7, 'Alberto García Morales', 1)
go




select *
from StudentsC1 as c1 inner join StudentsC2 as c2 on c1.StudentID=c2.StudentID
where c1.StudentID is null

-- Crear un store procedure que inserte y actualice la tabla studen2 mediante los datos de studen 1 utilizando consultas left y inner join
go

create or alter proc sp_CargaIncrementalStudents
as
begin
    begin transaction
    begin try
        --Se insertan los Estudiantes Nuevos
        insert into StudentsC2(StudentID, StudentName, StudentStatus)
        select c1.StudentID, c1.StudentName, c1.StudentStatus
        from StudentsC1 as c1
        left join StudentsC2 as c2 on c1.StudentID=c2.StudentID
        where c2.StudentID is null

        --Se Actualizan los Estudiantes Nuevos
        update c2 set 
        StudentName=c2.StudentName,
        StudentStatus=c2.StudentStatus
        from StudentsC1 as c1 inner join StudentsC2 as c2 on c1.StudentID=c2.StudentID
        where c1.StudentName<>c2.StudentName or
        c1.StudentStatus<>c2.StudentStatus

        commit transaction
    end try
    begin catch 
        rollback transaction
        declare @mensajeError varchar(400) 
        set @mensajeError = error_message()
        print @mensajeError
    end catch
end


-- exec sp_CargaIncrementalStudents
go

 truncate table StudentsC1
 truncate table StudentsC2

go 

create or alter proc sp_CargaIncrementalStudents2
as
begin
    begin transaction
    begin try
    
		 merge into StudentsC2 AS tgt
        using (
            select StudentID, StudentName, StudentStatus
            from StudentsC1 
        ) AS src 
        ON tgt.StudentID = src.StudentID
        when matched then
            UPDATE SET 
                tgt.StudentName = src.StudentName,
                tgt.StudentStatus = src.StudentStatus
        when not matched then
            insert (StudentID, StudentName, StudentStatus) 
            values (src.StudentID, src.StudentName, src.StudentStatus);

        commit transaction
    end try
    begin catch 
        rollback transaction
        declare @mensajeError varchar(400) 
        set @mensajeError = error_message()
        print @mensajeError
    end catch
end
go
create or alter proc sp_truncarTabla 
@tabla NVARCHAR(50)
as
begin
    declare @sql NVARCHAR(50);

    set @sql=N'truncate table '+ quotename(@Tabla);
   exec sp_executesql @sql
end

