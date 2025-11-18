select * 
from productos 
where stock = 10 
  and precio < money(10);

select nombre, stock 
from productos 
where nombre like '%m%' 
   or descripcion like '% %';

select nombre 
from productos 
where descripcion is null 
   or stock = 0;


   
select numero_cuenta, saldo
from cuentas
where saldo > money(100)
  and saldo < money(1000);

select *
from cuentas
where fecha_creacion between current_date - interval '1 year'
                         and current_date;

select *
from cuentas
where saldo = money(0)
   or cedula_propietario like '%2';


select nombre, apellido
from estudiantes
where nombre like 'M%'
   or apellido like '%Z';

select nombre
from estudiantes
where cedula like '%18%'
  and cedula like '%32%';

select (nombre || ' ' || apellido) as nombre_completo
from estudiantes
where cedula like '%06'
   or cedula like '17%';


select *
from registros_entrada
where extract(month from fecha) = 9
   or cedula_empleado like '17%';

select *
from registros_entrada
where extract(month from fecha) = 8
  and cedula_empleado like '17%'
  and hora between '08:00' and '12:00';

select *
from registros_entrada
where (
        extract(month from fecha) = 8
        and cedula_empleado like '17%'
        and hora between '08:00' and '12:00'
      )
   or (
        extract(month from fecha) = 9
        and cedula_empleado like '08%'
        and hora between '09:00' and '13:00'
      );

select *
from videojuegos
where nombre like '%C%'
   or valoracion = 7;

select *
from videojuegos
where codigo between 3 and 7
   or valoracion = 7;

select *
from videojuegos
where (
        descripcion = 'Guerra'
        and valoracion > 7
        and nombre like 'C%'
      )
   or (
        valoracion > 8
        and nombre like 'D%'
      );

select *
from transacciones
where tipo = 'C'
  and numero_cuenta between '22001' and '22004';

select *
from transacciones
where tipo = 'D'
  and fecha = '2024-05-25'
  and numero_cuenta between '22007' and '22010';

select *
from transacciones
where codigo between 1 and 5
  and numero_cuenta in ('22002', '22004')
  and fecha in ('2024-05-26', '2024-05-29');



