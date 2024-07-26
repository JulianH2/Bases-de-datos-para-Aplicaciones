--Creando un Login de SQL
----Login me da acceso al servidor

use master
go 

create login UsuarioSistema with password ='1802'

--Creando un user para el login informatica en la BD Northwind
--Además lo agrego al esquema informatica

use Northwind
go

create user UsuarioSistema for login UsuarioSistema

-- Dar permisos de forma individual

	-- Create
grant create table to UsuarioSistema
	-- Select
grant select on dbo.customers to UsuarioSistema
	-- Sore Prosedure
Exec sp_addrolemember 'db_datareader' , 'usuarioSistema2'
Exec sp_addrolemember 'db_datawriter' , 'usuarioSistema'