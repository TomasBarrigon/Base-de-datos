create database Empresa;
use Empresa;
create table empleados(
	dni int not null,
    apellido varchar(50) not null,
    nombre varchar(50) not null,
    domicilio varchar(50) not null,
    sector varchar(50) not null,
    telefono int not null,
    interno int not null,
    celular int not null,
    estado_civil varchar(50) not null,
    hijos int,
    fecha_nacimiento date not null,
    fecha_ingreso date not null);
create table sueldo(
	basico int not null,
    retenciones int not null,
    asignaciones int not null,
    comisiones int not null,
    mes int not null,
    sueldo_neto int not null);
create table productos(
	descripcion varchar(50),
    stock int not null,
    stock_minimo int not null,
    precio_costo int not null,
    precio_venta int not null,
    demora_entrega int not null);
create table control_horas(
	fecha date not null,
    hora_inicio time not null,
    hora_fin time not null);
create table productos_vendidos_por_vendedores(
	dni int not null,
    apellido varchar(50) not null,
    nombre varchar(50) not null,
    cant int not null,
    descripcion varchar(50),
    fecha_venta date not null);
insert into empleados(DNI, apellido, nombre, domicilio, sector, telefono, interno, celular, estado_civil, hijos, fecha_nacimiento, fecha_ingreso) values
    (111, "apellido1", "nombre1", "domic1", "sec1", 111, 111, 111, "estado1", 1, "1999-10-10", "1999-11-11"),
    (222, "apellido2", "nombre2", "domic2", "sec2", 222, 222, 222, "estado2", 2, "1999-12-12", "1999-11-11"),
    (333, "apellido3", "nombre3", "domic3", "sec3", 333, 333, 333, "estado3", 3, "1999-13-13", "1999-11-11"),
    (444, "apellido4", "nombre4", "domic4", "sec4", 444, 444, 555, "estado4", 4, "1999-14-14", "1999-11-11"),
    (555, "apellido5", "nombre5", "domic5", "sec5", 555, 555, 555,   null   , 5, "1999-15-15", "1999-11-11");
insert into sueldo(basico, retenciones, asignaciones, comisiones, mes, sueldo_neto) values
	(111, 111, 111, 111, 111, 111),
    (222, 222, 222, 222, 222, 222),
    (333, 333, 333, 333, 333, 333),
    (444, 444, 444, 444, 444, 444),
    (555, 555, 555, 555, 555, 555);
insert into productos(descripcion, stock, stock_minimo, precio_costo, precio_venta, demora_entrega) values
	("descripcion1", 111, 111, 111, 111, 111),
    ("descripcion2", 222, 222, 222, 222, 222),
    ("descripcion3", 333, 333, 333, 333, 333),
    ("descripcion4", 444, 444, 444, 444, 444),
    ("descripcion5", 555, 555, 555, 555, 555);
insert into control_horas(fecha, hora_inicio, hora_fin) values
	("2000-01-11", "12:00:00", "13:00:00"),
    ("2000-02-12", "11:00:00", "12:00:00"),
    ("2000-03-13", "10:00:00", "11:00:00"),
    ("2000-04-14", "09:00:00", "10:00:00"),
    ("2000-05-15", "08:00:00", "09:00:00");
insert into productos_vendidos_por_vendedores(dni, apellido, nombre, cant, descripcion, fecha_venta) values
    (1, "apellido 1", "nombre 1", 10, "descripcion1", "2021-03-05"),
    (2, "apellido 2", "nombre 2", 14, "descripcion2", "2021-09-15"),
    (3, "apellido 3", "nombre 3", 13, "descripcion4", "2017-08-25"),
    (4, "apellido 4", "nombre 4", 14, "descripcion5", "2021-02-12"),
    (5, "apellido 5", "nombre 5", 15, "descripcion3", "2020-12-16");
select apellido, nombre from empleados where year(fecha_ingreso)=1995;
select apellido, nombre from empleados where month(fecha_nacimiento)=10;
select apellido, nombre from empleados where day(fecha_nacimiento)<=15 and month(fecha_nacimiento)=1;
select apellido, nombre, year(fecha_ingreso) from empleados order by fecha_ingreso;
select descripcion, adddate(curdate(), interval demora_entrega day) from productos where stock<=stock_minimo;
select nombre, apellido, cant from productos_vendidos_por_vendedores where year(fecha_venta)=year(curdate()) order by cant desc limit 10;
select apellido, nombre, year(fecha_venta), date_format(fecha_venta, "%M"), cant from productos_vendidos_por_vendedores where year(fecha_venta)= 2017 order by month(fecha_venta);
select descripcion, cant, date_format(fecha_venta, "%M") from productos_vendidos_por_vendedores where year(fecha_venta)=2017 order by month(fecha_venta);