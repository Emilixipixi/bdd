-- 1. RELACIÓN CUENTAS CON USUARIO (CLIENTES)

SELECT AVG(saldo) AS saldo_promedio
FROM cuentas
WHERE cedula_propietario = '11025';

SELECT cedula_propietario, COUNT(*) AS total_cuentas
FROM cuentas
GROUP BY cedula_propietario;


-- 2. RELACIÓN CLIENTES CON COMPRAS

SELECT 
    cedula_cliente,
    SUM(p.precio * co.cantidad) AS monto_total_compras
FROM compras co
INNER JOIN productos p ON co.codigo_producto = p.codigo
GROUP BY cedula_cliente;

SELECT COUNT(*) AS total_compras
FROM compras
WHERE fecha_compra = '2024-01-15';


-- 3. RELACIÓN ESTUDIANTES Y PROFESORES

SELECT 
    cedula_profesor,
    COUNT(*) AS total_estudiantes
FROM estudiantes
WHERE cedula_profesor IS NOT NULL
GROUP BY cedula_profesor;

SELECT 
    ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM fecha_nacimiento))) AS edad_promedio
FROM estudiantes;


-- 4. RELACIÓN PERSONA Y PRÉSTAMO
-- Nota: No existe tabla de préstamos en la base de datos


-- 5. RELACIÓN PRODUCTOS Y VENTAS

SELECT MAX(precio) AS precio_maximo
FROM productos;

SELECT SUM(cantidad) AS total_productos_vendidos
FROM compras;


-- 6. RELACIÓN TRANSACCIONES Y BANCO (CUENTAS)

SELECT COUNT(*) AS total_creditos
FROM transacciones
WHERE tipo = 'C';

SELECT 
    numero_cuenta,
    ROUND(AVG(CAST(monto AS decimal)), 2) AS monto_promedio
FROM transacciones
GROUP BY numero_cuenta;


-- 7. RELACIÓN VIDEOJUEGOS Y PLATAFORMAS

SELECT 
    codigo_videojuego,
    COUNT(*) AS total_plataformas
FROM plataformas
GROUP BY codigo_videojuego;

SELECT ROUND(AVG(valoracion), 2) AS valoracion_promedio
FROM videojuegos;


-- 8. RELACIÓN REGISTROS_ENTRADA Y EMPLEADO (PERSONA)

SELECT 
    cedula_empleado,
    COUNT(*) AS total_registros
FROM registros_entrada
GROUP BY cedula_empleado;

SELECT 
    MIN(fecha) AS fecha_minima,
    MAX(fecha) AS fecha_maxima
FROM registros_entrada;