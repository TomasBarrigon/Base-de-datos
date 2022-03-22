public class person {

    private String nombre;
    private int edad;
    private int dni;
    private int telefono;
    private String direccion;

    public person(){
        this.nombre = "Alejo";
        this.edad = 17;
        this.dni = 46029600;
        this.telefono = 4152;
        this.direccion = "LaCalleDelColo123";
    }

    public person(String nombre){
        this.nombre = nombre;
        this.edad = 17;
        this.dni = 46029600;
        this.telefono = 4152;
        this.direccion = "LaCalleDelColo123";
    }

    public person(String nombre, int edad, int dni, int telefono, String direccion){
        this.nombre = nombre;
        this.edad = edad;
        this.dni = dni;
        this.telefono = telefono;
       this.direccion = direccion;
    }

    public boolean esMayor(){
        return this.edad>18;
    }

    public boolean sonLaMismaPersona(int dni){
        return this.dni == dni;
    }

    public String getName(){
        return this.nombre;
    }

    public int getDNI(){ return this.dni; }

    public int getTelefono(){
        return this.telefono;
    }
    public int getEdad(){
        return this.edad;
    }

    public String getDireccion(){
        return this.direccion;
    }

    public boolean tienenMismaEdad(int edad) {
        return this.edad == edad;
    }

    public boolean misma_persona(person p2){
        if(this.nombre != p2.getName()) return false;
        if(this.direccion != p2.getDireccion()) return false;
        if(this.dni != p2.getDNI()) return false;
        if(this.edad != p2.getEdad()) return false;
        if(this.telefono != p2.getTelefono()) return false;
        return true;
    }
}