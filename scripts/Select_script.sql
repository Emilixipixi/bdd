select * from productos
where nombre like 'Q%';

select * from productos
where descripcion is null;

select * from productos
where precio between money(2) and money(3);

select numero_cuenta, saldo
from cuentas;

select *
from cuentas
where fecha_creacion between current_date - interval '2 meses' and current_date;


select numero_cuenta, saldo
from cuentas
where fecha_creacion between current_date - interval '2 months' and current_date;


select nombre, cedula
from estudiantes;

select nombre
from estudiantes
where cedula like '17%';

select nombre || ' ' || apellido as nombre_completo
from estudiantes
where nombre like 'A%';


select cedula_empleado, fecha, hora
from registros_entrada;

select *
from registros_entrada
where hora between '07:00:00' and '14:00:00';

select *
from registros_entrada
where hora > '08:00:00';


select *
from videojuegos
where nombre like 'C%';


select *
from videojuegos
where valoracion between 9 and 10;


select *
from videojuegos
where descripcion is null;


select *
from transacciones
where tipo = 'D';


select *
from transacciones
where monto between money(200) and money(2000);


select codigo, monto, tipo, fecha
from transacciones
where fecha is not null;



