

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
                  
        </table><br/>
            

</html>
