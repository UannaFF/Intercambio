<%-- 
    Document   : formularioSolicitudUSB
    Created on : Nov 13, 2012, 10:13:53 AM
    Last Modif : Feb 21, 2013
    Author     : Katy
--%>

<%Object var = session.getAttribute("nombreusuario");%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../css/estilo.css">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<html>
    <title>Mostrar-PlanDeEstudios</title>
    <h4> Plan De Estudio </h4>
    <p style="color:green" align="center"> La materia fue eliminada satisfactoriamente </p>
    
    <div align="center">
        <html:form  action="/CargarConsultarMaterias" method="POST" >
            <p hidden="true"><html:text name="Usuario" property="nombreusuario" maxlength="20"  value ="<%=var.toString()%>" errorKey="org.apache.struts.action.ERROR"></html:text></p>
            <p  align=center> <html:submit>Eliminar otra materia</html:submit></p>

        </html:form>
        </br>
        <html:link action="/CargarLlenarPlanillaUSB">Regresar a la gestion del formulario</html:link>
    </div>
    
</html>