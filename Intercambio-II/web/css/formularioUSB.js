/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

        var fCount = 4;
        var Count = 0;
        var mCount = 0;
        var direccionPlanillaSmile1='/Intercambio-II/estudianteUSB/Recursos/SMILE_Student_Learning-Agreement.doc'
        var direccionPlanillaSmile2='/Intercambio-II/estudianteUSB/Recursos/SMILE_Student_Application-Form.doc'
        var direccionPlanillaCinda1='/Intercambio-II/estudianteUSB/Recursos/CINDA_Ficha_de_reconocimiento.doc'
        var direccionPlanillaCinda2='/Intercambio-II/estudianteUSB/Recursos/CINDA_Ficha_solicitud_de_participación.doc'
        
        function cambiar_link1(){
            
            var seleccion=document.getElementById('prog_princ');
            if(seleccion.value == "SMILE"){
                document.getElementById('planilla1-1').href=direccionPlanillaSmile1;
                document.getElementById('planilla1-1').innerHTML='Descargue el Contrato de estudiantes para SMILE';
                document.getElementById('planilla1-2').href=direccionPlanillaSmile2;
                document.getElementById('planilla1-2').innerHTML='Descargue el formulario de Aplicacion SMILE'
            }
            
            if(seleccion.value == "CINDA"){
                document.getElementById('planilla1-1').href=direccionPlanillaCinda1;
                document.getElementById('planilla1-1').innerHTML='Descargue el formulario de Reconocimiento para CINDA';
                document.getElementById('planilla1-2').href=direccionPlanillaCinda2;
                document.getElementById('planilla1-2').innerHTML='Descargue el formulario de participación para CINDA';
            }
            
        }
        
        
        function cambiar_link2(){
            
            
            var seleccion=document.getElementById('prog_princ2');
            if(seleccion.value == "SMILE"){
                document.getElementById('planilla2-1').href=direccionPlanillaSmile1;
                document.getElementById('planilla2-1').innerHTML='Descargue el Contrato de estudiantes para SMILE';
                document.getElementById('planilla2-2').href=direccionPlanillaSmile2;
                document.getElementById('planilla2-2').innerHTML='Descargue el formulario de Aplicacion SMILE'
            }
            
            if(seleccion.value == "CINDA"){
                document.getElementById('planilla2-1').href=direccionPlanillaCinda1;
                document.getElementById('planilla2-1').innerHTML='Descargue el formulario de Reconocimiento para CINDA';
                document.getElementById('planilla2-2').href=direccionPlanillaCinda2;
                document.getElementById('planilla2-2').innerHTML='Descargue el formulario de participación para CINDA';
            }
        }
        
        
        
        function addMate(tableID) {
            mCount++;

            var fObject = document.getElementById(tableID);
            var checkbox2 = "checkbox";
            var nomUSB = "materiaUSB[" +  mCount +  "]";
            var codUSB = "codigoUSB[" +  mCount +  "]";
            var creUSB = "creditosUSB[" +  mCount +  "]";
            var nomUniv = "materiaUniv[" +  mCount +  "]";
            var codUniv = "codigoUniv[" +  mCount +  "]";
            var creUniv = "creditosUniv[" +  mCount +  "]";
            var arr2 = "c[]";
            var type = "text";
            
            var style1 = "width:80%;";
            var style2 = "width:60%;";
            
            var o2 = document.createElement("input");
            var check2 = document.createElement("input");
            var i1 = document.createElement("input");
            var i2 = document.createElement("input");
            var i3 = document.createElement("input");
            var i4 = document.createElement("input");
            var i5 = document.createElement("input");
            var i6 = document.createElement("input");
            var tr = document.createElement("tr");
            var td = document.createElement("td");
            var td2 = document.createElement("td");
            var td4 = document.createElement("td");
            var td6 = document.createElement("td");
            var td8 = document.createElement("td");
            var td10 = document.createElement("td");
            var td12 = document.createElement("td");
                
            //Atributos para el checkbox
            check2.setAttribute("type",checkbox2);
            check2.setAttribute("name",arr2);
            i1.setAttribute("type",type);
            i1.setAttribute("name",codUSB);
            i1.setAttribute("style",style1);
            i2.setAttribute("type",type);
            i2.setAttribute("name",nomUSB);
            i2.setAttribute("style",style1);
            i3.setAttribute("type",type);
            i3.setAttribute("name",creUSB);
            i3.setAttribute("style",style1);
            i4.setAttribute("type",type);
            i4.setAttribute("name",codUniv);
            i4.setAttribute("style",style2);
            i5.setAttribute("type",type);
            i5.setAttribute("name",nomUniv);
            i5.setAttribute("style",style2);
            i6.setAttribute("type",type);
            i6.setAttribute("name",creUniv);
            i6.setAttribute("style",style2);
            
            td.appendChild(check2);
            td2.appendChild(i1);
            td4.appendChild(i2);
            td6.appendChild(i3);
            td8.appendChild(i4);
            td10.appendChild(i5);
            td12.appendChild(i6);
            
            tr.appendChild(td);
            
            tr.appendChild(td2);
            
            tr.appendChild(td4);
            
            tr.appendChild(td6);
            
            tr.appendChild(td8);
            
            tr.appendChild(td10);
            
            tr.appendChild(td12);
            
            fObject.appendChild(tr);
                
               
        }
        
       
        function addIdi(tableID) {
            Count++;

            var fObject = document.getElementById(tableID);
            var checkbox = "checkbox";
            var idioma = "idiomaDest[" +  Count +  "]";
            var verbal = "nivelVerbal[" +  Count +  "]";
            var escrito = "nivelEscrito[" +  Count +  "]";
            var conversacional = "nivelConversacional[" + Count + "]";
            var basico = "Basico";
            var intermedio = "Intermedio";
            var avanzado = "Avanzado";
            var arr = "chk[]";
            var type = "text";
            
            var tit1 = "Idioma que maneja";
            var tit2 = "Nivel Verbal";
            var tit3 = "Nivel Escrito";
            var tit4 = "Nivel Conversacional";
            var o2 = document.createElement("input");
            var check = document.createElement("input");
            
            //Nivel Escrito
            var op1 = document.createElement("option"); //basico
            var op2 = document.createElement("option");//intermedio
            var op3 = document.createElement("option");//avanzado
            
            //Nivel Verbal
            var op4 = document.createElement("option");//basico
            var op5 = document.createElement("option");//intermedio
            var op6 = document.createElement("option");//avanzado
            
            //Nivel Conversacional
            var op7 = document.createElement("option");//basico
            var op8 = document.createElement("option"); //intermedio
            var op9 = document.createElement("option"); //avanzado
            
            var op10 = document.createElement("option");
            var op11 = document.createElement("option");
            var op12 = document.createElement("option");
            
            
            var tr = document.createElement("tr");
            var select1 = document.createElement("select");
            var select2 =document.createElement("select");
            var select3 = document.createElement("select");
            var td = document.createElement("td");
            var td2 = document.createElement("td");
            var td3 = document.createElement("td");
            var td4 = document.createElement("td");
            var td5 = document.createElement("td");
            var td6 = document.createElement("td");
            var td7 = document.createElement("td");
            var td8 = document.createElement("td");
            var td9 = document.createElement("td");
            var td10 = document.createElement("td");
            
                
            //Atributos para el checkbox
            check.setAttribute("type",checkbox);
            check.setAttribute("name",arr);
            op1.setAttribute("value",basico);
            op1.innerHTML = "Basico";
            op4.setAttribute("value",basico);
            op4.innerHTML = "Basico";
            op7.setAttribute("value", basico);
            op7.innerHTML = "Basico";
            op2.setAttribute("value",intermedio);
            op2.innerHTML = "Intermedio";
            op5.setAttribute("value",intermedio);
            op5.innerHTML = "Intermedio";
            op8.setAttribute("value", intermedio);
            op8.innerHTML = "Intermedio";
            op3.setAttribute("value",avanzado);
            op3.innerHTML = "Avanzado";
            op6.setAttribute("value",avanzado);
            op6.innerHTML = "Avanzado";
            op9.setAttribute("value", avanzado);
            op9.innerHTML = "Avanzado";
            
            op10.setAttribute("value","");
            op11.setAttribute("value","");
            op12.setAttribute("value","");
            
            o2.setAttribute("type",type);
            o2.setAttribute("name",idioma);
            op1.setAttribute("value",basico);
            op2.setAttribute("value", intermedio);
            op3.setAttribute("value",avanzado);
            select1.setAttribute("name",verbal);
            select2.setAttribute("name",escrito);
            select3.setAttribute("name",conversacional);
            
            td7.appendChild(check);
            tr.appendChild(td7);
            td.innerHTML = tit1;
            tr.appendChild(td);
            td2.appendChild(o2);
            tr.appendChild(td2);
            
            td3.innerHTML = tit2;
            tr.appendChild(td3);
            select1.appendChild(op10);
            select1.appendChild(op7);
            select1.appendChild(op1);
            select1.appendChild(op2);
            select1.appendChild(op3);
            td4.appendChild(select1);
            tr.appendChild(td4);
            
            td5.innerHTML = tit3;
            tr.appendChild(td5);
            select2.appendChild(op11);
            select2.appendChild(op8);
            select2.appendChild(op4);
            select2.appendChild(op5);
            select2.appendChild(op6);
            td6.appendChild(select2);
            tr.appendChild(td6);
            
            td8.innerHTML = tit4;
            tr.appendChild(td8);
            select3.appendChild(op12);
            select3.appendChild(op7);
            select3.appendChild(op8);
            select3.appendChild(op9);
            td10.appendChild(select3);
            tr.appendChild(td10);
            
            fObject.appendChild(tr);
               
        }
         
               
        function addRow(tableID) {
            fCount++;

            var fObject = document.getElementById(tableID);
            var checkbox = "checkbox";
            var tag='<input type="file" name="theFile[' +  fCount +  ']" value="">';
            var name = "theFile[" +  fCount +  "]";
            var file = "file";
            var valgin = "middle";
            var value = "";
            var id = "archivos";
            var clas = "feed";
            var arr = "chk[]"
            var style = "position:relative;"
            var o3 = document.createElement("br");
            var o2 = document.createElement("input");
            var check = document.createElement("input");
            var tr = document.createElement("tr");
            var td = document.createElement("td");
            var td3 = document.createElement("td");
            var div1 = document.createElement("div");
            var div2 = document.createElement("div");
                
                
               
            //Atributos para div1
            div1.setAttribute("id",id);
            //fin de atributos para div1
                
            //Atributos para div2
            div2.setAttribute("class",clas);
            //fin de atributos para div2
                
            //Atributos para el checkbox
            check.setAttribute("type",checkbox);
            check.setAttribute("name",arr)
            //Fin de atributos para checkbox
            //Atributos para el archivo
            o2.setAttribute("type", file);
            o2.setAttribute("name", name );
            o2.setAttribute("value", value);
            o2.setAttribute("styame", name );
            o2.setAttribute("valule",style);
            //Fin Atributos para el archivo
            var td2 = document.createElement("td").appendChild(div1).appendChild(div2).appendChild(o2);
                
            //Atributos para el td interno
            td2.setAttribute("valgin",valgin);
            //Fin atributos del td
                                
            fObject.appendChild(tr).appendChild(td).appendChild(check);
                
            var segundo_p = document.getElementById(tableID).getElementsByTagName('td');
                
            fObject.appendChild(tr).appendChild(td3);    
            fObject.appendChild(tr).insertBefore(td2, segundo_p);
       
        }
 
        function deleteRow(tableID) {
            try {

                var table = document.getElementById(tableID);
                var rowCount = table.rows.length;
	
                for(var i=0; i<rowCount; i++) {
                    var row = table.rows[i];
                    var chkbox = row.cells[0].childNodes[0];
                    if(null != chkbox && true == chkbox.checked) {
				
                        if(rowCount <= 5) {
                            alert("No puede borrar todas las opciones");
                            break;
                        }
                        table.deleteRow(i);
                        rowCount--;
                        i--;
                        fCount--;
                    }
	
                }
		
            } catch(e) {
                alert(e);
            }
        }
        
        function deleteRow2(tableID) {
            try {

                var table = document.getElementById(tableID);
                var rowCount = table.rows.length;
	
                for(var i=0; i<rowCount; i++) {
                    var row = table.rows[i];
                    var chkbox = row.cells[0].childNodes[0];
                    if(null != chkbox && true == chkbox.checked) {
				
                        if(rowCount <= 1) {
                            alert("No puede borrar todas las opciones");
                            break;
                        }
                        table.deleteRow(i);
                        rowCount--;
                        i--;
                        Count--;
                    }
	
                }
		
            } catch(e) {
                alert(e);
            }
        }
        
        
        function deletePlan(tableID) {
            try {

                var table = document.getElementById(tableID);
                var rowCount = table.rows.length;
        
                for(var i=0; i<rowCount; i++) {
                    var row = table.rows[i];
                    var chkbox = row.cells[0].childNodes[0];
                    
                    if(null != chkbox && true == chkbox.checked) {	
                        if(rowCount <= 2) {
                            alert("No puede borrar todas las opciones");
                            break;
                        }
                       
                        table.deleteRow(i);
                        rowCount--;
                        i--;
                        mCount--;
                    }
	
                }
		
            } catch(e) {
                alert(e);
            }
        }
        
        function show(target){
            document.getElementById(target).style.display = 'block';
        }

        function hide(target){
            document.getElementById(target).style.display = 'none';
        }

        function seleccion(opc)
        {
            var Error;
            var ErrorInscripcion = false;
            var MensajeError = "";
            //escondemos todos los contenidos
            /*
            document.getElementById("opci1").style.display="none";
            document.getElementById("opci2").style.display="none";
            document.getElementById("opci3").style.display="none";
            document.getElementById("opci4").style.display="none";
            document.getElementById("opci5").style.display="none";
            document.getElementById("opci6").style.display="none";
            document.getElementById("opci7").style.display="none";
            */
            switch(opc)
            {
                case 1:
                    //mostramos elcontenido de la primera opcion
                        document.getElementById("opci2").style.display="none";
                        document.getElementById("opci1").style.display="block";
                    break;
                case 2:
                    document.getElementById("opci3").style.display="none";
                    //mostramos elcontenido de la segunda opcion
                    
                    Error = Necesario('apellido1');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('apellido2');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('nombre1');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('nombre2');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('fechaNacimiento');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('sexo');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('nacionalidad');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('cedula');
                    if (Error===true) ErrorInscripcion = true;
                    Error = esNumero('cedula');
                    if(Error===true){
                        MensajeError = "Coloca solo numeros en el campo Cédula<br /><br />";
                        ErrorInscripcion = true;
                    }
                    Error = Necesario('carnet');
                    if (Error===true) ErrorInscripcion = true;
                    Error = verificaCarnet('carnet');
                    if(Error===true){
                        MensajeError = MensajeError + "Coloca un carnet con el formato: 12-34567<br /><br />";
                        ErrorInscripcion = true;
                    }
                    if(ErrorInscripcion===true) {
			MensajeError = MensajeError + "Rellena los campos obligatorios<br />";
                        //document.getElementById("opci1").style.display="block";
                        document.getElementById('error').innerHTML = MensajeError;
                     
                    }else{
                        document.getElementById("opci2").style.display="block";
                        document.getElementById("opci1").style.display="none";
                        document.getElementById('error').innerHTML = "";
                    }
              
                    break;
                case 3:
                    //mostramos elcontenido de la tercera opcion
                    document.getElementById("opci4").style.display="none";
                    Error = Necesario('urbanizacion');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('calle');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('edificio');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('apartamento');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('ciudad');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('estado');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('codPostal');
                    if (Error===true) ErrorInscripcion = true;
                    Error = esNumero('codPostal');
                    if(Error===true){
                        MensajeError = "Coloca solo numeros en el campo Código Postal<br />";
                        ErrorInscripcion = true;
                        document.getElementById('error').innerHTML = MensajeError;
                    }
                
                    if(ErrorInscripcion===true) {
			MensajeError = MensajeError + "Rellena los campos obligatorios<br />";
                        //document.getElementById("opci1").style.display="block";
                        document.getElementById('error').innerHTML = MensajeError;
                     
                    }else{
                        document.getElementById("opci3").style.display="block";
                        document.getElementById("opci2").style.display="none";
                        document.getElementById('error').innerHTML = "";
                    }
                    break;
                case 4:
                    //mostramos elcontenido de la tercera opcion
                    document.getElementById("opci5").style.display="none";
                    Error = Necesario('telefonoCelular');
                    if (Error===true) ErrorInscripcion = true;
                    Error = esNumero('telefonoCelular');
                    if(Error===true){
                        MensajeError = "Coloca solo numeros en el campo Teléfono Celular<br />";
                        ErrorInscripcion = true;
                        document.getElementById('error').innerHTML = MensajeError;
                    }
                    Error = Necesario('telefonoCasa');
                    if (Error===true) ErrorInscripcion = true;
                    Error = esNumero('telefonoCasa');
                    if(Error===true){
                        MensajeError = MensajeError + "Coloca solo numeros en el campo Teléfono Fijo<br />";
                        ErrorInscripcion = true;
                        document.getElementById('error').innerHTML = MensajeError;
                    }
                    Error = CompruebaEmail('email');
                    if (Error===true) ErrorInscripcion = true;
                   
                    if(ErrorInscripcion===true) {
			MensajeError = MensajeError + "Rellena los campos obligatorios<br />";
                        //document.getElementById("opci1").style.display="block";
                        document.getElementById('error').innerHTML = MensajeError;
                     
                    }else{
                        document.getElementById("opci4").style.display="block";
                        document.getElementById("opci3").style.display="none";
                        document.getElementById('error').innerHTML = "";
                    }
                    break;
                case 5:
                    document.getElementById("opci6").style.display="none";
                    Error = Necesario('prog_princ');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('pais_princ');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('uni_princ');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('programaOpcion1');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('mesFechaIni1');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('anoFechaIni1');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('mesFechaFin1');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('anoFechaFin1');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('duracionProgramaOpcion1');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('prog_princ2');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('pais_princ2');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('uni_princ2');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('programaOpcion2');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('mesFechaIni2');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('anoFechaIni2');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('mesFechaFin2');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('anoFechaFin2');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('duracionProgramaOpcion2');
                    if (Error===true) ErrorInscripcion = true;
                   
                   
                    if(ErrorInscripcion===true) {
			MensajeError = "Rellena los campos obligatorios<br />";
                        //document.getElementById("opci1").style.display="block";
                        document.getElementById('error').innerHTML = MensajeError;
                     
                    }else{
                        document.getElementById("opci5").style.display="block";
                        document.getElementById("opci4").style.display="none";
                        document.getElementById('error').innerHTML = "";
                    }
                    break;
                case 6:
                     //mostramos elcontenido de la tercera opcion
                    document.getElementById("opci7").style.display="none";
                    Error = Necesario('dec');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('area');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('carrera');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('creditosApro');
                    Error = esNumero('creditosApro');
                    if(Error===true){
                        MensajeError = "Coloca solo numeros en el campo Créditos Aprobados<br />";
                        ErrorInscripcion = true;
                        document.getElementById('error').innerHTML = MensajeError;
                    }
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('indice');
                    if (Error===true) ErrorInscripcion = true;
                    Error = verificaIndice('indice');
                    if (Error===true){ 
                       ErrorInscripcion = true;
                       MensajeError = MensajeError + "Introduce un indice entre 3 y 5<br />";
                    }
                    Error = esNumero('indice');
                    if (Error===true){ 
                       ErrorInscripcion = true;
                       MensajeError = MensajeError + "Introduce un indice con valor numérico<br />";
                    }
                    
                    if(ErrorInscripcion===true) {
			MensajeError = MensajeError + "Rellena los campos obligatorios<br />";
                        document.getElementById('error').innerHTML = MensajeError;
                     
                    }else{
                        document.getElementById("opci6").style.display="block";
                        document.getElementById("opci5").style.display="none";
                        document.getElementById('error').innerHTML = "";
                    }
                    break;
                case 7:
                    
                    //mostramos elcontenido de la tercera opcion
                    
                    Error = Necesario('fuenteFinanciamiento');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('descripcion1');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('ayudaEc');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('descripcion2');
                    if (Error===true) ErrorInscripcion = true;
                   
                    if(ErrorInscripcion===true) {
			MensajeError = "Rellena los campos obligatorios<br />";
                        //document.getElementById("opci1").style.display="block";
                        document.getElementById('error').innerHTML = MensajeError;
                     
                    }else{
                        document.getElementById("opci7").style.display="block";
                        document.getElementById("opci6").style.display="none";
                        document.getElementById('error').innerHTML = "";
                    }
                    break;
                
                 case 8:
                    
                    //mostramos elcontenido de la tercera opcion
                    
                    Error = Necesario('apellidosRep');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('nombresRep');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('celRep');
                    if (Error===true) ErrorInscripcion = true;
                    Error = esNumero('celRep');
                    if(Error===true){
                        MensajeError = "Coloca solo numeros en el campo Teléfono Celular<br />";
                        ErrorInscripcion = true;
                        document.getElementById('error').innerHTML = MensajeError;
                    }
                    Error = Necesario('tlfRepCasa');
                    if (Error===true) ErrorInscripcion = true;
                    Error = esNumero('tlfRepCasa');
                    if(Error===true){
                        MensajeError = MensajeError + "Coloca solo numeros en el campo Teléfono Casa<br />";
                        ErrorInscripcion = true;
                        document.getElementById('error').innerHTML = MensajeError;
                    }
                     Error = CompruebaEmail('emailRep');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('relacion');
                    if (Error===true) ErrorInscripcion = true;
                    Error = Necesario('direccionRep');
                    if (Error===true) ErrorInscripcion = true;
                   
                    if(ErrorInscripcion===true) {
			MensajeError = "Rellena los campos obligatorios<br />";
                        //document.getElementById("opci1").style.display="block";
                        document.getElementById('error').innerHTML = MensajeError;
                        
                     
                    }else{
                        document.getElementById("opci7").style.display="none";
                        document.getElementById('error').innerHTML = "";
                        document.forms[0].action = "LlenarPlanilla_EstUSB.do?method=guardar";
                        document.forms[0].submit();
                    }
                    break;               
            }
            
            
        }


        // CAMBIA EL PAIS DE ACUERDO AL TIPO DE CONVENIO ELEGIDO

        // Convenios Bilaterales
        var paises_Bilaterales=new Array("-Seleccione-", "Alemania","Australia", "Canadá", "Colombia", "España", "EstadosUnidos", "Finlandia", "Francia", "Italia", "Japón", "México", "Noruega", "Perú", "PuertoRico", "ReinoUnido", "Suecia")
        // SMILE
        var paises_SMILE=new Array("-Seleccione-", "Alemania", "Bélgica", "Brasil", "Chile", "Colombia", "España", "Polonia", "Portugal", "RepúblicaCheca")
        // CINDA
        var paises_CINDA=new Array("-Seleccione-", "Argentina", "Bolivia", "Brasil", "Chile", "Colombia", "CostaRica", "Ecuador", "España", "Italia", "México", "Panamá", "Paraguay", "Perú", "RepúblicaDominicana", "Uruguay", "Venezuela")

        function cambia_pais(){ 
            //tomo el valor del select del pais elegido 
            programa = document.getElementById("prog_princ")[document.getElementById("prog_princ").selectedIndex].value 
            if (programa != 0) { 
                mis_paises=eval("paises_" + programa) 
                num_paises = mis_paises.length 
                document.getElementById("pais_princ").length = num_paises
                document.getElementById("pais_princ").options[0].value=""
                document.getElementById("pais_princ").options[0].text="-Seleccione-"
                for(i=1;i<num_paises;i++){ 
                    document.getElementById("pais_princ").options[i].value=mis_paises[i]
                    document.getElementById("pais_princ").options[i].text=mis_paises[i] 
                } 
            }else{ 
                //si no había provincia seleccionada, elimino las universidades del select 
                document.getElementById("pais_princ").length = 1 
                document.getElementById("pais_princ").options[0].value = "" 
                document.getElementById("pais_princ").options[0].text = "-" 
            } 
            //marco como seleccionada la opción primera de provincia 
            document.getElementById("pais_princ").options[0].selected = true 
        }

        function cambia_pais2(){ 
            //tomo el valor del select del pais elegido 
            programa = document.getElementById("prog_princ2")[document.getElementById("prog_princ2").selectedIndex].value 
            if (programa != 0) { 
                mis_paises=eval("paises_" + programa) 
                num_paises = mis_paises.length 
                document.getElementById("pais_princ2").length = num_paises
                document.getElementById("pais_princ2").options[0].value=""
                document.getElementById("pais_princ2").options[0].text="-Seleccione-"
                for(i=1;i<num_paises;i++){ 
                    document.getElementById("pais_princ2").options[i].value=mis_paises[i]
                    document.getElementById("pais_princ2").options[i].text=mis_paises[i] 
                } 
            }else{ 
                //si no había provincia seleccionada, elimino las universidades del select 
                document.getElementById("pais_princ2").length = 1 
                document.getElementById("pais_princ2").options[0].value = "" 
                document.getElementById("pais_princ2").options[0].text = "-" 
            } 
            //marco como seleccionada la opción primera de provincia 
            document.getElementById("pais_princ2").options[0].selected = true 
        }

        // CAMBIA LA UNIVERSIDAD DE ACUERDO AL PAIS ESCOGIDO 
 
        // Universidad con Convenios Bilaterales
        var uni_BilateralesAlemania=new Array("-Seleccione-", "Universidad de Karlsruhe", "Universidad de Siegen")
        var uni_BilateralesAustralia=new Array("-Seleccione-", "Universidad Tecnológica de Swinburne")
        var uni_BilateralesCanadá=new Array("-Seleccione-", "Instituto de Tecnología de Ontario")
        var uni_BilateralesColombia=new Array("-Seleccione-", "Pontificia Universidad Bolivariana", "Universidad Externado")
        var uni_BilateralesEspaña=new Array("-Seleccione-", "Universidad de Granada", "Universidad de Zaragoza", "Universidad Politécnica de Valencia")
        var uni_BilateralesEstadosUnidos=new Array("-Seleccione-", "Universidad de Nuevo México", "Universidad de Oklahoma")
        var uni_BilateralesFinlandia=new Array("-Seleccione-", "Universidad Abo Akademi")
        var uni_BilateralesFrancia=new Array("-Seleccione-", "Arts et Métiers ParisTech", "EPF Escuela de Ingenieros", "Escuela de Minas de Nantes", "INSA – Lyon", "TELECOM – SudParis", "Universidad Paris Est Marne la Vallé", "Universidad Paris Ouest Nanterre", "Universidad Tecnológica de Compiègne")
        var uni_BilateralesItalia=new Array("-Seleccione-", "Politécnico de Milano", "Politécnico de Torino")
        var uni_BilateralesJapón=new Array("-Seleccione-", "Universidad de Tohoku", "Universidad Tecnológica de Nagaoka")
        var uni_BilateralesMéxico=new Array("-Seleccione-", "Instituto Tecnológico Superior de Cajeme (ITESCA)", "ITESM Monterrey", "Universidad Veracruzana")
        var uni_BilateralesNoruega=new Array("-Seleccione-", "NTNU- Trondheim")
        var uni_BilateralesPerú=new Array("-Seleccione-", "Universidad San Martín de Porres")
        var uni_BilateralesPuertoRico=new Array("-Seleccione-", "Universidad de Puerto Rico")
        var uni_BilateralesReinoUnido=new Array("-Seleccione-", "Universidad de Ulster")
        var uni_BilateralesSuecia=new Array("-Seleccione-", "Real Instituto de Estocolmo KTH", "Universidad de Lund", "Universidad de Uppsala")

        // Universidad con SMILE
        var uni_SMILEAlemania=new Array("-Seleccione-", "Universidad de Stuttgart")
        var uni_SMILEBélgica=new Array("-Seleccione-", "Universidad Católica de Lovaina")
        var uni_SMILEBrasil=new Array("-Seleccione-", "PSML - BRA - Universidad de Sao Paulo", "PSML - BRA - Universidad Federal de Río de Janeiro")
        var uni_SMILEChile=new Array("-Seleccione-", "PSML - CHI - Pontifica Universidad Católica de Chile")
        var uni_SMILEColombia=new Array("-Seleccione-", "PSML - COL - Pontificia Universidad Javeriana")
        var uni_SMILEEspaña=new Array("-Seleccione-", "PSML - ESP - Universidad Politécnica de Cataluña", "PSML - ESP - Universidad Politécnica de Madrid")
        var uni_SMILEPolonia=new Array("-Seleccione-", "PSML - POL - AGH Universidad de Ciencias y Tecnología")
        var uni_SMILEPortugal=new Array("-Seleccione-", "PSML - POR - Universidad Técnica de Lisboa")
        var uni_SMILERepúblicaCheca=new Array("-Seleccione-", "PSML - RPC - Universidad Técnica Checa en Praga")

        // Universidad con CINDA
        var uni_CindaArgentina=new Array("-Seleccione-", "Universidad Nacional de Cuyo", "Universidad Nacional de Quilmes", "Universidad Nacional de San Martín")
        var uni_CindaBolivia=new Array("-Seleccione-", "Universidad Católica Boliviana San Pablo", "Universidad Privada Santa Cruz de la Sierra")
        var uni_CindaBrasil=new Array("-Seleccione-", "Universidad de Sao Paulo ", "Universidad Estadual de Campinas")
        var uni_CindaChile=new Array("-Seleccione-", "Pontificia Universidad Católica de Chile", "Pontificia Universidad Católica de Valparaíso", "Universidad Austral de Chile", "Universidad de Concepción", "Universidad de Talca", "Universidad de Tarapacá")
        var uni_CindaColombia=new Array("-Seleccione-", "Pontificia Universidad Javeriana ", "Universidad de los Andes", "Universidad del Norte", "Universidad del Valle")
        var uni_CindaCostaRica=new Array("-Seleccione-", "Universidad de Costa Rica ")
        var uni_CindaEcuador=new Array("-Seleccione-", "Escuela Superior Politécnica del Litoral")
        var uni_CindaEspaña=new Array("-Seleccione-", "Universidad Carlos III de Madrid", "Universidad de Barcelona", "Universidad de las Islas Baleares", "Universidad de Santiago de Compostela", "Universitat Oberta de Catalunya", "Universitat Politécnica de Catalunya")
        var uni_CindaItalia=new Array("-Seleccione-", "Universidad Degli Studi Di Genova")
        var uni_CindaMéxico=new Array("-Seleccione-", "ITESM Monterrey ", "Universidad Autónoma Metropolitana")
        var uni_CindaPanamá=new Array("-Seleccione-", "Universidad de Panamá ")
        var uni_CindaParaguay=new Array("-Seleccione-", "Universidad Católica de Nuestra Señora de la Asunción")
        var uni_CindaPerú=new Array("-Seleccione-", "Pontificia Universidad Católica del Perú ", "Universidad de Lima", "Universidad del Pacífico ", "Universidad Peruana Cayetano Heredia")
        var uni_CindaRepúbicaDominicana=new Array("-Seleccione-", "Instituto Tecnológico de Santo Domingo", "Pontificia Universidad Católica Madre Maestra ")
        var uni_CindaUruguay=new Array("-Seleccione-", "Universidad Católica del Uruguay")
        var uni_CindaVenezuela=new Array("-Seleccione-", "Universidad Centroccidental Lisandro Alvarado", "Universidad Metropolitana")


        function cambia_universidad(){ 
            //tomo el valor del select del pais elegido 
            programa = document.getElementById("prog_princ")[document.getElementById("prog_princ").selectedIndex].value 
            pais = document.getElementById("pais_princ")[document.getElementById("pais_princ").selectedIndex].value 
            if (programa != 0) { 
                mis_universidades=eval("uni_" + programa + pais) 
                num_universidades = mis_universidades.length 
                document.getElementById("uni_princ").length = num_universidades 
                for(i=0;i<num_universidades;i++){ 
                    document.getElementById("uni_princ").options[i].value=mis_universidades[i] 
                    document.getElementById("uni_princ").options[i].text=mis_universidades[i] 
                } 
            }else{ 
                //si no había provincia seleccionada, elimino las universidades del select 
                document.getElementById("uni_princ").length = 1 
                document.getElementById("uni_princ").options[0].value = "-" 
                document.getElementById("uni_princ").options[0].text = "-" 
            } 
            //marco como seleccionada la opción primera de provincia 
            document.getElementById("uni_princ").options[0].selected = true 
        }    

        function cambia_universidad2(){ 
            //tomo el valor del select del pais elegido 
            programa = document.getElementById("prog_princ2")[document.getElementById("prog_princ2").selectedIndex].value 
            pais = document.getElementById("pais_princ2")[document.getElementById("pais_princ2").selectedIndex].value 
            if (programa != 0) { 
                mis_universidades=eval("uni_" + programa + pais) 
                num_universidades = mis_universidades.length 
                document.getElementById("uni_princ2").length = num_universidades 
                for(i=0;i<num_universidades;i++){ 
                    document.getElementById("uni_princ2").options[i].value=mis_universidades[i] 
                    document.getElementById("uni_princ2").options[i].text=mis_universidades[i] 
                } 
            }else{ 
                //si no había provincia seleccionada, elimino las universidades del select 
                document.getElementById("uni_princ2").length = 1 
                document.getElementById("uni_princ2").options[0].value = "-" 
                document.getElementById("uni_princ2").options[0].text = "-" 
            } 
            //marco como seleccionada la opción primera de provincia 
            document.getElementById("uni_princ2").options[0].selected = true 
        }    

        // Estudios Profesionales
        var area_1=new Array("-Seleccione-", "Áreas de Ciencias Básicas", "Área de Arquitectura y Urbanismo", "Área de Ingeniería", "Área de Ciencias Administrativas")
        // Estudios Tecnologicos 
        var area_2=new Array("-Seleccione-", "Área de Tecnología", "Área de Ciencias Sociales")

        function cambia_area(){ 
            decanato = document.getElementById("dec")[document.getElementById("dec").selectedIndex].value 
            if (decanato != 0) { 
                mis_areas=eval("area_" + decanato) 
                num_areas = mis_areas.length 
                document.getElementById("area").length = num_areas
                for(i=0;i<num_areas;i++){ 
                    document.getElementById("area").options[i].value=i
                    document.getElementById("area").options[i].text=mis_areas[i] 
                } 
            }else{ 
                //si no había provincia seleccionada, elimino las universidades del select 
                document.getElementById("area").length = 1 
                document.getElementById("area").options[0].value = "-" 
                document.getElementById("area").options[0].text = "-" 
            } 
            //marco como seleccionada la opción primera de provincia 
            document.getElementById("area").options[0].selected = true 
        }
    
        var carrera_11=new Array("-Seleccione-", "Lic. Biología", "Lic. Física", "Lic. Matemática", "Lic. Química")
        var carrera_12=new Array("-Seleccione-", "Arquitectura", "Urbanismo")
        var carrera_13=new Array("-Seleccione-", "Ing. Eléctrica", "Ing. Mecánica", "Ing. Química", "Ing. Computación", "Ing. Telecomunicaciones", "Ing. Mantenimiento", "Ing. Electrónica", "Ing. Geofísica", "Ing. Materiales", "Ing. Producción")
        var carrera_14=new Array("-Seleccione-", "Lic. Gestión de la Hospitalidad", "Lic. Com. Internacional")

        var carrera_21=new Array("-Seleccione-", "TSU Tec. Electrónica", "TSU Tec. Mecánica", "TSU Mant. Aeronáutico")
        var carrera_22=new Array("-Seleccione-", "TSU Admin. Turismo", "TSU Admin. Hotelera", "TSU Admin. Transporte", "TSU Admin. Aduanera", "TSU Com. Exterior", "TSU Org. Empresarial")

        function cambia_carrera(){ 
            //tomo el valor del select del pais elegido 
            decanato = document.getElementById("dec")[document.getElementById("dec").selectedIndex].value 
            areas = document.getElementById("area")[document.getElementById("area").selectedIndex].value 
            if (decanato != 0) { 
                mis_carreras=eval("carrera_" + decanato + areas) 
                num_carreras = mis_carreras.length 
                document.getElementById("carrera").length = num_carreras
                for(i=0;i<num_carreras;i++){ 
                    document.getElementById("carrera").options[i].value=mis_carreras[i] 
                    document.getElementById("carrera").options[i].text=mis_carreras[i] 
                } 
            }else{ 
                //si no había provincia seleccionada, elimino las universidades del select 
                document.getElementById("carrera").length = 1 
                document.getElementById("carrera").options[0].value = "-" 
                document.getElementById("carrera").options[0].text = "-" 
            } 
            //marco como seleccionada la opción primera de provincia 
            document.getElementById("carrera").options[0].selected = true 
        }
         
         /*FUNCIONES PARA VERIFICAR LOS CAMPOS
         * REALIZADAS POR: FRANCO NORI G.
         */
        /*Funcion que verifica si el campo es necesario y lo modifica dependiendo de si esta vacio*/
        function Necesario(campo){
                error = false;
                string = trim(document.getElementById(campo).value);
                if((string==="") || (string==="-") || (string==="-Seleccione-")){
                        error = true;
                        document.getElementById(campo).style.background = "#FFCCE0";
                }else{
                        error = false;
                        document.getElementById(campo).style.background = "#FFFFFF";	
                }
                return error;
        }
        /*Funcion que elimina los espacios en blanco de un string*/
        function trim(myString){
                return myString.replace(/^\s+/g,'').replace(/\s+$/g,'')
        }
        /*Funcion que verifica el formato de un email*/
        function CompruebaEmail(campo){
                error = false;
                var	validRegExp	= /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                var strEmail	= 	document.getElementById(campo).value;
                if (strEmail.length > 0) {
                        if(strEmail.search(validRegExp)==-1) {
                                error = true;
                                document.getElementById(campo).style.background = "#FFCCE0";
                                return error
                        }
                        document.getElementById(campo).style.background = "#FFFFFF";
                }else{
                        error = true;	
                        document.getElementById(campo).style.background = "#FFCCE0";
                }
                return error;
        }
        /*Funcion que verifica que la clave no contenga caracteres raros*/
        function claveValida(campo,min,max){
                var clave = document.getElementById(campo).value;
                var alphaExp = /\s/gi;
                if(clave.length >= min && clave.length <= max && !clave.match(alphaExp)){
                        document.getElementById(campo).style.background = "#FFFFFF";
                        return true;
                }else{
                        document.getElementById(campo).style.background = "#FFCCE0";
                        return false;	
                }
        }
        /*Funcion que verifica que el campo sea valido*/
        function campoValido(campo,min,max){
                error = false;
                var objeto = document.getElementById(campo).value;
                var alphaExp = /\@|\'|\#|\$|\%|\;|drop|insert|create|delete|update/gi;
                if(objeto.length >= min && objeto.length <= max && !objeto.match(alphaExp)){
                        error=false;
                        document.getElementById(campo).style.background = "#FFFFFF";
                        return true;
                }else{
                        document.getElementById(campo).style.background = "#FFCCE0";
                        error = true;
                        return false;
                }
        }
        /*Funcion que verifica que el indice este entre 3 y 5*/
        function verificaIndice(campo){
            error=false;
            var indice = document.getElementById(campo).value;
            if(parseFloat(indice)>=3 && parseFloat(indice)<=5){
                document.getElementById(campo).style.background = "#FFFFFF";
                error = false;
            }else{
                document.getElementById(campo).style.background = "#FFCCE0";
                error = true;
            }
            return error;
        }
        /*Funcion que verifica que el carnet tiene un formato valido*/
        function verificaCarnet(campo){
            error=false;
            var carnet = document.getElementById(campo).value;
            carnet = carnet.split("-");
            anio = carnet[0];
            numero = carnet[1];
            if(carnet.length>1 && !isNaN(parseFloat(anio))&& !isNaN(parseFloat(numero))){
                document.getElementById(campo).style.background = "#FFFFFF";
                error = false;
            }else{
                document.getElementById(campo).style.background = "#FFCCE0";
                error = true;
            }
            return error;
        }
        /*Funcion que verifica que el campo esta compuesto solo por numeros*/
        function esNumero(campo){
            error=false;
            var string = document.getElementById(campo).value;
            var numero = parseFloat(string);
            if(isNaN(numero)){
                document.getElementById(campo).style.background = "#FFCCE0";
                error = true;
            }else{
                document.getElementById(campo).style.background = "#FFFFFF";
                error = false;
            }
            return error;
        }
        /*Funcion que verifica que el campo tenga un tamano mayor a 4 caracteres*/
        function tamano(campo){
            error=false;
            var string = document.getElementById(campo).value;
            if(string.length()>3){
                error = false;
                document.getElementById(campo).style.background = "#FFFFFF";
            }else{
                document.getElementById(campo).style.background = "#FFCCE0";
                error = true;
            }
            return error;
        }
        /*Funcion grafica para subir un div*/
        function subir(campo){
            Effect.SlideUp(campo);
        }
        /*Funcion grafica para bajar un div*/
        function bajar(campo){
            Effect.SlideDown(campo);
        }