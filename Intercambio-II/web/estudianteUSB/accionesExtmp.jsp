<%-- 
    Document   : accionesExtmp
    Created on : 15/10/2013, 06:04:21 PM
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
  

    <table border="0" width="520" >
        <tr> <td> <h4 align ="center">Estudiante USB</h4> </td> </tr>
        <tr align="center"><td>
                <div id="opci1" class="divformulario" style="display: block" align="center">
                    <p align="center"><b>¡Extemporanea!</b></p>
                    </p>
                     
                </div>     
                    </td></tr>
                </table>    
        </td></tr>
        <tr> <td> <h3 align ="center">¿Qu&eacute; desea hacer?</h3> </td> </tr>
    
        
        <tr> <td>   

     <html:form  action="/AgregarExtmp" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
                        <p hidden="true"><html:text name="ExtmpSol" property="nombreusuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p> 
                        <p hidden="true"><html:text name="ExtmpSol" property="solicitud" maxlength="20" errorStyleClass="error" value =""
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p> 
                                                <p hidden="true"><html:text name="ExtmpSol" property="tipo" maxlength="20" errorStyleClass="error" value ="0"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p> 
            <p style="text-align: center">
            <html:submit >
                Agregar Solicitud
            </html:submit>
        </p>
     </html:form> 
        
       </td> </tr>
        <tr><td>
    
        
    <html:form  action="/ConsultarExtmp" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
       
                        <p hidden="true"> <html:text name="ExtmpSol" property="nombreusuario" value ="<%=tmp.toString()%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        
                          <p style="text-align: center">
                            <html:submit >
                                Consultar Solicitudes
                            </html:submit>
                        </p>    

   </html:form>
   </body> 
    </td></tr>
    </table>
    
    
</html:html>