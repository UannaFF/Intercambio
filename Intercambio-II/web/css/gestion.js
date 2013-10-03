/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

// Hecho por MOSQ //

// Universidad con Convenios Bilaterales
        var uni_Alemania=new Array("Seleccione", "Universidad de Karlsruhe", "Universidad de Stuttgart" ,"Universidad de Siegen")
        var uni_Argentina=new Array("Seleccione", "Universidad Nacional de Cuyo", "Universidad Nacional de Quilmes", "Universidad Nacional de San Martín")        
        var uni_Australia=new Array("Seleccione", "Universidad Tecnológica de Swinburne")
        var uni_Bélgica=new Array("Seleccione", "Universidad Católica de Lovaina")
        var uni_Bolivia=new Array("Seleccione", "Universidad Católica Boliviana San Pablo", "Universidad Privada Santa Cruz de la Sierra")
        var uni_Brasil=new Array("Seleccione", "PSML - BRA - Universidad de Sao Paulo", "PSML - BRA - Universidad Federal de Río de Janeiro", "Universidad de Sao Paulo ", "Universidad Estadual de Campinas")
        var uni_Canadá=new Array("Seleccione", "Instituto de Tecnología de Ontario")
        var uni_Chile=new Array("Seleccione", "PSML - CHI - Pontifica Universidad Católica de Chile", "Pontificia Universidad Católica de Chile", "Pontificia Universidad Católica de Valparaíso", "Universidad Austral de Chile", "Universidad de Concepción", "Universidad de Talca", "Universidad de Tarapacá")
        var uni_CostaRica=new Array("Seleccione", "Universidad de Costa Rica ")        
        var uni_Colombia=new Array("Seleccione", "Pontificia Universidad Bolivariana", "PSML - COL - Pontificia Universidad Javeriana" ,"Universidad Externado", "Pontificia Universidad Javeriana ", "Universidad de los Andes", "Universidad del Norte", "Universidad del Valle")
        var uni_Ecuador=new Array("Seleccione", "Escuela Superior Politécnica del Litoral")
        var uni_España=new Array("Seleccione", "Universidad de Granada", "Universidad de Zaragoza", "Universidad Politécnica de Valencia", "PSML - ESP - Universidad Politécnica de Cataluña", "PSML - ESP - Universidad Politécnica de Madrid", "Universidad Carlos III de Madrid", "Universidad de Barcelona", "Universidad de las Islas Baleares", "Universidad de Santiago de Compostela", "Universitat Oberta de Catalunya", "Universitat Politécnica de Catalunya" )
        var uni_EstadosUnidos=new Array("Seleccione", "Universidad de Nuevo México", "Universidad de Oklahoma")
        var uni_Finlandia=new Array("Seleccione", "Universidad Abo Akademi")
        var uni_Francia=new Array("Seleccione", "Arts et Métiers ParisTech", "EPF Escuela de Ingenieros", "Escuela de Minas de Nantes", "INSA – Lyon", "TELECOM – SudParis", "Universidad Paris Est Marne la Vallé", "Universidad Paris Ouest Nanterre", "Universidad Tecnológica de Compiègne")
        var uni_Italia=new Array("Seleccione", "Politécnico de Milano", "Politécnico de Torino", "Universidad Degli Studi Di Genova")
        var uni_Japón=new Array("Seleccione", "Universidad de Tohoku", "Universidad Tecnológica de Nagaoka")
        var uni_México=new Array("Seleccione", "Instituto Tecnológico Superior de Cajeme (ITESCA)", "ITESM Monterrey", "Universidad Veracruzana",  "ITESM Monterrey ", "Universidad Autónoma Metropolitana")
        var uni_Noruega=new Array("Seleccione", "NTNU- Trondheim")
        var uni_Perú=new Array("Seleccione", "Universidad San Martín de Porres","Pontificia Universidad Católica del Perú ", "Universidad de Lima", "Universidad del Pacífico ", "Universidad Peruana Cayetano Heredia")
        var uni_Polonia=new Array("Seleccione", "PSML - POL - AGH Universidad de Ciencias y Tecnología")
        var uni_Portugal=new Array("Seleccione", "PSML - POR - Universidad Técnica de Lisboa")        
        var uni_Panamá=new Array("Seleccione", "Universidad de Panamá ")
        var uni_Paraguay=new Array("Seleccione", "Universidad Católica de Nuestra Señora de la Asunción")
        var uni_PuertoRico=new Array("Seleccione", "Universidad de Puerto Rico")
        var uni_ReinoUnido=new Array("Seleccione", "Universidad de Ulster")
        var uni_RepúblicaCheca=new Array("Seleccione", "PSML - RPC - Universidad Técnica Checa en Praga")
        var uni_RepúbicaDominicana=new Array("Seleccione", "Instituto Tecnológico de Santo Domingo", "Pontificia Universidad Católica Madre Maestra ")
        var uni_Suecia=new Array("Seleccione", "Real Instituto de Estocolmo KTH", "Universidad de Lund", "Universidad de Uppsala")     
        var uni_Uruguay=new Array("Seleccione", "Universidad Católica del Uruguay")
        var uni_Venezuela=new Array("Seleccione", "Universidad Centroccidental Lisandro Alvarado", "Universidad Metropolitana")


        function cambia_universidadG(){ 
            //tomo el valor del select del pais elegido  
            pais = document.getElementById("pais_princG")[document.getElementById("pais_princG").selectedIndex].value 
            if (pais != 0) { 
                mis_universidades=eval("uni_" + pais) 
                num_universidades = mis_universidades.length 
                document.getElementById("uni_princG").length = num_universidades 
                for(i=0;i<num_universidades;i++){ 
                    document.getElementById("uni_princG").options[i].value=mis_universidades[i] 
                    document.getElementById("uni_princG").options[i].text=mis_universidades[i] 
                } 
            }else{ 
                //si no había provincia seleccionada, elimino las universidades del select 
                document.getElementById("uni_princG").length = 1 
                document.getElementById("uni_princG").options[0].value = "-" 
                document.getElementById("uni_princG").options[0].text = "-" 
            } 
            //marco como seleccionada la opción primera de provincia 
            document.getElementById("uni_princG").options[0].selected = true 
        }
        
        function show(target){
            
            document.getElementById(target).style.display = 'block';
            
        }
        
        function unielegida(){
            alert(document.getElementById("uni_princG")[document.getElementById("uni_princG").selectedIndex].value)
            return document.getElementById("uni_princG")[document.getElementById("uni_princG").selectedIndex].value.toString();
        }
        
        function muestrauniv(univ){
         alert(univ);   
        }
        

        function gestionnocompleta(){
            
          var i=0
          var respondida = false
          var correcto= true
        while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p1[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p2[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p3[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p4[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p5[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p6[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p7[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p8[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p9[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p10[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p11[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p12[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p13[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p14[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p15[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
                while((i<6)&&(!(respondida))&&(correcto)){
            if(document.forms[0].p16[i].checked) respondida = true;
           i++; 
        }
        i=0;
        correcto=respondida;
        respondida = false;
        
        
            
        if((!(correcto)) || (document.getElementById("pais_princG")[document.getElementById("pais_princG").selectedIndex].value == 0)
           || (document.getElementById("uni_princG")[document.getElementById("uni_princG").selectedIndex].value == "Seleccione"))
       { 
           
                   alert ("Es necesario que toda la encuesta este completa.");
                   return false;
            
           }
           
             
         return true;
        }
        
        

        

        
          
