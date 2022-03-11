create database pedidos;
use pedidos;
create table clientes (id_cliente int auto_increment primary key, nombre varchar(50), apellido varchar(50), 
direccion varchar(50), telefono int, email varchar(50), fecha_alta date);
create table pedidos (id_pedido int auto_increment primary key, descripcion varchar(50), id_cliente int, 
fecha_compra varchar(50), fecha_entrega varchar(50), descuento decimal (10,2));
create table productos (codigo int auto_increment primary key, producto varchar(50), descripcion varchar(50),
precio_compra decimal(5,2));
create table detallepedido (id_pedido int primary key auto_increment, codigo_producto int, cantidad int, 
precio_venta decimal(5,2));

-- 1
select id_pedido, descripcion, id_cliente, fecha_compra, descuento from pedidos where date between "2017-06-01" and 
"2017-06-30" order by id_cliente, fecha_compra desc;

-- 2
select codigo_producto from detallepedido group by codigo_producto;

-- 3
select * from pedidos where descuento>10;

-- 4
select codigo_producto, cantidad from detallepedido group by codigo_producto;

-- 5
update clientes set email="juan@gmail.com", telefono=45224556 where id_cliente=1;

-- 6
select id_pedido, cantidad from detallepedido where cantidad>3;

-- 7
select id_pedido, descripcion, id_cliente from pedidos where id_pedido in (select id_pedido from detallepedido where
descuento=5 or descuento=10 or descuento=15);

-- 8
delete from clientes where fecha_alta="1999-01-23";

-- 9
insert into clientes (nombre, apellido, direccion, telefono, email, fecha_alta) values ("alejo", "gonzalez", "callefalsa321"
,12341234, "mail@gmail.com", "2004-01-01");

-- 10
select sum(precio_venta) from detallepedido where id_pedido=1;