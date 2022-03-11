drop database escuela;
create database escuela;
use escuela;
create table faltas (id_falta int primary key auto_increment,
id_alumno int , fecha date, cantidad int); 
create table alumno (id_alumno int primary key auto_increment, dni int, nombre varchar(50),
direccion varchar(50), telefono int, curso varchar(50), fecha_nacimiento date);
create table notas (id_nota int auto_increment primary key, id_alumno int, id_materia int,
prim_trim int, seg_trim int, terc_trim int, diciembre int, marzo int);
create table materias (id_materia int primary key auto_increment, nombre varchar(50), 
cant_horas int, curso varchar(50), aula varchar(50));

-- 1
delete from alumno where dni=42845014;

-- 2 modificar nota 	trim 1 alumno id 25 materia id 8
update notas set prim_trim=1 where id_alumno=25 and id_materia=8;

-- 3 
select nombre, cant_horas, aula from materias where curso="3C" order by nombre;

-- 4
delete from alumno where curso="6C";

-- 5
update alumno set curso="5C" where curso="4C";

-- 6
select dni, nombre, fecha_nacimiento from alumno where curso="4C" order by date desc;

-- 7 
drop table notas;

-- 8 
select max(prim_trim) from notas where id_materia=2;

-- 9 
select avg(diciembre) from notas where id_materia=3;

-- 10
insert into alumno (dni, nombre, direccion, telefono, curso, fecha_nacimiento)
values (12345678, "tomas", "callefalsa123", 1234882, "5C", "1900/01/01");