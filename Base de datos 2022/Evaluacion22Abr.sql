create database datos;
use datos;
create table Dueños(
id_dueño int, 
id_mascota int, 
nombre varchar(50));
create table Mascotas(
id_mascota int,
edad int,
peso int,
id_vet int);
create table Veterinarios(
telefono int,
id_vet int);

/*- Crear las consultas para las siguientes consultas 
según el DER presentado:

1. Seleccionar a todas las mascotas agrupadas por edad.*/

select*from Mascotas group by edad;

/*2. Seleccionar a todas las mascotas agrupadas por peso.*/

select*from Mascotas group by peso;

/*3. Seleccionar la cantidad de mascotas que hay según sus
edades. */

select count id_mascota, edad, peso from Mascotas group by edad;

/*4. Seleccionar la cantidad de mascotas que hay según sus 
pesos.*/

select count id_mascota, edad, peso from Mascotas group by peso;

/*5. Seleccionar la suma de los pesos de aquellas mascotas 
cuyas edades están entre los 5 y los 10 años.*/

select sum(peso) from Mascotas where edad between 5 and 10;

/*6. Seleccionar el peso promedio de las mascotas.*/

select avg(peso) from mascotas;


- Stored Procedure

/*7. Crear un SP que reciba un id_amo y luego retorne la cantidad
de mascotas que tiene.*/

DELIMITER //

CREATE PROCEDURE cant_mascotas(in id_dueño INT)
BEGIN
	SET id_dueño = id;
	select count id_mascota from Dueños where id_dueño = id;
END //

/*8. Crear un SP que reciba un id_mascota y luego muestre si la
mascota pesa más de 15 kg. */

CREATE PROCEDURE Mascota_pesada(IN id_mascota INT)
BEGIN
	SET id_mascota = id;
    select * from Mascotas where id=id_mascota and peso > 15;
END //

/*9. Crear un SP que reciba un id_veterinario y luego imprima
todos sus datos*/

CREATE PROCEDURE DatosVet(IN id_veterinario INT)
BEGIN
	SET id_veterinario = id;
	select * from Veterinarios where id_veterinario = id;
END //

/*10. Crear un SP que reciba un número y luego muestre aquellas
mascotas que tienen un peso mayor o igual al indicado.
    - Invocar a este último SP pasándole el número 6 como parámetro.*/
    
CREATE PROCEDURE PesoIgualOMayor(IN num INT)
BEGIN
    select * from Mascotas where num = id_mascota and peso >= num;
END //

Call PesoIgualOMayor(3);
		 
