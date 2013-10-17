<%-- 
    Document   : respNoEnv
    Created on : Oct 17, 2013, 3:14:45 PM
    Author     : leddkire
--%>
<%Object var = session.getAttribute("nombre");
    Object var2 = session.getAttribute("nombreusuario");%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Respuesta No Enviada</title>
    </head>
    <body>
        <div align="center">
        <h2> La respuesta no se logro enviar, intente mas tarde </h2>
        
     <html:form action="/solicitudes">
            <html:hidden name="Usuario" property="nombreusuario" value="<%=var2.toString()%>"/>
            <html:hidden name="Usuario" property="nombre" value="true"/>
            <html:submit>Volver al listado de solicitudes</html:submit>
    </html:form> 
    <html:form action="/accionesPostulante">
            <html:hidden name="Usuario" property="nombreusuario" value="<%=var2.toString()%>"/>
            <html:hidden name="Usuario" property="nombre" value="true"/>
            <html:submit>Volver a la pagina principal</html:submit>
    </html:form> 
        </div>
        
    </body>
</html>
