<%-- 
    Document   : gestionGuardadaExito
    Created on : 21/09/2013, 02:20:43 PM
    Author     : jaescalante02
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <title>Exito</title>
    
    <div style="text-align: center;">
        <h1>Su gestion ha sido guardada exitosamente</h1>
        
        <html:image src="images/correct.png" /> 
        <br />
        
        <html:link action="AccionesGestion">
            Continuar
        </html:link>
    </div>

</html>
