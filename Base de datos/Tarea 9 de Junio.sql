create database banco;
use banco;
create table empleados(
id_empleado int auto_increment primary key not null,
id_departamento int not null,
puesto varchar(50) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
dni int not null,
salario int not null);
create table departamentos(
id_departamento int auto_increment primary key not null,
nombre varchar(50) not null,
cant_empleados int not null,
director_nombre varchar(50) not null);
insert into empleados (id_departamento, puesto, nombre, apellido, dni, salario) values
(1, "Vendedor1", "David", "Austin", 10, 2000000),
(2, "Vendedor2", "Juan", "Ramirez", 9, 2000000),
(3, "Vendedor3", "Juana", "Ramirez", 8, 2000000),
(4, "Vendedor4", "Pedro", "Ramirez", 7, 2000000),
(5, "Vendedor5", "Roberto", "Ramirez", 6, 2000000),
(6, "Vendedor6", "Lolito", "Ramirez", 5, 2000000),
(7, "Vendedor7", "Willy", "Ramirez", 4, 2000000),
(8, "Vendedor8", "Santino", "Ramirez", 3, 2000000),
(9, "Vendedor9", "Santiago", "Ramirez", 2, 2000000),
(10, "Vendedor10", "Pepe", "Ramirez", 1, 2000000);
insert into departamentos(nombre, cant_empleados, director_nombre) values
("Marketing", 1, "Juan"),
("Fianzas", 2, "Juana"),
("Sistemas", 3, "Pedro"),
("Ventas", 4, "David"),
("Ventas", 5, "Roberto"),
("Ventas", 6, "Lolito"),
("Ventas", 7, "Willy"),
("Ventas", 8, "Santino"),
("Ventas", 9, "Santiago"),
("Ventas", 10, "Pepe");
select*from empleados where id_departamento in (select id_departamento from departamentos where nombre="Marketing");
select nombre, apellido from empleados where salario<(select avg(salario) from empleados);
select nombre, apellido from empleados where salario<(select avg(salario) from empleados where puesto="Vendedor");
select nombre, apellido from empleados where puesto in (select puesto from empleados where id_empleado=1);
select nombre, apellido from empleados where id_departamento in (select id_departamento from departamentos where nombre="Sistemas");
