<%-- 
    Document   : acciones
    Created on : Oct 25, 2012, 8:03:13 PM
    Author     : dycicle Systems
--%>
<%Object var = session.getAttribute("nombreusuario");%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<html>
    <title>SGI - Agregar Estudiante USB</title>

    <body onload ="clearForms()" onunload="clearForms()">

        <h4>Postulaci&oacute;n de Nuevo Estudiante</h4>
        <h5>Por favor introduzca los datos del estudiante.</h5>

        
            <table border="0" >
                <tbody>
                    <tr>

                        <td style="color: black">Nombre de Usuario</td>
                        <td>
                            <html:text name="EstUSB" property="nombreusuario" maxlength="20" errorStyleClass="error"
                                       errorKey="org.apache.struts.action.ERROR"></html:text>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <html:errors property="nombreusuario" />
                        </td>
                    </tr>

                    <tr>
                        <td style="color: black">Email</td>
                        <td>
                            <html:text name="EstUSB" property="email" maxlength="30" errorStyleClass="error" value=""
                                       errorKey="org.apache.struts.action.ERROR"></html:text>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <html:errors property="email" />
                        </td>
                    </tr>

                </tbody>
            </table>

            <p style="text-align: center">
                <html:submit onclick="javascript: return confirm('Un correo sera enviado al estudiante postulado')">
                    Postular Estudiante
                </html:submit>
 
            </p>
        

    </body>
</html>
