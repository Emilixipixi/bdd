create table plataformas(
  id_plataforma int not null,
  nombre_plataforma varchar(50) not null,
  codigo_videojuego int not null,
  constraint plataformas_pk primary key (id_plataforma)
);

alter table plataformas
add constraint plataformas_videojuegos_fk 
foreign key (codigo_videojuego) 
references videojuegos(codigo);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (1, 'Nintendo Switch', 1);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (2, 'PlayStation 4', 2);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (3, 'PlayStation 5', 2);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (4, 'PC', 3);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (5, 'Xbox One', 3);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (6, 'PlayStation 4', 3);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (7, 'Nintendo Switch', 3);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (8, 'PlayStation 4', 4);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (9, 'Xbox One', 4);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (10, 'PC', 4);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (11, 'PC', 5);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (12, 'PlayStation 5', 5);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (13, 'Xbox Series X', 5);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (14, 'Nintendo Switch', 5);

select v.nombre as videojuego, p.nombre_plataforma
from plataformas p
inner join videojuegos v on p.codigo_videojuego = v.codigo
order by v.nombre;