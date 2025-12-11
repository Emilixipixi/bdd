create table persona(
  cedula char(10) not null,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  cargo varchar(50),
  departamento varchar(50),
  constraint persona_pk primary key (cedula)
);

insert into persona (cedula, nombre, apellido, cargo, departamento)
values ('1102547890', 'Carlos', 'Mendoza', 'Analista', 'Sistemas');

insert into persona (cedula, nombre, apellido, cargo, departamento)
values ('0954871203', 'Andrea', 'López', 'Gerente', 'Ventas');

insert into persona (cedula, nombre, apellido, cargo, departamento)
values ('1715489632', 'Luis', 'Pérez', 'Desarrollador', 'Sistemas');

insert into persona (cedula, nombre, apellido, cargo, departamento)
values ('0923154786', 'Valeria', 'Ramírez', 'Contador', 'Finanzas');

insert into persona (cedula, nombre, apellido, cargo, departamento)
values ('1103652489', 'Jorge', 'Sandoval', 'Asistente', 'Recursos Humanos');

insert into persona (cedula, nombre, apellido, cargo, departamento)
values ('1754896521', 'Diana', 'Calle', 'Diseñadora', 'Marketing');

insert into persona (cedula, nombre, apellido, cargo, departamento)
values ('0945781236', 'Fernando', 'Vera', 'Supervisor', 'Producción');

insert into persona (cedula, nombre, apellido, cargo, departamento)
values ('1712365984', 'María', 'Suárez', 'Secretaria', 'Administración');

insert into persona (cedula, nombre, apellido, cargo, departamento)
values ('1104789523', 'Miguel', 'Rojas', 'Técnico', 'Mantenimiento');

insert into persona (cedula, nombre, apellido, cargo, departamento)
values ('0956321478', 'Patricia', 'Gómez', 'Coordinadora', 'Logística');

alter table registros_entrada
add constraint registros_persona_fk 
foreign key (cedula_empleado) 
references persona(cedula);

select p.nombre, p.apellido, p.cargo, p.departamento, 
       r.fecha, r.hora
from registros_entrada r
inner join persona p on r.cedula_empleado = p.cedula
order by r.fecha, r.hora;