/*Crear un stored procedure que sirva para calcular el área de un rectángulo.
  Crear un stored procedure que sirva para indicar si el número indicado es positivo y mayor a 100.
  Crear un stored procedure que sirva para calcular el promedio de tres números recibidos como parámetros.*/

  DELIMITER //

  create procedure AreaPandeloRectangulo(in alto int, largo int)
  BEGIN
    select alto*largo;
    END //
    DELIMITER ;

     DELIMITER //

  create procedure PandeloPositivoYMasDeCien(in Num int)
  BEGIN
    If (Num>100) Then
    select "EsMayorACienAshex";
    end if;
    If (Num>0) Then
    select "EsPositivardo";
    end if;


    END //
    DELIMITER ;

     DELIMITER //

  create procedure PromedioTresPandelos(in Num1 int, Num2 int, Num3 int)
  BEGIN
    select "El promedio es: " + (Num1+Num2+Num3)/3;
    END //
    DELIMITER ;

     DELIMITER //


     call PromedioTresPandelos(8,9,10);