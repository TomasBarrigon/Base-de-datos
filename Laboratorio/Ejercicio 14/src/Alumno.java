import java.util.HashMap;
import java.util.ArrayList;

public class Alumno extends Persona{
    private String curso;
    private HashMap<String, ArrayList<Float>> notasPorMateria;

    public Alumno(){
        curso = "";
        notasPorMateria = new HashMap<>();
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public HashMap<String, ArrayList<Float>> getNotasPorMateria() {
        return notasPorMateria;
    }

    public void setNotasPorMateria(HashMap<String, ArrayList<Float>> notasPorMateria) {
        this.notasPorMateria = notasPorMateria;
    }

    public void agregarNota (String materia, Float nota) {
        for (String nombreMateria : this.notasPorMateria.keySet()) {
            if (nombreMateria==materia) {
                this.notasPorMateria.get(nombreMateria).add(nota);
            }
        }
    }

    public float menorNota() {
        float notaMenor;
        notaMenor = 10;
        for (String nombreMateria : this.notasPorMateria.keySet()) {
            for (Float nota : notasPorMateria.get(nombreMateria)) {
                if (notaMenor > nota) {
                    notaMenor = nota;
                }
            }
        }
        System.out.println("La menor nota es: " + notaMenor);
        return notaMenor;
    }

    public float mayorNota(String materia) {
        float notaMayor;
        notaMayor = 0;
        for (String nombreMateria : this.notasPorMateria.keySet()) {
            for (Float nota : notasPorMateria.get(nombreMateria)) {
                if (notaMayor < nota) {
                        notaMayor = nota;
                }
            }
        }
        System.out.println("La mayor nota es: " + notaMayor);
        return notaMayor;
    }

    public float promedioNotas() {
        float sumaNotas = 0;
        float promedioActual;
        for (String nombreMateria : this.notasPorMateria.keySet()) {
            promedioActual = 0;
            for (Float nota : notasPorMateria.get(nombreMateria)) {
                promedioActual += nota;
            }
            promedioActual /= notasPorMateria.get(nombreMateria).size();
            sumaNotas += promedioActual;
        }
        sumaNotas = sumaNotas/this.notasPorMateria.size();
        System.out.println("El promedio de las notas es: " + sumaNotas);
        return sumaNotas;
    }

    public void agregarMateria (String nombreMateria) {
        ArrayList<Float> notas = new ArrayList<>();
        this.notasPorMateria.put(nombreMateria, notas);
    }
}
