/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


function extmpnocompleta(){
    
   if (document.getElementById("tipoextmp")[document.getElementById("tipoextmp").selectedIndex].value == 0){
     
                   alert ("Es necesario que elija un tipo de solicitud.");
                   return false;
        
   }
   
   if (!(document.forms[0].solicitud.value)){
     
                   alert ("Es necesario que haga algún comentario sobre su solicitud.");
                   return false;
        
   }
   
   if (!(document.forms[0].archivo.value)){
     
                   alert ("Es necesario que anexe el archivo solicitado.");
                   return false;
        
   }
   
   if (document.forms[0].archivo.value.toString().search(".pdf") == -1){
     
                   alert ("Es necesario que el archivo tenga formato PDF.");
                   return false;
        
   }
    
    
    return true;
}