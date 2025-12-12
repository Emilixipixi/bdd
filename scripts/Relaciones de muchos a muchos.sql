-- CREACIÓN DE TABLAS MUCHOS A MUCHOS

-- 1. RELACIÓN MUCHOS A MUCHOS ENTRE USUARIOS Y GRUPO

create table usuarios(
  id int not null,
  nombre varchar(25) not null,
  apellido varchar(25) not null,
  fecha_nacimiento date,
  constraint usuarios_pk primary key(id)
);

create table grupo(
  id int not null,
  nombre varchar(25) not null,
  descripcion varchar(75),
  fecha_creacion date,
  constraint grupo_pk primary key(id)
);

create table usuario_grupo(
  us_id int not null,
  gr_id int not null,
  constraint usuario_grupo_pk primary key(us_id, gr_id),
  constraint usuario_grupo_usuarios_fk foreign key(us_id) references usuarios(id),
  constraint usuario_grupo_grupo_fk foreign key(gr_id) references grupo(id)
);


-- 2. RELACIÓN MUCHOS A MUCHOS ENTRE HABITACIONES Y HUÉSPEDES

create table habitaciones(
  habitacion_numero int not null,
  precio_por_noche decimal not null,
  piso int not null,
  max_personas int,
  constraint habitaciones_pk primary key(habitacion_numero)
);

create table huespedes(
  id int not null,
  nombres varchar(45) not null,
  apellidos varchar(45) not null,
  telefono char(10),
  correo varchar(45),
  direccion varchar(45),
  ciudad varchar(45),
  pais varchar(45),
  constraint huespedes_pk primary key(id)
);

create table reservas(
  inicio_fecha date,
  fin_fecha date,
  habitacion int not null,
  huesped_id int not null,
  constraint reservas_pk primary key(habitacion, huesped_id),
  constraint reservas_habitaciones_fk foreign key(habitacion) references habitaciones(habitacion_numero),
  constraint reservas_huespedes_fk foreign key(huesped_id) references huespedes(id)
);


-- 3. RELACIÓN MUCHOS A MUCHOS ENTRE MUNICIPIO Y PROYECTO

create table ciudad(
  id int not null,
  nombre varchar(45) not null,
  constraint ciudad_pk primary key(id)
);

create table municipio(
  id int not null,
  nombre varchar(45),
  ciudad_id int,
  constraint municipio_pk primary key(id),
  constraint municipio_ciudad_fk foreign key(ciudad_id) references ciudad(id)
);

create table proyecto(
  id int not null,
  proyecto varchar(50) not null,
  monto money not null,
  fecha_inicio date,
  fecha_entrega date,
  constraint proyecto_pk primary key(id)
);

create table proyecto_municipio(
  municipio_id int not null,
  proyecto_id int not null,
  constraint proyecto_municipio_pk primary key(proyecto_id, municipio_id),
  constraint proyecto_municipio_municipio_fk foreign key(municipio_id) references municipio(id),
  constraint proyecto_municipio_proyecto_fk foreign key(proyecto_id) references proyecto(id)
);



-- CONSULTAS - RELACIÓN USUARIOS Y GRUPO


-- Consulta 1
select u.nombre as nombre_usuario, g.nombre as nombre_grupo
from usuarios u
inner join usuario_grupo ug on u.id = ug.us_id
inner join grupo g on g.id = ug.gr_id;

-- Subconsulta 1
select nombre
from usuarios
where id in (select us_id from usuario_grupo where gr_id = 1);

-- Función de agregación 1
select g.nombre, count(ug.us_id) as total_usuarios
from grupo g
inner join usuario_grupo ug on g.id = ug.gr_id
group by g.nombre;

-- Consulta 2
select u.nombre as nombre_usuario, g.nombre as nombre_grupo
from usuarios u
inner join usuario_grupo ug on u.id = ug.us_id
inner join grupo g on g.id = ug.gr_id
where g.nombre like '%intensivo%';

-- Subconsulta 2
select nombre
from usuarios
where id in (select us_id from usuario_grupo where gr_id = 2);

-- Función de agregación 2
select g.nombre, max(ug.us_id) as maximo_usuario, min(ug.us_id) as minimo_usuario
from grupo g
inner join usuario_grupo ug on g.id = ug.gr_id
group by g.nombre;

-- Consulta 3
select u.nombre as nombre_usuario, g.fecha_creacion
from usuarios u
inner join usuario_grupo ug on u.id = ug.us_id
inner join grupo g on g.id = ug.gr_id
where g.fecha_creacion between '2020-03-08' and '2022-03-08';

-- Subconsulta 3
select nombre
from usuarios
where id in (select us_id from usuario_grupo where gr_id = 3);

-- Función de agregación 3
select g.descripcion, count(ug.us_id) as total_usuarios
from grupo g
inner join usuario_grupo ug on g.id = ug.gr_id
where g.descripcion like '%matutino%'
group by g.descripcion;



-- CONSULTAS - RELACIÓN HABITACIONES Y HUÉSPEDES


-- Consulta 1
select h.habitacion_numero, hs.nombres, hs.apellidos
from habitaciones h
inner join reservas r on h.habitacion_numero = r.habitacion
inner join huespedes hs on hs.id = r.huesped_id;

-- Subconsulta 1
select nombres, apellidos
from huespedes
where id in (select huesped_id from reservas where habitacion = 2);

-- Función de agregación 1
select h.habitacion_numero, count(r.huesped_id) as total_huespedes
from habitaciones h
inner join reservas r on h.habitacion_numero = r.habitacion
group by h.habitacion_numero;

-- Consulta 2
select h.habitacion_numero, h.piso, hs.nombres, hs.apellidos
from habitaciones h
inner join reservas r on h.habitacion_numero = r.habitacion
inner join huespedes hs on hs.id = r.huesped_id
where h.piso = 4;

-- Subconsulta 2
select nombres, apellidos
from huespedes
where id in (select huesped_id from reservas where habitacion = 3);

-- Función de agregación 2
select h.habitacion_numero, avg(r.huesped_id) as promedio_huespedes
from habitaciones h
inner join reservas r on h.habitacion_numero = r.habitacion
group by h.habitacion_numero;

-- Consulta 3
select h.habitacion_numero, hs.nombres, hs.apellidos
from habitaciones h
inner join reservas r on h.habitacion_numero = r.habitacion
inner join huespedes hs on hs.id = r.huesped_id;

-- Subconsulta 3
select nombres, apellidos
from huespedes
where id in (select huesped_id from reservas where habitacion = 4);

-- Función de agregación 3
select h.habitacion_numero, sum(h.precio_por_noche) as total_recaudado
from habitaciones h
inner join reservas r on h.habitacion_numero = r.habitacion
group by h.habitacion_numero;



-- CONSULTAS - RELACIÓN MUNICIPIO Y PROYECTO


-- Consulta 1
select m.nombre as nombre_municipio, p.proyecto as nombre_proyecto
from municipio m
inner join proyecto_municipio pm on m.id = pm.municipio_id
inner join proyecto p on p.id = pm.proyecto_id;

-- Subconsulta 1
select proyecto
from proyecto
where id in (select proyecto_id from proyecto_municipio where municipio_id = 1);

-- Función de agregación 1
select m.nombre, count(pm.proyecto_id) as total_proyectos
from municipio m
inner join proyecto_municipio pm on m.id = pm.municipio_id
group by m.nombre;

-- Consulta 2
select m.nombre as nombre_municipio, p.proyecto as nombre_proyecto
from municipio m
inner join proyecto_municipio pm on m.id = pm.municipio_id
inner join proyecto p on p.id = pm.proyecto_id
where m.nombre like '%GAD%';

-- Función de agregación 2
select m.nombre, min(pm.proyecto_id) as minimo_proyecto
from municipio m
inner join proyecto_municipio pm on m.id = pm.municipio_id
group by m.nombre;

-- Consulta 3
select m.nombre as nombre_municipio, c.nombre as nombre_ciudad
from municipio m
inner join ciudad c on m.ciudad_id = c.id;

-- Subconsulta 3
select proyecto
from proyecto
where id in (select proyecto_id from proyecto_municipio where municipio_id = 3);

-- Función de agregación 3
select m.nombre, max(pm.proyecto_id) as maximo_proyecto
from municipio m
inner join proyecto_municipio pm on m.id = pm.municipio_id
group by m.nombre;