<%-- 
    Document   : falloAgregEst
    Created on : 03-dic-2012, 14:44:24
    Author     : kosmos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>

    <title>Fallo</title>


    <div style="text-align: center;">
        <h1>Ha dejado la recomendacion vacia</h1>
        
        <html:image src="images/error.png" /> 
        <br />
        
        <html:link action="accionesPostulante">
            Volver
        </html:link>
    </div>


</html>
