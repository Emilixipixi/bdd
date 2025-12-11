create table clientes(
  cedula char(5) not null,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  telefono char(10),
  constraint clientes_pk primary key (cedula)
);

insert into clientes (cedula, nombre, apellido, telefono)
values ('11025', 'Juan', 'Pérez', '0998765432');

insert into clientes (cedula, nombre, apellido, telefono)
values ('09548', 'María', 'González', '0987654321');

insert into clientes (cedula, nombre, apellido, telefono)
values ('17154', 'Carlos', 'Ramírez', '0976543210');

insert into clientes (cedula, nombre, apellido, telefono)
values ('09231', 'Ana', 'López', '0965432109');

insert into clientes (cedula, nombre, apellido, telefono)
values ('11036', 'Luis', 'Martínez', '0954321098');

insert into clientes (cedula, nombre, apellido, telefono)
values ('17548', 'Elena', 'Torres', '0943210987');

insert into clientes (cedula, nombre, apellido, telefono)
values ('09457', 'Pedro', 'Sánchez', '0932109876');

insert into clientes (cedula, nombre, apellido, telefono)
values ('17123', 'Laura', 'Moreno', '0921098765');

insert into clientes (cedula, nombre, apellido, telefono)
values ('11047', 'Diego', 'Vargas', '0910987654');

insert into clientes (cedula, nombre, apellido, telefono)
values ('09563', 'Sofia', 'Castro', '0909876543');

alter table cuentas
add constraint cuentas_clientes_fk 
foreign key (cedula_propietario) 
references clientes(cedula);

select * from clientes;

select * from cuentas;