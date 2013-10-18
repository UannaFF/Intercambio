
<%Object var = session.getAttribute("nombre");
    Object var2 = session.getAttribute("nombreusuario");%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<html>

        <title>Mostrar-Usuario</title>
        <script language="JavaScript">
            function submitForm() { document.ObtenerDatos.submit(); }
        </script>

        <h4>Solicitud</h4>
       
        <table border=1 cellspacing=0 cellpadding=2 style="width:68%;">
            <tr>
                <td>Nombre</td>
                <td><bean:write name = "solicitud" property="nombreusuario"/></td>
            </tr>
             <tr>
                <td>Tipo de solicitud</td>
                <td><bean:write name = "solicitud" property="tipo"/></td>
            </tr>
            <tr>
                <td>Fecha</td>
                <td><bean:write name = "solicitud" property="fecha"/></td>
            </tr>
            <tr>
                <td>Solicitud</td>
                <td><bean:write name = "solicitud" property="solicitud"/></td>
            </tr>
            <tr>
                <td>Archivo adjunto</td>
                <td><a href="Documentos2/<bean:write name = "solicitud" property="dirarchivo"/>">Descargar</a></td>
            </tr>
          
                  
        </table>
            
            
                <html:form styleId="ResponderExtmp" action="/ResponderSolicitudExtmp" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this);">
                  
                    
                    <p hidden="true"><html:text name="solicitud" property="nombreusuario" maxlength="20" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR">
                       
                    </html:text></p>
                    
                    <html:text name="ExtmpSol" property="respuesta" maxlength="20" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR">
                       
                    </html:text>
                    
                    <html:radio name="ExtmpSol" property="estado" value="Aceptado">Aceptar Solicitud</html:radio>
                    <html:radio name="ExtmpSol" property="estado" value="Rechazado">Rechazar Solicitud</html:radio>
                    
                    
               
                    
                    <html:submit value="Enviar">
                        
                     Enviar  
                    </html:submit>
                     
                </html:form>
                     <br>     
                <html:form action="/solicitudes">
            <html:hidden name="Usuario" property="nombreusuario" value="<%=var2.toString()%>"/>
            <html:hidden name="Usuario" property="nombre" value="true"/>
            <html:submit>Volver</html:submit>
        </html:form> 
            </br>
            
</html>
