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
    
    <table border="1"  align="center" style="margin-left: auto;margin-right: auto; text-align: center; font-size:12px">

                                <tr>
                                    <td> Nombre-USB
                            
                                    </td>

                                    <td> Código-USB</td>

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
    <br/>
     <div id="plan" style=" width: 75%;margin-left: 15%">
    <div style="width:auto;height:auto;border:3px solid #126598; border-radius: 10px;background: #dcebe8">
            <div align=center>
        <p>
            Si desea eliminar una materia de su plan de estudio, ingrese el codigo USB de la materia y haga click sobre el boton de eliminar materia.
        </p>
        <html:form action="/AccionElimMatPdE" acceptCharset="ISO-8859-1" method="post" enctype="multipart/form-data">
            <br />
                    <p hidden="true"><html:text name="PlanDeEstudio" property="nombreUsuario" maxlength="20" errorStyleClass="error" value ="<%=var.toString()%>"
                               errorKey="org.apache.struts.action.ERROR"></html:text></p>

                        <table border="0"  align="center" style="margin-left: auto;margin-right: auto">
                            <tbody id ="MateBody">
                                <tr>
                                    
                                    <td> Código-USB</td>
                                 </tr>
                                    
                                  <tr>
                                    
                                    <td>
                                    <html:text name="PlanDeEstudio" property="codigoUSB[0]" maxlength="45" errorStyleClass="error" value="" style="width:80%;"
                                               errorKey="org.apache.struts.action.ERROR">
                                    </html:text>
                                    </td>
                                    
                                    <td>
                                        <html:submit>Eliminar Materia </html:submit>
                                 
                                        </html:form>
                                    </td>
                                  </tr>
                            </tbody>
                        </table>
            </div>
        
    </div>
         </div>
        <br/>
    <div align="center">
        <html:link action="/CargarLlenarPlanillaUSB">Regresar</html:link>
    </div>
    
</html>
