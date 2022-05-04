import java.util.ArrayList;
import java.util.HashMap;

public class Cliente {
    private int id;
    private String nombre;
    private int edad;
    private ArrayList<Libro> librosComprados;
    private HashMap<Libro, Integer> comprasLibrosDePandelos13;

    public Cliente(int id2, String nombre2, int edad2, ArrayList<Libro> librosComprados2) {
        this.id = id2;
        nombre = nombre2;
        edad = edad2;
        librosComprados = librosComprados2;
    }

    public void setLibrosComprados(ArrayList<Libro> librosComprados) {
        librosComprados = librosComprados;
    }

    public void setEdad(int edad) {
        edad = edad;
    }

    public void setNombre(String nombre) {
        nombre = nombre;
    }

    public void setId(int id)    {
        id = id;
    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public ArrayList<Libro> getLibrosComprados() {
        return librosComprados;
    }

    public int getEdad() {
        return edad;
    }

    public HashMap<Libro, Integer> getComprasLibrosDePandelos13() {
        return comprasLibrosDePandelos13;
    }

    public void setComprasLibrosDePandelos13(HashMap<Libro, Integer> comprasLibrosDePandelos13) {
        this.comprasLibrosDePandelos13 = comprasLibrosDePandelos13;
    }
    
    public void agregarInformacion () {
        boolean yaLoCompro = false;
        ArrayList<Integer> cantidadCadaLibro = new ArrayList<>();
        for (int i = 0; i < librosComprados.size(); i++) {
            for (int j = 0; j < cantidadCadaLibro.size(); j++) {
                if (librosComprados.get(i).getId == cantidadCadaLibro.get(j).getId) {
                    cantidadCadaLibro.set(j, cantidadCadaLibro.get(j) + 1);
                    yaLoCompro = true;
                }
            }
            if (yaLoCompro == false) {
                cantidadCadaLibro.add(librosComprados.get(i).getId);
            }
        }
    }
}