<%-- 
    Document   : accionesGestionCoord
    Created on : 29/09/2013, 03:35:54 PM
    Author     : jaescalante02
--%>

<%@page import="Clases.*"%>
<%Object tmp = session.getAttribute("nombreusuario");%>
<%Object var = session.getAttribute("nombre");%>
<%Object confirm = session.getAttribute("confirmar");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>


<title>Sistema de Gesti&oacute;n de Intercambio</title>
<html:html lang="true">
  


 
         <p hidden="true"><bean:write name="Usuario" property="nombre"></bean:write></p>
    <p hidden="true"><bean:write name="Usuario" property="email"></bean:write></p>
<p hidden="true"><bean:write name="Usuario" property="nombreusuario"></bean:write></p> 
    <table border="0" width="520" >
        <tr> <td> <h4 align ="center">Estudiante USB</h4> </td> </tr>
        <tr align="center"><td>
                <div id="opci1" class="divformulario" style="display: block" align="center">
                    <p align="center"><b>¡Mensaje a COORDINADOR!</b></p>
                    Esto es un mensaje de prueba <br><br><br>
                     
                </div>     
                    </td></tr>
                  
        </td></tr>
        <tr> <td> <h3 align ="center">¿Qu&eacute; desea hacer?</h3> </td> </tr>
    
        
        <tr> <td>   

     <html:form  action="/GestionporPais" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
 
            <p style="text-align: center">
            <html:submit >
                Por pa&iacute;s
            </html:submit>
           </p>
     </html:form> 
        
   
       </td> </tr>
        <tr><td>
  
        
    <html:form  action="/GestionporUniv" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
       
              
                          <p style="text-align: center">
                            <html:submit >
                                Por Universidad
                            </html:submit>
                        </p>    

   </html:form>
    </td></tr>
    <tr><td>
   
   
    
        
    <html:form  action="/GestionAvanzada" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
                     
            <p style="text-align: center">
                <html:submit>
                    B&uacute;squeda Avanzada
                </html:submit>
           </p>
     </html:form> 
    
    </td></tr>
    </table>
    
    
</html:html>
