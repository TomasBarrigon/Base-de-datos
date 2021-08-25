function cantApariciones(arreglo, num){
    let apariciones=0;
    for(let i=0; i<arreglo.length; i++) if(arreglo[i]==num) apariciones++;
    return apariciones;
}

function posibleMailValido(posibleMail){
    for(let i=0; i<posibleMail.length; i++) if(posibleMail[i]=='@' && i!=0 && i!=posibleMail.length-1) return "Es un posible mail";
    return "No es un posible mail";
}
function posibleTelefonoValido(posibleNumero){
    if((posibleNumero[0]=='1' && posibleNumero[1]=='1' && posibleNumero.length==10) || 
    (posibleNumero[0]=='0' && posibleNumero[1]=='1' && posibleNumero[2]=='1' && posibleNumero.length==11)) return "Es un posible numero de telefono";
    return "No es un posible numero de telefono";
}

function main(){
    let arreglo=[1,2,3,4,5,2,2,2,4,5];
    let num=2;
    let posibleMail="mailfalso@gmail.com";
    let posibleNumero="01142568765";
    console.log("La cantidad de apariciones es: " + cantApariciones(arreglo, num));
    console.log(posibleMailValido(posibleMail));
    console.log(posibleTelefonoValido(posibleNumero));
}

main();