--script 3

create table estudiantes(
  cedula char (10) not null,
  nombre varchar (50) not null,
  apellido varchar (50) not null,
  email varchar (50) not null,
  fecha_nacimiento date,
  constraint estudiantes_pk primary key(cedula)
)
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values('1102547890', 'Carlos', 'Mendoza', 'carlos.mendoza@example.com', '2002-05-14')

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values('0954871203', 'Andrea', 'Lopez', 'andrea.lopez@example.com', '2001-11-30')

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values('1715489632', 'Luis', 'Perez', 'luis.perez@example.com', '2003-03-22')

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values('0923154786', 'Valeria', 'Ramirez', 'valeria.ramirez@example.com', '2000-08-09')

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values('1103652489', 'Jorge', 'Sandoval', 'jorge.sandoval@example.com', '2002-12-01')

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values('1754896521', 'Diana', 'Calle', 'diana.calle@example.com', '2001-07-18')

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values('0945781236', 'Fernando', 'Vera', 'fernando.vera@example.com', '2004-01-05')

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values('1712365984', 'María', 'Suarez', 'maria.suarez@example.com', '2003-09-27')

select * from estudiantes