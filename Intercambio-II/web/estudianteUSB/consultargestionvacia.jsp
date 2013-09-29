<%-- 
    Document   : consultargestionvacia
    Created on : 31/05/2013, 12:01:04 PM
    Author     : jaescalante02
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>

    <title>Fallo</title>


    <div style="text-align: center;">
        <h2>Operaci&oacute;n Fallida</h2>
        <h3>No hay gesti&oacute;n para consultar</h3>
        
        <html:image src="images/error.png" /> 
        <br />
        
        <html:link action="accionesGestion">
            Continuar
        </html:link>
    </div>

</html>
