--script 4

create table registros_entrada (
  codigo_registro int not null,
  cedula_empleado char(10) not null,
  fecha date not null,
  hora time not null,
  constraint registros_entrada_pk primary key (codigo_registro)
)

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora) 
values (1, '1102547890', '2024-01-10', '08:05:12')

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora) 
values(2, '0954871203', '2024-01-10', '08:12:45')

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora) 
values(3, '1715489632', '2024-01-10', '07:58:30')

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora) 
values(4, '0923154786', '2024-01-10', '08:20:10')

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora) 
values(5, '1103652489', '2024-01-11', '08:02:55')

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora) 
values(6, '1754896521', '2024-01-11', '07:50:40')

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora) 
values(7, '0945781236', '2024-01-11', '08:17:29')

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora) 
values(8, '1712365984', '2024-01-11', '08:00:05')

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora) 
values(9, '1104789523', '2024-01-12', '07:55:48')

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora) 
values(10,'0956321478', '2024-01-12', '08:10:33')

select * from registros_entrada