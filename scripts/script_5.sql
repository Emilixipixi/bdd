--script 5

create table videojuegos(
  codigo int not null,
  nombre varchar(100) not null,
  descripcion varchar(300),
  valoracion int not null,
  constraint videojuegos_pk primary key (codigo)
)

insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values(1, 'The Legend of Zelda: Breath of the Wild', 'Un mundo abierto lleno de aventuras, libertad y exploración.', 10)

insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values(2, 'God of War', 'Kratos y su hijo Atreus enfrentan criaturas nórdicas en una historia épica.', 9)

insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values(3, 'Minecraft', 'Videojuego sandbox donde puedes construir, explorar y sobrevivir en mundos generados.', 9)

insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values(4, 'Red Dead Redemption 2', 'Aventura del viejo oeste con una narrativa profunda y mundo detallado.', 10)

insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values(5, 'Fortnite', 'Juego battle royale multijugador con construcción y eventos dinámicos.', 8)

insert into videojuegos (codigo, nombre, valoracion) 
values(6, 'Super Mario Odyssey', 10)

insert into videojuegos (codigo, nombre, valoracion) 
values(7, 'Hollow Knight', 9)

insert into videojuegos (codigo, nombre, valoracion) 
values(8, 'Call of Duty: Modern Warfare', 8)

select * from videojuegos