function posibleTelefonoValido(posibleNumero){
    var es=false;
    var posibleNumero = document.getElementById("telefonoPosible").value;
    if((posibleNumero[0]=='1' && posibleNumero[1]=='1' && posibleNumero.length==10) || 
    (posibleNumero[0]=='0' && posibleNumero[1]=='1' && posibleNumero[2]=='1' && posibleNumero.length==11)) 
        es=true;
        if (es) document.getElementById("mostrarTelefono").innerHTML="Es un posible telefono";
        else document.getElementById("mostrarTelefono").innerHTML="No es un posible telefono";
}