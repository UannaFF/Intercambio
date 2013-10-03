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
                    <p align="center"><b>Consulta de la Gesti&oacute;n de conocimientos</b></p>
                    <br>Este espacio est&aacute; destinado a la consulta de la opini&oacute;<br>
                     estudiantil en el exterior.<br>
                     Verifique la opini&oacute;n en los diversos pa&iacute;ses y universidades y <br>
                     revise las mejores opciones calculadas para los <br> estudiantes de su carrera.

                </div>     
                    </td></tr>
                  
        </td></tr>
<tr> <td> <h3 align ="center">¿C&oacute;mo desea consultar?</h3> </td> </tr>
    
        
        <tr> <td>   

     <html:form  action="/GestionporPais" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
                     <p hidden="true"><html:text name="GestionUniversidad" property="pais" maxlength="20" errorStyleClass="error" value ="0"
                    errorKey="org.apache.struts.action.ERROR"></html:text></p>
 
            <p style="text-align: center">
            <html:submit >
                Por pa&iacute;s
            </html:submit>
           </p>
     </html:form> 
        
   
       </td> </tr>
        <tr><td>
  
        
    <html:form  action="/GestionporUniv" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
        
        
       <p hidden="true"><html:text name="GestionUniversidad" property="pais" maxlength="20" errorStyleClass="error" value ="0"
                    errorKey="org.apache.struts.action.ERROR"></html:text></p>
       <p hidden="true"><html:text name="GestionUniversidad" property="univ" maxlength="20" errorStyleClass="error" value ="-"
                    errorKey="org.apache.struts.action.ERROR"></html:text></p>
              
                          <p style="text-align: center">
                              <html:submit>
                                Por Universidad
                            </html:submit>
                        </p>    

   </html:form>
    </td></tr>
    <tr><td>
   
   
    
        
    <html:form  action="/GestionAvanzada" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
     <p hidden="true"><html:text name="Usuario" property="nombreusuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                           errorKey="org.apache.struts.action.ERROR"></html:text></p>          
            <p style="text-align: center">
                <html:submit>
                    B&uacute;squeda Avanzada
                </html:submit>
           </p>
     </html:form> 
    
    </td></tr>
    </table>
    
    
</html:html>
