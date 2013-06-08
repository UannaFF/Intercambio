<%-- 
    Document   : accionesGestion
    Created on : 29/05/2013, 10:32:26 PM
    Author     : jaescalante02
--%>

<%Object tmp = session.getAttribute("nombreusuario");%>
<%Object var = session.getAttribute("nombre");%>
<%Object confirm = session.getAttribute("confirmar");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>


<title>Sistema de Gesti&oacute;n de Intercambio</title>
<html:html lang="true">

   <div id="Bienven">
        <h1>Bienvenido </h1>
        <h1>El estado actual de su postulacion es: </h1>
   </div>
    
         <p hidden="true"><bean:write name="Usuario" property="nombre"></bean:write></p>
    <p hidden="true"><bean:write name="Usuario" property="email"></bean:write></p>
<p hidden="true"><bean:write name="Usuario" property="nombreusuario"></bean:write></p> 

    <br>
    <br>
    <h4 align ="center">Estudiante USB</h4>
    <h5 align ="center">¿Qu&eacute; desea hacer?</h5>

    <html:form  action="/AgregarGestion" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
             <p hidden="true"><html:text name="Usuario" property="nombreusuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
errorKey="org.apache.struts.action.ERROR"></html:text></p> 
            <p style="text-align: center">
            <html:submit >
                Agregar Gestion de Conocimientos
            </html:submit>
        </p>
     </html:form> 
    
    <html:form  action="/ConsultarGestion" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
        <table border="0" >
            <tbody>
                <tr>
                    <td >
                        <p hidden="true"> <html:text name="Usuario" property="nombreusuario" value ="<%=tmp.toString()%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        </td>
                        <td>        
                            <p style="text-align: center">
                            <html:submit >
                                Consultar Gestion de Conocimientos
                            </html:submit>
                        </p>    
                    </td>

                </tr>
            </tbody>
        </table>
    </html:form>
    
    
        <html:form  action="/ModificarGestion" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
        <p hidden="true"><html:text name="Usuario" property="nombreUsuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
            <p style="text-align: center">
            <html:submit >
                Modificar Gestion de Conocimientos
            </html:submit>
        </p>
</html:form> 

</html:html>