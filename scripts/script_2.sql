--script 2

create table cuentas(
  numero_cuenta char(5) not null,
  cedula_propietario char(5) not null,
  fecha_creacion date not null,
  saldo money not null, 
  constraint cuentas_pk primary key (numero_cuenta)
)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('50001', '11025', '2023-01-15', 250.75)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('50002', '09548', '2022-11-03', 1200.00)


insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('50003', '17154', '2024-02-20', 89.50)


insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('50004', '09231', '2021-07-10', 540.00)


insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('50005', '11036', '2023-05-28', 3000.90)


insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('50006', '17548', '2020-12-01', 45.00)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('50007', '09457', '2024-03-05', 780.40)


insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('50008', '17123', '2022-04-19', 159.99)


insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('50009', '11047', '2021-09-22', 850.00)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('50100', '09563', '2023-10-08', 60.25)

select * from cuentas