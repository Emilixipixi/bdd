delete from productos
where descripcion is null;

delete from cuentas
where cedula_propietario like '10%';


delete from estudiantes
where cedula like '09%';


delete from registros_entradas
where extract(month from fecha) = 6;


delete from registros_entrada
where extract(month from fecha) = 6;


delete from videojuegos
where valoracion < 7;


delete from transacciones
where extract(month from fecha) = 8
  and extract(year from fecha) = extract(year from current_date)
  and hora between '14:00' and '18:00';

select * from estudiantes
