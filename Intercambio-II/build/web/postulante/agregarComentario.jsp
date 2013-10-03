<%-- 
    Document   : agregarComentario
    Created on : 27-feb-2013, 17:28:51
    Author     : gustavo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comentar</title>
    </head>

    <center><h1>Agregar Comentario para estudiante:</h1></center>
    <html:form action="/AgregarComentario"  acceptCharset="ISO-8859-1" onsubmit="return(this)">
        <html:hidden name="Usuario" property="nombreusuario"/>
        <center> <html:textarea style="width:300px;height:200px;" name="Usuario" property="confirmar"/>
<br>
        <br/><br/><html:submit value="Postular"> </html:submit></center>
    </html:form>




</html>
