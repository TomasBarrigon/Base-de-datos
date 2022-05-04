//Creamos la clase main
import java.sql.Array;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
         System.out.println("Cuantos numeros quiere ingresar?");
         Scanner IngresaCantNums = new Scanner(System.in);
         int cantNums = IngresaCantNums.nextInt();
         ArrayList<Integer> arrayNumeros = new ArrayList<>();

         for (int i=0; i<cantNums; i++) {
             System.out.println("Que numero quiere ingresar?");
             Scanner IngresarNumero = new Scanner(System.in);
             int numero = IngresarNumero.nextInt();
             arrayNumeros.add(numero);
         }

         HashSet<Integer> setDeNumeros = new HashSet();

         for (Integer nro: arrayNumeros) {
            setDeNumeros.add(nro);
         }

         arrayNumeros.clear();

        for(Integer nro: setDeNumeros) {
            arrayNumeros.add(nro);
        }

        for (Integer nro: arrayNumeros) {
            System.out.println(nro);
        }



        System.out.println("Cuantos numeros quiere ingresar?");
        Scanner IngresaSegundaCantNums = new Scanner(System.in);
        int cantNumsSegundo = IngresaSegundaCantNums.nextInt();
        ArrayList<Integer> arrayNumerosSegundo = new ArrayList<>();

        for (int i=0; i<cantNumsSegundo; i++) {
            System.out.println("Que numero quiere ingresar?");
            Scanner IngresarNumeroSegundo = new Scanner(System.in);
            int numero = IngresarNumeroSegundo.nextInt();
            arrayNumerosSegundo.add(numero);
        }

        HashSet<Integer> setDeNumerosSegundo = new HashSet();

        for (Integer nro: arrayNumerosSegundo) {
            setDeNumerosSegundo.add(nro);
        }

        arrayNumerosSegundo.clear();
        .
        for(Integer nro: setDeNumerosSegundo) {
            arrayNumerosSegundo.add(nro);
        }

          for (Integer nro: arrayNumerosSegundo) {
            System.out.println(nro);
        }

        if (setDeNumeros.equals(setDeNumerosSegundo)) System.out.println("Tienen los mismos elementos");
        else System.out.println("No tienen los mismos elementos");
    }
}