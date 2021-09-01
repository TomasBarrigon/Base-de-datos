function cantApariciones(){
    var arregloString = document.getElementById("arreglo").value;
    var cont=0;
    var terminado=[];
    var temp="";
    while(cont<arregloString.length){
        while(arregloString[cont]!=','){
            temp+=arregloString[cont];
            cont++;
        }
        terminado.push(parseInt(temp));
        temp="";
        cont++;
    }
    console.log(terminado);
    var apariciones=0;
    var numero = document.getElementById("num").value;
    console.log(numero);
    for(var i=0; i<terminado.length; i++) if(terminado[i]==numero) apariciones++;
    console.log(apariciones);
    document.getElementById("mostrarApariciones").innerHTML = "Apariciones: " + apariciones;
}