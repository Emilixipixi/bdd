create table compras(
  id_compra int not null,
  cedula_cliente char(5) not null,
  codigo_producto int not null,
  fecha_compra date not null,
  cantidad int not null,
  constraint compras_pk primary key (id_compra)
);

alter table compras
add constraint compras_clientes_fk 
foreign key (cedula_cliente) 
references clientes(cedula);

alter table compras
add constraint compras_productos_fk 
foreign key (codigo_producto) 
references productos(codigo);

insert into compras (id_compra, cedula_cliente, codigo_producto, fecha_compra, cantidad)
values (1, '11025', 101, '2024-01-15', 2);

insert into compras (id_compra, cedula_cliente, codigo_producto, fecha_compra, cantidad)
values (2, '09548', 102, '2024-01-16', 1);

insert into compras (id_compra, cedula_cliente, codigo_producto, fecha_compra, cantidad)
values (3, '11025', 103, '2024-01-17', 1);

insert into compras (id_compra, cedula_cliente, codigo_producto, fecha_compra, cantidad)
values (4, '17154', 104, '2024-01-18', 1);

insert into compras (id_compra, cedula_cliente, codigo_producto, fecha_compra, cantidad)
values (5, '09231', 105, '2024-01-19', 3);

select c.nombre, c.apellido, p.nombre as producto, co.cantidad, co.fecha_compra
from compras co
inner join clientes c on co.cedula_cliente = c.cedula
inner join productos p on co.codigo_producto = p.codigo;