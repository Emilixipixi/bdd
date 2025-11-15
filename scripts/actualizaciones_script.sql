update productos
set stock = 0
where descripcion is null


update cuentas
set saldo = 10
where cedula_propietario like '17%'


update estudiantes
set apellido = 'Hernández'
where cedula like '17%'


update registros_entradas
set cedula_registro = '082345679'
where extract(month from fecha) = 8


update videojuegos
set descripcion = 'Mejor puntuado'
where valoracion > 9


update transacciones
set tipo = 'T'
where monto > money(100) 
  and monto < money(500)
  and extract(month from fecha) = 9
  and hora between '14:00:00' and '20:00:00'

