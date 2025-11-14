create table transacciones(
  codigo int not null,
  numero_cuenta char(5) not null,
  monto money not null,
  tipo char(1) not null,
  fecha date not null,
  hora time not null,
  constraint transacciones_pk primary key (codigo)
)
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values(1, '50001', 120.50, 'C', '2024-01-10', '09:15:22')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values(2, '50002', 80.00, 'D', '2024-01-10', '10:05:40')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values(3, '50003', 300.75, 'C', '2024-01-11', '14:22:10')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values(4, '50004', 50.00, 'D', '2024-01-11', '08:45:33')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values(5, '50005', 700.00, 'C', '2024-01-12', '11:30:55')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values(6, '50006', 25.99, 'D', '2024-01-12', '12:14:09')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values(7, '50007', 150.40, 'C', '2024-01-13', '09:02:18')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values(8, '50008', 60.00, 'D', '2024-01-13', '16:20:05')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values(9, '50009', 500.00, 'C', '2024-01-14', '07:55:41')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values(10, '50100', 100.00, 'D', '2024-01-14', '18:10:12')

select * from transacciones