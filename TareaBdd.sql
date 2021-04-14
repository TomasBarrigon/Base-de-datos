alumno@ipm-3:~$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 16
Server version: 8.0.23-0ubuntu0.20.04.1 (Ubuntu)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database personas;
ERROR 1007 (HY000): Can't create database 'personas'; database exists
mysql> delete database personas
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database personas' at line 1
mysql> delete database personas;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database personas' at line 1
mysql> create database personas;
ERROR 1007 (HY000): Can't create database 'personas'; database exists
mysql> delete database personas;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database personas' at line 1
mysql> delete personas
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> delete personas;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> ''
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1
mysql> desribe personas;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'desribe personas' at line 1
mysql> create database personas;
ERROR 1007 (HY000): Can't create database 'personas'; database exists
mysql> create database personass;
Query OK, 1 row affected (0.02 sec)

mysql> describe personass;
ERROR 1046 (3D000): No database selected
mysql> use personass;
Database changed
mysql> describe personass;
ERROR 1146 (42S02): Table 'personass.personass' doesn't exist
mysql> create table clientes (dni int, nombre varchar(50), direccion varchar(50), telefono int);
Query OK, 0 rows affected (0.05 sec)

mysql> describe personass
    -> ;
ERROR 1146 (42S02): Table 'personass.personass' doesn't exist
mysql> describe personass;
ERROR 1146 (42S02): Table 'personass.personass' doesn't exist
mysql> describe clientes;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dni       | int         | YES  |     | NULL    |       |
| nombre    | varchar(50) | YES  |     | NULL    |       |
| direccion | varchar(50) | YES  |     | NULL    |       |
| telefono  | int         | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> create table empleados (dni int, apellido varchar(50), nombre varchar(50), direccion int, telefono int, mail varchar(50), cargo varchar(50), edad int);
Query OK, 0 rows affected (0.09 sec)

mysql> describe empleados
    -> ;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dni       | int         | YES  |     | NULL    |       |
| apellido  | varchar(50) | YES  |     | NULL    |       |
| nombre    | varchar(50) | YES  |     | NULL    |       |
| direccion | int         | YES  |     | NULL    |       |
| telefono  | int         | YES  |     | NULL    |       |
| mail      | varchar(50) | YES  |     | NULL    |       |
| cargo     | varchar(50) | YES  |     | NULL    |       |
| edad      | int         | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
8 rows in set (0.01 sec)

mysql> create database automotores
    -> ;
Query OK, 1 row affected (0.01 sec)

mysql> create tabla ambulancias (patente int, nombreDeChofer varchar(50));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'tabla ambulancias (patente int, nombreDeChofer varchar(50))' at line 1
mysql> create tabla ambulancias (nombreDeChofer varchar(50), patente int);
create tabla ambulancias (nombreDeChofer varchar(50), patente int);
^C
mysql> 
mysql> 
mysql> 
mysql> 
mysql> describe ambulancias;
ERROR 1146 (42S02): Table 'personass.ambulancias' doesn't exist
mysql> create table ambulancias (nombreDeChofer varchar(50), patente int);
Query OK, 0 rows affected (0.05 sec)

mysql> describe ambulancias;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| nombreDeChofer | varchar(50) | YES  |     | NULL    |       |
| patente        | int         | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> inster into ambulancias (nombreDeChofer,patente) values ("juan",1234);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inster into ambulancias (nombreDeChofer,patente) values ("juan",1234)' at line 1
mysql> instert into ambulancias (nombreDeChofer,patente) values ("juan",1234);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'instert into ambulancias (nombreDeChofer,patente) values ("juan",1234)' at line 1
mysql> insert into ambulancias(nombreDeChofer,patente)values("Juan",1234);
Query OK, 1 row affected (0.01 sec)

mysql> insert into ambulancias(nombreDeChofer,patente)values("Lucas",2345);
Query OK, 1 row affected (0.01 sec)

mysql> insert into ambulancias(nombreDeChofer,patente)values("Tomas",3456);
Query OK, 1 row affected (0.01 sec)

mysql> insert into ambulancias(nombreDeChofer,patente)values("Alejo",4567);
Query OK, 1 row affected (0.01 sec)

mysql> insert into ambulancias(nombreDeChofer,patente)values("Sol",5678);
Query OK, 1 row affected (0.01 sec)

mysql> describe ambulancias;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| nombreDeChofer | varchar(50) | YES  |     | NULL    |       |
| patente        | int         | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> select nombreDeChofer from ambulancias;
+----------------+
| nombreDeChofer |
+----------------+
| Juan           |
| Lucas          |
| Tomas          |
| Alejo          |
| Sol            |
+----------------+
5 rows in set (0.00 sec)

mysql> select patente from ambulancias;
+---------+
| patente |
+---------+
|    1234 |
|    2345 |
|    3456 |
|    4567 |
|    5678 |
+---------+
5 rows in set (0.00 sec)

mysql> select * from ambulancias;
+----------------+---------+
| nombreDeChofer | patente |
+----------------+---------+
| Juan           |    1234 |
| Lucas          |    2345 |
| Tomas          |    3456 |
| Alejo          |    4567 |
| Sol            |    5678 |
+----------------+---------+
5 rows in set (0.00 sec)

mysql> describe ambulancias
    -> ;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| nombreDeChofer | varchar(50) | YES  |     | NULL    |       |
| patente        | int         | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> use personass;
Database changed
mysql> insert into clientes (dni,nombre,direccion,telefono) value (123,"Valen","sucasa",1212);
Query OK, 1 row affected (0.00 sec)

mysql> select dni from clientes;
+------+
| dni  |
+------+
|  123 |
+------+
1 row in set (0.00 sec)

mysql> select nombre from clientes;
+--------+
| nombre |
+--------+
| Valen  |
+--------+
1 row in set (0.00 sec)

mysql> select direccion from clientes;
+-----------+
| direccion |
+-----------+
| sucasa    |
+-----------+
1 row in set (0.00 sec)

mysql> select telefono from clientes;
+----------+
| telefono |
+----------+
|     1212 |
+----------+
1 row in set (0.00 sec)

mysql> insert into clientes (dni,nombre,direccion,telefono) value (234,"Pepe","sucasa2",1313);
Query OK, 1 row affected (0.01 sec)

mysql> insert into clientes (dni,nombre,direccion,telefono) value (345,"Magu","sucasa3",1414);
Query OK, 1 row affected (0.00 sec)

mysql> insert into clientes (dni,nombre,direccion,telefono) value (456,"Flori","sucasa4",1515);
Query OK, 1 row affected (0.01 sec)

mysql> insert into clientes (dni,nombre,direccion,telefono) value (567,"Chalo","sucasa5",1616);
Query OK, 1 row affected (0.01 sec)

mysql> select*from clientes;
+------+--------+-----------+----------+
| dni  | nombre | direccion | telefono |
+------+--------+-----------+----------+
|  123 | Valen  | sucasa    |     1212 |
|  234 | Pepe   | sucasa2   |     1313 |
|  345 | Magu   | sucasa3   |     1414 |
|  456 | Flori  | sucasa4   |     1515 |
|  567 | Chalo  | sucasa5   |     1616 |
+------+--------+-----------+----------+
5 rows in set (0.00 sec)

mysql> insert into empleados(dni,apellido,nombre,direccion,telefono,mail,cargo,edad) value (000,"dito","maso",111,0000,"dito@ipm","aguatero",16);insert into empleados(dni,apellido,nombre,direccion,telefono,mail,cargo,edad) value
Query OK, 1 row affected (0.01 sec)

    -> insert into empleados(dni,apellido,nombre,direccion,telefono,mail,cargo,edad) value (000,"dito","maso",111,0000,"dito@ipm","aguatero",16);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'insert into empleados(dni,apellido,nombre,direccion,telefono,mail,cargo,edad) va' at line 2
mysql> insert into empleados(dni,apellido,nombre,direccion,telefono,mail,cargo,edad) value (111,"au","isho",222,1111,"auisho@ipm","capo",17);
Query OK, 1 row affected (0.00 sec)

mysql> insert into empleados(dni,apellido,nombre,direccion,telefono,mail,cargo,edad) value (222,"elk","eshi",333,2222,"elkenshi@ipm","capoeira",18);
Query OK, 1 row affected (0.01 sec)

mysql> insert into empleados(dni,apellido,nombre,direccion,telefono,mail,cargo,edad) value (333,"elj","udio",444,3333,"alsan@ipm","niidea",19);
Query OK, 1 row affected (0.01 sec)

mysql> select*from empleados
    -> ;
+------+----------+--------+-----------+----------+--------------+----------+------+
| dni  | apellido | nombre | direccion | telefono | mail         | cargo    | edad |
+------+----------+--------+-----------+----------+--------------+----------+------+
|    0 | dito     | maso   |       111 |        0 | dito@ipm     | aguatero |   16 |
|  111 | au       | isho   |       222 |     1111 | auisho@ipm   | capo     |   17 |
|  222 | elk      | eshi   |       333 |     2222 | elkenshi@ipm | capoeira |   18 |
|  333 | elj      | udio   |       444 |     3333 | alsan@ipm    | niidea   |   19 |
+------+----------+--------+-----------+----------+--------------+----------+------+
4 rows in set (0.00 sec)

mysql> insert into empleados(dni,apellido,nombre,direccion,telefono,mail,cargo,edad) value (444,"elch","illemi",555,4444,"chileno@ipm","ndeah",20);
Query OK, 1 row affected (0.00 sec)

mysql> insert into empleados(dni,apellido,nombre,direccion,telefono,mail,cargo,edad) value (555,"elpla","tita",666,5555,"joakot@ipm","eskere",21);
Query OK, 1 row affected (0.01 sec)

mysql> select*from empleados
    -> ;
+------+----------+--------+-----------+----------+--------------+----------+------+
| dni  | apellido | nombre | direccion | telefono | mail         | cargo    | edad |
+------+----------+--------+-----------+----------+--------------+----------+------+
|    0 | dito     | maso   |       111 |        0 | dito@ipm     | aguatero |   16 |
|  111 | au       | isho   |       222 |     1111 | auisho@ipm   | capo     |   17 |
|  222 | elk      | eshi   |       333 |     2222 | elkenshi@ipm | capoeira |   18 |
|  333 | elj      | udio   |       444 |     3333 | alsan@ipm    | niidea   |   19 |
|  444 | elch     | illemi |       555 |     4444 | chileno@ipm  | ndeah    |   20 |
|  555 | elpla    | tita   |       666 |     5555 | joakot@ipm   | eskere   |   21 |
+------+----------+--------+-----------+----------+--------------+----------+------+
6 rows in set (0.00 sec)

mysql> use clientes
ERROR 1049 (42000): Unknown database 'clientes'
mysql> use personass;
Database changed
mysql> alter table clientes add numeroDeSocio int;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe clientes
    -> ;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| dni           | int         | YES  |     | NULL    |       |
| nombre        | varchar(50) | YES  |     | NULL    |       |
| direccion     | varchar(50) | YES  |     | NULL    |       |
| telefono      | int         | YES  |     | NULL    |       |
| numeroDeSocio | int         | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> alter table empleados add numLegajo int;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> use automotores;
Database changed
mysql> alter table ambulancias add numeroDeUnidad int;
ERROR 1146 (42S02): Table 'automotores.ambulancias' doesn't exist
mysql> describe automotores
    -> ;
ERROR 1146 (42S02): Table 'automotores.automotores' doesn't exist
mysql> describe ambulancias;
ERROR 1146 (42S02): Table 'automotores.ambulancias' doesn't exist
mysql> use personass;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> describe ambulancias
    -> ;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| nombreDeChofer | varchar(50) | YES  |     | NULL    |       |
| patente        | int         | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> select*from ambulancias;
+----------------+---------+
| nombreDeChofer | patente |
+----------------+---------+
| Juan           |    1234 |
| Lucas          |    2345 |
| Tomas          |    3456 |
| Alejo          |    4567 |
| Sol            |    5678 |
+----------------+---------+
5 rows in set (0.00 sec)

mysql> copy ambulancias;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'copy ambulancias' at line 1
mysql> select*into personass.ambulancias from automotores
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.ambulancias from automotores' at line 1
mysql> select*into automotores from personass.ambulancias;
ERROR 1327 (42000): Undeclared variable: automotores
mysql> drop table ambulancias;
Query OK, 0 rows affected (0.03 sec)

mysql> use automotores;
Database changed
mysql> create table ambulancias (nombreDeChofer varchar(50), patente int);
Query OK, 0 rows affected (0.06 sec)

mysql> insert into ambulancias(nombreDeChofer,patente)values("Sol",5678);
Query OK, 1 row affected (0.01 sec)

mysql> insert into ambulancias(nombreDeChofer,patente)values("Alejo",4567);
Query OK, 1 row affected (0.01 sec)

mysql> insert into ambulancias(nombreDeChofer,patente)values("Tomas",3456);
Query OK, 1 row affected (0.01 sec)

mysql> insert into ambulancias(nombreDeChofer,patente)values("Lucas",2345);
Query OK, 1 row affected (0.01 sec)

mysql> insert into ambulancias(nombreDeChofer,patente)values("Juan",1234);
Query OK, 1 row affected (0.01 sec)

mysql> select*from ambulancias;
+----------------+---------+
| nombreDeChofer | patente |
+----------------+---------+
| Sol            |    5678 |
| Alejo          |    4567 |
| Tomas          |    3456 |
| Lucas          |    2345 |
| Juan           |    1234 |
+----------------+---------+
5 rows in set (0.00 sec)

mysql> alter table ambulancias add numeroDeUnidad int;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select*from ambulancias;
+----------------+---------+----------------+
| nombreDeChofer | patente | numeroDeUnidad |
+----------------+---------+----------------+
| Sol            |    5678 |           NULL |
| Alejo          |    4567 |           NULL |
| Tomas          |    3456 |           NULL |
| Lucas          |    2345 |           NULL |
| Juan           |    1234 |           NULL |
+----------------+---------+----------------+
5 rows in set (0.00 sec)

mysql> use personass;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select*from clientes;
+------+--------+-----------+----------+---------------+
| dni  | nombre | direccion | telefono | numeroDeSocio |
+------+--------+-----------+----------+---------------+
|  123 | Valen  | sucasa    |     1212 |          NULL |
|  234 | Pepe   | sucasa2   |     1313 |          NULL |
|  345 | Magu   | sucasa3   |     1414 |          NULL |
|  456 | Flori  | sucasa4   |     1515 |          NULL |
|  567 | Chalo  | sucasa5   |     1616 |          NULL |
+------+--------+-----------+----------+---------------+
5 rows in set (0.00 sec)

mysql> select nombre from clientes;            

^C
mysql> ;
ERROR: 
No query specified

mysql> ;
;
^C
mysql> ;
ERROR: 
No query specified

mysql> SELECT * FROM clientes  WHERE direccion=sucasa; 
ERROR 1054 (42S22): Unknown column 'sucasa' in 'where clause'
mysql> UPDATE clientes SET direccion=CalleFalsa123 WHERE direccion=sucasa;
ERROR 1054 (42S22): Unknown column 'sucasa' in 'where clause'
mysql> UPDATE clientes SET direccion=CalleFalsa123 WHERE direccion=sucasa2;
ERROR 1054 (42S22): Unknown column 'sucasa2' in 'where clause'
mysql> UPDATE clientes SET direccion=sucasa WHERE direccion=CalleFalsa123;
ERROR 1054 (42S22): Unknown column 'CalleFalsa123' in 'where clause'
mysql> UPDATE clientes SET CalleFalsa123=direccion WHERE sucasa=direccion;
ERROR 1054 (42S22): Unknown column 'sucasa' in 'where clause'
mysql> select*from empleados
    -> ;
+------+----------+--------+-----------+----------+--------------+----------+------+-----------+
| dni  | apellido | nombre | direccion | telefono | mail         | cargo    | edad | numLegajo |
+------+----------+--------+-----------+----------+--------------+----------+------+-----------+
|    0 | dito     | maso   |       111 |        0 | dito@ipm     | aguatero |   16 |      NULL |
|  111 | au       | isho   |       222 |     1111 | auisho@ipm   | capo     |   17 |      NULL |
|  222 | elk      | eshi   |       333 |     2222 | elkenshi@ipm | capoeira |   18 |      NULL |
|  333 | elj      | udio   |       444 |     3333 | alsan@ipm    | niidea   |   19 |      NULL |
|  444 | elch     | illemi |       555 |     4444 | chileno@ipm  | ndeah    |   20 |      NULL |
|  555 | elpla    | tita   |       666 |     5555 | joakot@ipm   | eskere   |   21 |      NULL |
+------+----------+--------+-----------+----------+--------------+----------+------+-----------+
6 rows in set (0.00 sec)

mysql> 

