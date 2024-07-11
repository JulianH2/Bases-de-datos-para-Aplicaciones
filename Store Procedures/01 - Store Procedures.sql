declare @x int;

set @x = 10;

print 'El valor de x es: '+cast(@x as varchar)

if @x>=0 
    begin;
    print 'El numero es positivo';
end;
else 
    begin;
    print 'El numero es negativo';
end;

-- Crear un SP 
-- create procedure procedure_ciclo
-- as 
-- begin
--     declare @i as int;

--     set @i=1;

--     while(@i<=10)
--      begin
--         print 'El valor es '+cast(@i as varchar);
--         set @i=@i+1;
--     end;
-- end;

declare @ii as int;

set @ii=1;

while(@ii<=2)
    begin
    exec procedure_ciclo;
    set @ii=@ii+1;
end

drop procedure procedure_ciclo;

-- Relizar un sp que sume 2 numeros cualquier y que imprima el resultado
-- Alter procedure procedure_suma
-- as
-- begin

--     declare @suma as int;

--     set @suma = @n1 +@n2;

--     print 'Suma: '+ cast(@suma as varchar)+' = '+cast(@n2 as varchar)+' + '+ cast(@n1 as varchar);
-- end;

-- execute procedure_suma 5, 7
-- drop procedure procedure_ciclo;