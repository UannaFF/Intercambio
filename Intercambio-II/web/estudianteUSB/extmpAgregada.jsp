<%-- 
    Document   : extmpAgregada
    Created on : 15/10/2013, 07:49:23 PM
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
        <h3>Su solicitud ya ha sido procesada.</h3>
        
        <html:image src="images/correct.png" /> 
        <br />
        
        <html:link action="AccionesExtmp">
            Continuar
        </html:link>
    </div>

</html>