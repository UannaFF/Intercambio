<%-- 
    Document   : gestionnocompleta
    Created on : 31/05/2013, 12:14:42 PM
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
        <h2>Operación Fallida</h2>
        <h3>No ha llenado la encuesta correctamente</h3>
        
        <html:image src="images/error.png" /> 
        <br />
        
        <html:link action="AccionesGestion">
            Continuar
        </html:link>
    </div>

</html>
