function posibleMailValido(posibleMail){
    var posibleMail = document.getElementById("mailPosible").value;
    var es = false;
    for(let i=0; i<posibleMail.length; i++) 
        if(posibleMail[i]=='@' && i!=0 && i!=posibleMail.length-1) 
            es=true;
    if (es) document.getElementById("mostrarMail").innerHTML="Es un posible mail";
    else document.getElementById("mostrarMail").innerHTML="No es un posible mail";
}