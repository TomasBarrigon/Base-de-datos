import java.util.ArrayList;
import java.util.Scanner;

public class SistemaDeRegistroDePersonas {
    ArrayList<Personas> personas;

    public SistemaDeRegistroDePersonas(){
        this.personas = new ArrayList<Personas>();
    }

    public void Registrar(){

        System.out.println("Ingrese un nombre");
        Scanner IngresoNombre = new Scanner(System.in);
        String Nombre = IngresoNombre.nextLine();

        System.out.println("Ingrese una edad");
        Scanner IngresoEdad = new Scanner(System.in);
        int Edad = IngresoEdad.nextInt();

        System.out.println("Ingrese un dni");
        Scanner IngresoDni = new Scanner(System.in);
        int Dni = IngresoDni.nextInt();

        System.out.println("Ingrese un telefeno");
        Scanner IngresoTelefono = new Scanner(System.in);
        int Telefono = IngresoTelefono.nextInt();

        System.out.println("Ingrese una direccion");
        Scanner IngresoDirecion = new Scanner(System.in);
        String Direccion = IngresoDirecion.nextLine();

        Personas pTemp = new Personas();
        pTemp.setDatos(Nombre, Edad, Dni, Telefono, Direccion);

        this.personas.add(pTemp);
    }
    public void mostrar(){
        for(Personas i : this.personas){
            System.out.println("  Dni: " + i.getDni());
            System.out.println("  Nombre: " + i.getNombre());
            System.out.println("  Edad: " + i.getEdad());
            System.out.println("  Telefono: " + i.getTelefono());
            System.out.println("  Direccion: " + i.getDireccion());
            System.out.println("-------------------------");
        }
    }

    public void eliminarDNI(){
        System.out.println("Ingrese un dni");
        Scanner IngresoDNI = new Scanner(System.in);
        int dni = IngresoDNI.nextInt();

        for(Personas i : this.personas){
            if(dni == i.getDni()){
                this.personas.remove(i);
                System.out.println(i.getNombre() + " se saco del sistema");
                break;
            }
        }
    }
    public void Modificar(){
        Scanner IngresoDNI = new Scanner(System.in);
        System.out.println("Ingrese un dni");
        int dni = IngresoDNI.nextInt();
        int aModificar = 0;

        for(int i = 0; i < this.personas.size(); i++){
            if(dni == this.personas.get(i).getDni()){
                aModificar = i;
                break;
            }
        }

        int opcion = 0;

        while(opcion !=6){
            System.out.println("Elegir que modificar: \n 1.Nombre \n 2.Edad \n 3.dni \n 4.telefono \n 5.direccion \n 6.salir");
            Scanner ingresoDato = new Scanner(System.in);
            opcion = ingresoDato.nextInt();
            System.out.println("Ingrese el dato");
            Scanner dato = new Scanner(System.in);
            if(opcion == 1) this.personas.get(aModificar).setNombre(dato.nextLine());
            else if(opcion == 2) this.personas.get(aModificar).setEdad(dato.nextInt());
            else if(opcion == 3) this.personas.get(aModificar).setDni(dato.nextInt());
            else if(opcion == 4) this.personas.get(aModificar).setTelefono(dato.nextInt());
            else if(opcion == 5) this.personas.get(aModificar).setDireccion(dato.nextLine());
        }
    }
    public void mostrarMAyores(){
        for(Personas i : this.personas){
            if(i.getEdad() >=18) {
                System.out.println("  Nombre: " + i.getNombre());
                System.out.println("  Edad: " + i.getEdad());
                System.out.println("  Dni: " + i.getDni());
                System.out.println("  Telefono: " + i.getTelefono());
                System.out.println("  Direccion: " + i.getDireccion());
                System.out.println("-------------------------");
            }
        }
    }
}
