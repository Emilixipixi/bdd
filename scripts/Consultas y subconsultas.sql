-- Unimos la tabla cuentas con clientes para ver el nombre
-- Filtramos solo los saldos entre 100 y 1000
SELECT c.numero_cuenta, cl.nombre, c.saldo
FROM cuentas c, clientes cl
WHERE c.cedula_propietario = cl.cedula
AND c.saldo >= 100, 
AND c.saldo <= 1000;



-- Primero buscamos las cuentas en ese rango de fechas
-- Luego mostramos toda la información junto con los clientes
SELECT c.numero_cuenta, c.cedula_propietario, c.fecha_creacion, c.saldo, 
       cl.nombre, cl.apellido
FROM cuentas c, clientes cl
WHERE c.cedula_propietario = cl.cedula
AND c.fecha_creacion >= '2022-09-21' 
AND c.fecha_creacion <= '2023-09-21';



-- Buscamos clientes cuya cedula contenga el numero 7
SELECT nombre, apellido, cedula
FROM clientes
WHERE cedula LIKE '%7%';




-- Primero encontramos la cedula de María
-- Luego buscamos todos los clientes con esa cedula
SELECT *
FROM clientes
WHERE cedula = (SELECT cedula FROM clientes WHERE nombre = 'María');






-- Mostramos el codigo del profesor y los datos del estudiante
-- Solo si el apellido contiene 'n'
SELECT cedula_profesor, nombre, apellido
FROM estudiantes
WHERE apellido LIKE '%n%';






-- Primero buscamos la cedula del profesor Francisco
-- Luego mostramos los estudiantes que tiene ese profesor
SELECT *
FROM estudiantes
WHERE cedula_profesor = (SELECT cedula FROM profesores WHERE nombre = 'Francisco');









-- Creamos la tabla prestamo
CREATE TABLE prestamo(
    cedula_persona char(10) not null,
    cantidad_ahorrada money,
    monto_prestamo money,
    garante varchar(50),
    constraint prestamo_pk primary key (cedula_persona)
);

-- Agregamos algunos datos de ejemplo
INSERT INTO prestamo (cedula_persona, cantidad_ahorrada, monto_prestamo, garante)
VALUES ('1102547890', 500.00, 300.00, 'Andrea López');

INSERT INTO prestamo (cedula_persona, cantidad_ahorrada, monto_prestamo, garante)
VALUES ('0954871203', 800.00, 150.00, 'Carlos Mendoza');

INSERT INTO prestamo (cedula_persona, cantidad_ahorrada, monto_prestamo, garante)
VALUES ('1715489632', 1200.00, 500.00, 'Luis Pérez');

INSERT INTO prestamo (cedula_persona, cantidad_ahorrada, monto_prestamo, garante)
VALUES ('0923154786', 300.00, 800.00, 'Jorge Sandoval');







-- Mostramos los datos de prestamos que estan entre 100 y 1000
SELECT cantidad_ahorrada, monto_prestamo, garante
FROM prestamo
WHERE monto_prestamo >= 100
AND monto_prestamo <= 1000;








-- Primero buscamos la cedula de Carlos en la tabla persona
-- Luego mostramos sus datos
SELECT *
FROM personas
WHERE cedula = (SELECT cedula FROM personas WHERE nombre = 'Carlos');





-- Creamos la tabla ventas
CREATE TABLE ventas(
    codigo_venta int not null,
    codigo_producto int not null,
    cantidad int not null,
    descripcion int,
    constraint ventas_pk primary key (codigo_venta)
);

-- Insertamos datos de ejemplo
INSERT INTO ventas (codigo_venta, codigo_producto, cantidad, descripcion)
VALUES (1, 101, 5, 0);

INSERT INTO ventas (codigo_venta, codigo_producto, cantidad, descripcion)
VALUES (2, 102, 3, 1);

INSERT INTO ventas (codigo_venta, codigo_producto, cantidad, descripcion)
VALUES (3, 103, 5, 0);

INSERT INTO ventas (codigo_venta, codigo_producto, cantidad, descripcion)
VALUES (4, 104, 2, 0);






-- Unimos productos con ventas
-- Filtramos por nombre con 'm' o descripcion igual a 0
SELECT p.nombre, p.stock, v.cantidad
FROM productos p, ventas v
WHERE p.codigo = v.codigo_producto
AND (p.nombre LIKE '%m%' OR v.descripcion = 0);








-- Primero buscamos que productos se vendieron 5 unidades
-- Luego mostramos el nombre y stock de esos productos
SELECT nombre, stock
FROM productos
WHERE codigo IN (SELECT codigo_producto FROM ventas WHERE cantidad = 5);











-- Creamos la tabla banco
CREATE TABLE banco(
    codigo_banco int not null,
    codigo_transaccion int not null,
    detalle varchar(100),
    constraint banco_pk primary key (codigo_banco)
);

-- Insertamos datos
INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES (1, 1, 'Operación bancaria 1');

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES (2, 3, 'Operación bancaria 2');

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES (3, 5, 'Operación bancaria 3');











-- Buscamos transacciones de tipo C (Credito)
-- Con numero de cuenta entre 50001 y 50004
SELECT *
FROM transacciones
WHERE tipo = 'C' 
AND numero_cuenta >= '50001' 
AND numero_cuenta <= '50004';








-- Primero buscamos que transaccion tiene el banco 1
-- Luego mostramos toda la info de esa transaccion
SELECT *
FROM transacciones
WHERE codigo = (SELECT codigo_transaccion FROM banco WHERE codigo_banco = 1);






-- Unimos videojuegos con plataformas
-- Aplicamos varios filtros
SELECT v.nombre, v.descripcion, v.valoracion, p.nombre_plataforma
FROM videojuegos v, plataformas p
WHERE v.codigo = p.codigo_videojuego
AND ((v.descripcion LIKE '%Guerra%' AND v.valoracion > 7)
     OR (v.nombre LIKE 'C%' AND v.valoracion > 8)
     OR (v.nombre LIKE 'D%'));




-- Primero buscamos el codigo del juego God of War
-- Luego mostramos todas las plataformas de ese juego
SELECT *
FROM plataformas
WHERE codigo_videojuego = (SELECT codigo FROM videojuegos WHERE nombre = 'God of War');








-- Unimos registros con persona para ver el nombre
-- Aplicamos varios filtros con fechas y horas
SELECT r.cedula_empleado, r.fecha, p.nombre
FROM registros_entrada r, persona p
WHERE r.cedula_empleado = p.cedula
AND (r.fecha >= '2023-08-01' AND r.fecha <= '2023-08-31'
     OR (r.cedula_empleado LIKE '17%' AND r.hora >= '08:00:00' AND r.hora <= '12:00:00')
     OR (r.fecha >= '2023-10-06' AND r.fecha <= '2023-10-20' 
         AND r.cedula_empleado LIKE '09%' 
         AND r.hora >= '09:00:00' AND r.hora <= '13:00:00'));





-- Primero buscamos que cedula tiene el registro 1
-- Luego mostramos todos los datos de esa persona
SELECT *
FROM personas
WHERE cedula = (SELECT cedula_empleado FROM registros_entrada WHERE codigo_registro = 1);

		 
	 













