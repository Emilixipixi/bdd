--script 1

create table productos(
  codigo int not null,
  nombre varchar (50) not null,
  descripcion varchar(200),
  precio money not null,
  stock int not null,
  constraint productos_pk primary key (codigo)
)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (101,'Mouse','Inalambrico',18.50,35)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (102,'Teclado','Mecanico',59.90,20)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (103,'Audifonos','Bluetooth',45.00,50)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (104,'Monitor','24" Full HD',129.99,15)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (105,'USB','64GB',12.00,80)


insert into productos (codigo,nombre,precio,stock)
values (201,'Disco Duro',59.00,22)

insert into productos (codigo,nombre,precio,stock)
values (202,'Cargador',14.50,75)

insert into productos (codigo,nombre,precio,stock)
values (203,'Samartwatch',89.90,12)





select * from productos