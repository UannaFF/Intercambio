<%-- 
    Document   : mostrarpreregistro
    Created on : 02-dic-2012, 22:45:35
    Author     : gustavo
--%>

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

        <h4>Informaci&oacute;n de Pre-Registro</h4>

        <table border=1 cellspacing=0 cellpadding=2 style="width:90%;">
            <tr>
                <td>Usuario     </td>
                <td>E-mail      </td>
                 <td>Nombre      </td>
                 
            </tr>
            <tr>
                
                <td><bean:write name = "usuario" property="nombreusuario"/></td>
                <td><bean:write name = "usuario" property="email"/></td>
                <td><bean:write name = "usuario" property="nombre"/></td>
                
            </tr>
        </table>

</html>
