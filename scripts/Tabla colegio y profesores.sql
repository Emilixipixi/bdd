create table colegio(
  id_colegio int not null,
  nombre varchar(100) not null,
  direccion varchar(200) not null,
  telefono char(10) not null,
  constraint colegio_pk primary key (id_colegio)
);

insert into colegio (id_colegio, nombre, direccion, telefono)
values (1, 'Colegio Nacional Quito', 'Av. Amazonas N24-56', '0223456789');

insert into colegio (id_colegio, nombre, direccion, telefono)
values (2, 'Unidad Educativa Pichincha', 'Calle García Moreno 102', '0223456790');

create table profesores(
  cedula char(10) not null,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  especialidad varchar(100),
  id_colegio int not null,
  constraint profesores_pk primary key (cedula)
);

alter table profesores
add constraint profesores_colegio_fk 
foreign key (id_colegio) 
references colegio(id_colegio);

insert into profesores (cedula, nombre, apellido, especialidad, id_colegio)
values ('1700123456', 'Roberto', 'Mendoza', 'Matemáticas', 1);

insert into profesores (cedula, nombre, apellido, especialidad, id_colegio)
values ('1800234567', 'Carmen', 'Silva', 'Física', 1);

insert into profesores (cedula, nombre, apellido, especialidad, id_colegio)
values ('1900345678', 'Francisco', 'Ortiz', 'Química', 2);

alter table estudiantes
add column cedula_profesor char(10);

alter table estudiantes
add constraint estudiantes_profesores_fk 
foreign key (cedula_profesor) 
references profesores(cedula);

update estudiantes set cedula_profesor = '1700123456' where cedula = '1102547890';

update estudiantes set cedula_profesor = '1700123456' where cedula = '0954871203';

update estudiantes set cedula_profesor = '1800234567' where cedula = '1715489632';

update estudiantes set cedula_profesor = '1800234567' where cedula = '0923154786';

update estudiantes set cedula_profesor = '1900345678' where cedula = '1103652489';

update estudiantes set cedula_profesor = '1900345678' where cedula = '1754896521';

update estudiantes set cedula_profesor = '1700123456' where cedula = '0945781236';

update estudiantes set cedula_profesor = '1800234567' where cedula = '1712365984';

select c.nombre as colegio, p.nombre, p.apellido, p.especialidad
from profesores p
inner join colegio c on p.id_colegio = c.id_colegio;

select p.nombre as profesor, p.apellido as apellido_profesor, 
       e.nombre as estudiante, e.apellido as apellido_estudiante
from estudiantes e
inner join profesores p on e.cedula_profesor = p.cedula
order by p.apellido;