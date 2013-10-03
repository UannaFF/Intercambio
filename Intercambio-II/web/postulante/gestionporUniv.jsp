<%-- 
    Document   : gestionporUniv
    Created on : 29/09/2013, 04:45:28 PM
    Author     : jaescalante02
--%>

<%Object tmp = session.getAttribute("nombreusuario");%>
<%Object var = session.getAttribute("nombre");%>
<%Object confirm = session.getAttribute("confirmar");%>
<%@page import="javax.swing.text.html.HTML"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>

 <title>Sistema de Gesti&oacute;n de Intercambio</title>
<html:html lang="true">

    <h4 align ="center">Coordinaci&oacute;n</h4>
    <h5 align ="center">Elija una universidad </h5>

    <script  src="/Intercambio-II/css/gestion.js"></script>
    
    <%String uni=null;%>
    
    <html:form  action="/GestionUniv"  method="POST" enctype="multipart/form-data" onsubmit="return(this)">
        <table border="0" width="520"> 
           
            <tr > <td><p hidden="true"><html:text name="GestionUniversidad" property="nombreusuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                           errorKey="org.apache.struts.action.ERROR"></html:text></p>
            </td></tr>    
       
        <tr>
            
            <td>
                <b>Pa&iacute;s al que fue de Intercambio: </b>
            </td>
            <td align="center">
               <html:select styleId="pais_princG" name="GestionUniversidad" onchange="cambia_universidadG()" property="pais"> 
               <html:option value="0">Seleccione </html:option>
               <html:option value="Alemania">Alemania</html:option>
               <html:option value="Argentina">Argentina</html:option>
               <html:option value="Australia">Australia</html:option>
               <html:option value="Bélgica">B&eacute;lgica</html:option>
               <html:option value="Bolivia">Bolivia</html:option>
               <html:option value="Brasil">Brasil</html:option>
               <html:option value="Canadá">Canad&aacute;</html:option>
               <html:option value="Chile">Chile</html:option>
               <html:option value="Colombia">Colombia</html:option> 
               <html:option value="CostaRica">Costa Rica</html:option>
               <html:option value="Ecuador">Ecuador</html:option>
               <html:option value="España">Espa&ntilde;a</html:option>
               <html:option value="EstadosUnidos">Estados Unidos</html:option>
               <html:option value="Finlandia">Finlandia</html:option>
               <html:option value="Francia">Francia</html:option>
               <html:option value="Italia">Italia</html:option>
               <html:option value="Japón">Jap&oacute;n</html:option>
               <html:option value="México">M&eacute;xico</html:option>
               <html:option value="Noruega">Noruega</html:option>
               <html:option value="Panamá">Panam&aacute;</html:option>
               <html:option value="Paraguay">Paraguay</html:option>
               <html:option value="Perú">Per&uacute;</html:option>
               <html:option value="Polonia">Polonia</html:option>
               <html:option value="PuertoRico">Puerto Rico</html:option>
               <html:option value="ReinoUnido">Reino Unido</html:option>
               <html:option value="RepúblicaCheca">Rep&uacute;blica Checa</html:option>               
               <html:option value="RepúblicaDominicana">Rep&uacute;blica Dominicana</html:option>
               <html:option value="Suecia">Suecia</html:option>
               <html:option value="Uruguay">Uruaguay</html:option>
               <html:option value="Venezuela">Venezuela</html:option>               
             </html:select>
        </td></tr>
        <tr>
            <td>
                <b>Universidad a la que fue de Intercambio: </b>
            </td>
        <td align="center">
            <html:select styleId="uni_princG" name="GestionUniversidad" property="univ"> 
                <html:option value="-">- </html:option>
            </html:select>
       </td></tr>
        
        <tr ><td colspan="2">
       <script>   
                   function nouniv(){
        
        
        
                if((document.getElementById("pais_princG")[document.getElementById("pais_princG").selectedIndex].value == 0)
           || (document.getElementById("uni_princG")[document.getElementById("uni_princG").selectedIndex].value == "Seleccione"))
       { 
           
                   alert ("Es necesario que elija una universidad.");
                   return false;
            
        }
           
             
         return true;
        } </script>     
                
                
           <p style="text-align: center">
               <html:submit onclick="return nouniv();" >
                Buscar
               </html:submit>
           </p>

        </td></tr>
        
       </table> 
    </html:form>
       <br>
       <br>
       <br>
              
    
         <html:link action="/AccionesGestionCoord">
            <p style="text-align: center">
            <html:submit>
                Volver
            </html:submit>
            </p>
      </html:link>
    
</html:html>