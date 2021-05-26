create database Tuturismo;
use Tuturismo;
create table clientes (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(50) NOT NULL,
    apellido varchar(50) NOT NULL,
    direccion varchar(50) NOT NULL,
    dni int NOT NULL,
    telefono int NOT NULL,
    celular int NOT NULL
    );
create table alojamientos(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(50) NOT NULL,
    categoria varchar(50) NOT NULL,
	direccion varchar(50) NOT NULL,
    telefono int NOT NULL,
    cantidad_de_personas int NOT NULL,
    cantidad_de_pisos int NOT NULL
    );
create table  reservas(
	cliente_id int NOT NULL,
    alojamiento_id int NOT NULL,
    paquete_de_viaje varchar(50) NOT NULL,
    fecha_de_inicio date NOT NULL,
    fecha_de_fin date NOT NULL,
    cantidad_de_personas int NOT NULL,
    lugar varchar(50) NOT NULL,
    cantidad_de_dias int NOT NULL,
    cantidad_de_noches int NOT NULL,
    precio float NOT NULL,
    cantidad_de_excursiones int NOT NULL,
    tipo_de_viaje varchar(50) NOT NULL
    );
insert into clientes (apellido, nombre, direccion, dni, telefono, celular) values
	("Garcia", "Juana", "Calle1", 123, 111, 111),
    ("Graciorela", "Juan", "Calle2", 234, 222, 222),
    ("Gimenez", "Pepe", "Calle3", 345, 333, 333),
    ("Juarez", "Roberto", "Calle4", 456, 444, 444),
    ("Haez", "Carlos", "Calle5", 567, 555, 555),
    ("Ramirez", "Juliana", "Calle6", 678, 666, 666),
    ("Gonzalez", "Sol", "Calle7", 789, 777, 777),
    ("Granados", "Maguna", "Calle8", 891, 888, 888),
    ("Jonson", "Florian", "Calle9", 912, 999, 999);
insert into alojamientos(nombre, categoria, direccion, telefono, cantidad_de_personas, cantidad_de_pisos) values
	("Aloj1", "1 estrellas", "Calle1", 123, 1, 10),
    ("Aloj2", "2 estrellas", "Calle2", 234, 2, 9),
    ("Aloj3", "3 estrellas", "Calle3", 345, 3, 8),
    ("Aloj4", "4 estrellas", "Calle4", 456, 4, 7),
    ("Aloj5", "5 estrellas", "Calle5", 567, 5, 6),
    ("Aloj6", "4 estrellas", "Calle6", 678, 6, 5),
    ("Aloj7", "3 estrellas", "Calle7", 789, 7, 4),
    ("Aloj8", "2 estrellas", "Calle8", 890, 8, 3),
    ("Aloj9", "1 estrellas", "Calle9", 901, 9, 2),
    ("Aloj10", "0 estrellas", "Calle10", 012, 10, 1);
insert into reservas(cliente_id, alojamiento_id, paquete_de_viaje, fecha_de_inicio, fecha_de_fin, cantidad_de_personas, lugar, cantidad_de_dias, cantidad_de_noches, precio, cantidad_de_excursiones, tipo_de_viaje) values
	(1, 1, "paquete1", "2017-04-04", "2017-05-01", 1, "Bariloche", 1, 2, 6000.60, 1, "bus"),
    (2, 2, "paquete2", "2017-03-04", "2017-05-02", 2, "Lugar1", 2, 3, 6000.60, 2, "bus"),
    (3, 3, "paquete3", "2017-04-04", "2017-05-03", 3, "Lugar2", 3, 4, 6000.60, 3, "bus"),
    (4, 4, "paquete4", "2017-04-04", "2018-01-04", 4, "Lugar3", 4, 5, 1000.0, 4, "bus"),
    (5, 5, "paquete5", "2017-05-04", "2018-01-05", 5, "Lugar4", 5, 6, 1000.0, 5, "barco"),
    (6, 6, "paquete6", "2017-05-04", "2018-01-06", 6, "Lugar5", 6, 7, 1000.0, 6, "barco"),
    (7, 7, "paquete7", "2017-05-04", "2018-01-07", 7, "Lugar6", 7, 8, 1000.0, 7, "barco"),
    (8, 8, "paquete8", "2017-05-04", "20218-01-08", 8, "Lugar7", 8, 9, 1000.0, 8, "aereo"),
    (9, 9, "paquete9", "2017-05-04", "20218-01-09", 9, "Lugar8", 9, 10, 1000.0, 9, "aereo"),
    (10, 10, "paquete10", "2017-05-04", "2018-01-10", 10, "Lugar9", 10, 11, 1000.0, 10, "aereo");
select*from clientes;
select*from clientes where id=6;
select apellido,nombre,telefono,celular from clientes where apellido like 'Gar%';
select apellido,nombre,telefono,celular from clientes where apellido like '%ez';
select apellido,nombre,telefono,celular from clientes where apellido like '%ar%';
update clientes set direccion="San Juan 1234" where id=10;
delete from clientes where id=10;
select*from reservas where cantidad_de_excursiones>3 order by lugar;
select*from reservas where cantidad_de_excursiones>3 order by cantidad_de_dias desc;
select*from reservas where cantidad_de_dias=2 and precio>6000.50;
select*from reservas where fecha_de_inicio>="2017-05-01" and fecha_de_inicio<="2017-05-10";
delete from reservas where cliente_id=10;
update alojamientos set direccion="Belgrano 15897" where id=3;
select*from reservas where fecha_de_inicio<="2017-04-30" and fecha_de_inicio>="2017-04-01" and cantidad_de_personas>2;
delete from clientes where id=6;
update reservas set cantidad_de_dias=7 where lugar="Bariloche";
update reservas set cantidad_de_noches=8 where lugar="Bariloche";