create database Empresa_insumos;
use Empresa_insumos;
create table clientes (
id_cliente int not null,
nombre varchar(50) not null,
direccion varchar(50) not null,
telefono int not null,
celular int not null,
fax int not null,
mail varchar(50) not null,
website varchar(50) not null,
contacto varchar(50) not null);
create table productos(
codigo_producto int not null,
descripcion varchar(50) not null,
stock int not null,
precio_unitario int not null,
stock_minimo int not null);
create table proveedores(
id_proveedor int not null,
cuit int not null,
razon_social varchar(50) not null,
direccion varchar(50) not null,
telefono int not null,
fax int not null,
mail varchar(50) not null,
website varchar(50) not null,
contacto varchar(50) not null);
create table facturacion (
	id_compra int not null auto_increment primary key, 
    id_proveedor int not null, 
	codigo_producto int not null, 
    cant_unidades int not null, 
    fecha_compra date not null);
insert into clientes (id_cliente, nombre, direccion, telefono, celular, fax, mail, website, contacto) values
(121, "pepe", "calle1", 121, 121, 121, "pepe@gmail", "no tiene", "pepe"),
(122, "jose", "calle2", 122, 122, 122, "jose@gmail", "no tiene", "jose"),
(123, "juan", "calle3", 123, 123, 123, "juan@gmail", "no tiene", "juan"),
(124, "juana", "calle4", 124, 124, 124, "juana@gmail", "juana.com", "juana"),
(125, "sofia", "calle5", 125, 125, 125, "sofia@gmail", "sofia.com", "sofia"),
(126, "florian", "calle6", 126, 126, 126, "florian@gmail", "florian.com", "florian"),
(127, "lucas", "calle7", 127, 127, 127, "lucas@gmail", "lucas.com", "lucas"),
(128, "tomas", "calle8", 128, 128, 128, "tomas@gmail", "tomas.com", "tomas"),
(129, "magali", "calle9", 129, 129, 129, "magali@gmail", "magali.com", "magali"),
(120, "nerea", "calle0", 120, 120, 120, "nerea@gmail", "nerea.com", "nerea");
 insert into productos (codigo_producto, descripcion, stock, precio_unitario, stock_minimo) values
 (121, "desc1", 1, 1, 1),
 (122, "desc2", 2, 2, 2),
 (123, "desc3", 3, 3, 3),
 (124, "desc4", 4, 4, 4),
 (125, "desc5", 5, 5, 5),
 (126, "desc6", 6, 6, 6),
 (127, "desc7", 7, 7, 7),
 (128, "desc8", 8, 8, 8),
 (129, "desc9", 9, 9, 9),
 (120, "desc0", 0, 0, 0);
 insert into proveedores (id_proveedor, cuit, razon_social, direccion, telefono, fax, mail, website, contacto) values
(1, 1, "razon1", "calle1", 1, 1, "1@mail", "1.com", "contacto1"),
(2, 2, "razon2", "calle1", 2, 2, "1@mail", "2.com", "contacto2"),
(3, 3, "razon3", "calle1", 3, 3, "1@mail", "3.com", "contacto3"),
(4, 4, "razon4", "calle1", 4, 4, "1@mail", "4.com", "contacto4"),
(5, 5, "razon5", "calle1", 5, 5, "1@mail", "5.com", "contacto5"),
(6, 6, "razon6", "calle1", 6, 6, "1@mail", "6.com", "contacto6"),
(7, 7, "razon7", "calle1", 7, 7, "1@mail", "7.com", "contacto7"),
(8, 8, "razon8", "calle1", 8, 8, "1@mail", "8.com", "contacto8"),
(9, 9, "razon9", "calle1", 9, 9, "1@mail", "9.com", "contacto9"),
(0, 0, "razon0", "calle1", 0, 0, "1@mail", "0.com", "contacto0");
insert into facturacion (id_proveedor, cant_unidades, codigo_producto, fecha_compra) values
(1, 1, 1, "2017-04-01"), 
(2, 2, 2, "2020-02-02"), 
(3, 3, 3, "2020-02-02"), 
(4, 4, 4, "2020-02-02"), 
(5, 5, 5, "2020-02-02"), 
(6, 6, 6, "2020-02-02"), 
(7, 7, 7, "2020-02-02"),
(8, 8, 8, "2020-02-02"), 
(9, 9, 9, "2020-02-02"), 
(10, 10, 10, "2020-02-02");
select*from productos where stock_minimo>3;
select*from productos where precio_unitario between 20 and 100;
select*from clientes where website!="no tiene";
delete from facturacion where id_proveedor=10;
update proveedores set direccion="San Martin 12345" where id_proveedor=3;
select*from facturacion where fecha_compra="2017-04-01";
select*from facturacion where codigo_producto=5 and id_proveedor=1;
select codigo_producto from facturacion where id_proveedor=5 and cant_unidades>10;
select sum(cant_unidades) from facturacion;
select max(precio_unitario) from productos;
select codigo_producto, descripcion from productos where precio_unitario=9;
select min(precio_unitario) from productos;
select codigo_producto, descripcion from productos where precio_unitario=0;
select avg(precio_unitario) from productos;
select sum(stock) from productos;
select sum(stock) from productos where precio_unitario>45;