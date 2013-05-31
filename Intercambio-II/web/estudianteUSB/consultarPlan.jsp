<%-- 
    Document   : formularioSolicitudUSB
    Created on : Nov 13, 2012, 10:13:53 AM
    Last Modif : Feb 21, 2013
    Author     : Katy
--%>


<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<html>
    <title>Mostrar-PlanDeEstudios</title>
    <h4> Plan De Estudio </h4>
    
    <table border="0"  align="center" style="margin-left: auto;margin-right: auto; text-align: center">

                                <tr>
                
                                    <td> Código-USB
                            
                                    </td>

                                    <td> Nombre-USB</td>

                                    <td> Créditos-USB</td>

                                    <td> Codigo-Univ. Destino</td>

                                    <td> Nombre-Univ. Destino</td>                                

                                    <td> Créditos-Univ. Destino</td>

                                </tr>
                                <tr>
                                   <logic:iterate id="element" name="materias" >

                                       <bean:write filter='false' name="element" />
                                </logic:iterate>
                                </tr>

                    </table>
</html>
