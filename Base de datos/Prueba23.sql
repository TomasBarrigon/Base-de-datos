-- 1:
create database libreria;
use libreria;
-- 2:
create table libros (
id_libro int not null auto_increment primary key,
titulo varchar(50) not null,
autor varchar(50) not null,
editorial varchar(50) not null,
precio int not null,
stock int not null,
fecha_lanzamiento date not null);
create table ventas(
fecha_venta date not null,
id_libro int not null,
cant int not null);
insert into libros(titulo, autor, editorial, precio, stock, fecha_lanzamiento) values
("Matematica", "Pablo Effeberger", "Kapelusz", 1500, 10, "2020-02-02"),
("Mis cinco sentidos", "Carolina Micha", "Sudamericana", 1400, 7, "2019-02-05"),
("El mono relojero", "Constatino Vigil", "Atlantida", 800, 12, "2021-05-05"),
("Redes Informatica", "Miguel Dederkremer", "Raduses", 1000, 5, "2019-11-01"),
("Freddy Mercury, biografia", "Lesley Ann Jones", "Alianza", 2200, 5, "2018-06-05");
insert into ventas(fecha_venta, id_libro, cant) values
("2021-05-03", 4, 5),
("2020-12-06", 5, 3),
("2021-05-03", 3, 10),
("2019-11-24", 2, 4),
("2018-05-03", 1, 6);
-- 3:
select titulo from libros where stock>8;
-- 4:
select titulo from libros where stock<=5;
-- 5:
select titulo from libros where precio between 1000 and 2000;
-- 6:
select editorial from libros where editorial like "%a%" or editorial like "a%" or editorial like "%a";
-- 7:
select editorial from libros where editorial like "s%";
-- 8:
select titulo from libros order by fecha_lanzamiento;
-- 9:
select*from ventas order by fecha_venta desc;
-- 10:
select sum(stock) from libros;
-- 11:
select titulo from libros where precio in (select max(precio) from libros);
-- 12:
select titulo from libros where precio in (select min(precio) from libros);
-- 13:
select avg(precio) from libros;
-- 14:
insert into ventas(fecha_venta, id_libro, cant) values
("2021-05-03", 4, 5),
("2020-12-06", 5, 3),
("2021-05-03", 3, 10),
("2019-11-24", 2, 4),
("2018-05-03", 1, 6);
update libros set stock=stock-(select unidades from ventas where id_libro=4) where id_libro=4;
update libros set stock=stock-(select unidades from ventas where id_libro=5) where id_libro=5;
update libros set stock=stock-(select unidades from ventas where id_libro=3) where id_libro=3;
update libros set stock=stock-(select unidades from ventas where id_libro=2) where id_libro=2;
update libros set stock=stock-(select unidades from ventas where id_libro=1) where id_libro=1;
-- 15
select titulo from libros where id_libro in (select id_libro from ventas where fecha_venta="2021-05-03");
-- 16
select*from ventas where fecha_venta between "2018-05-03" and "2019-12-31" order by fecha_venta desc;
-- 17
select titulo from libros where stock between 4 and 14 limit 3;
-- 18
insert into libros(titulo, autor, editorial, stock, fecha_lanzamiento) values
("libro x", "autor x", "editorial x", 1, "2020-01-01");
-- 19
update libros set precio=1200 where titulo="libro x";
-- 20
select sum(stock) from libros where precio >= (select avg(precio) from libros);
-- 21
alter table libros add ISBN int not null;
-- 22
select editorial, titulo, precio from libros where id_libro in (select id_libro from ventas where unidades in (select max(cant) from ventas));
-- 23
select stock from libros where id_libro in (select id_libro from ventas where fecha_venta in (select max(fecha_venta) from ventas));