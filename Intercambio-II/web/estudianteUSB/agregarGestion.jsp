<%-- 
    Document   : agregarGestion
    Created on : 30/05/2013, 02:59:15 PM
    Author     : jaescalante02
--%>

<%Object tmp = session.getAttribute("nombreusuario");%>
<%Object var = session.getAttribute("nombre");%>
<%Object confirm = session.getAttribute("confirmar");%>
<%@page import="javax.swing.text.html.HTML"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>

 <title>Sistema de Gesti&oacute;n de Intercambio</title>
<html:html lang="true">

   <div id="Bienveni">
        <h1>Bienvenido </h1>
   </div>
    


    <br>
    <br>
    <h4 align ="center">Estudiante USB</h4>
    <h5 align ="center">Bienvenido de nuevo a casa! Danos tu opinion </h5>

    <body onload ="clearForms()" onunload="clearForms()">
    
    <html:form  action="/gestionAgregada" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
    <table border="0" >
            <tbody>
                <tr> <p hidden="true"><html:text name="Gestion" property="usuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                           errorKey="org.apache.struts.action.ERROR"></html:text></p></tr>
                <tr>
                    <td > <p>Pregunta 1:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p1" value="1" /> 1
                                                        <html:radio property="p1" value="2" /> 2
                                                        <html:radio property="p1" value="3" /> 3
                                                        <html:radio property="p1" value="4" /> 4
                                                        <html:radio property="p1" value="5" /> 5</td>
                </tr>
                <tr>
                    <td > <p>Pregunta 2:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p2" value="1" /> 1
                                                        <html:radio property="p2" value="2" /> 2
                                                        <html:radio property="p2" value="3" /> 3
                                                        <html:radio property="p2" value="4" /> 4
                                                        <html:radio property="p2" value="5" /> 5</td>
                </tr>
                <tr>
                    <td > <p>Pregunta 3:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p3" value="1" /> 1
                                                        <html:radio property="p3" value="2" /> 2 
                                                        <html:radio property="p3" value="3" /> 3
                                                        <html:radio property="p3" value="4" /> 4
                                                        <html:radio property="p3" value="5" /> 5</td>
                </tr>
                <tr>
                    <td > <p>Pregunta 4:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p4" value="1" /> 1
                                                        <html:radio property="p4" value="2" /> 2
                                                        <html:radio property="p4" value="3" /> 3
                                                        <html:radio property="p4" value="4" /> 4
                                                        <html:radio property="p4" value="5" /> 5</td>
                </tr>
                <tr>
                    <td > <p>Pregunta 5:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p5" value="1" /> 1
                                                        <html:radio property="p5" value="2" /> 2
                                                        <html:radio property="p5" value="3" /> 3
                                                        <html:radio property="p5" value="4" /> 4
                                                        <html:radio property="p5" value="5" /> 5 </td>
                </tr>
                <tr>
                    <td > <p>Pregunta 6:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p6" value="1" /> 1
                                                        <html:radio property="p6" value="2" /> 2
                                                        <html:radio property="p6" value="3" /> 3
                                                        <html:radio property="p6" value="4" /> 4
                                                        <html:radio property="p6" value="5" /> 5 </td>
                </tr>
                <tr>
                    <td > <p>Pregunta 7:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p7" value="1" /> 1
                                                        <html:radio property="p7" value="2" /> 2
                                                        <html:radio property="p7" value="3" /> 3
                                                        <html:radio property="p7" value="4" /> 4
                                                        <html:radio property="p7" value="5" /> 5 </td>
                </tr>
                <tr>
                    <td > <p>Pregunta 8:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p8" value="1" /> 1
                                                        <html:radio property="p8" value="2" /> 2
                                                        <html:radio property="p8" value="3" /> 3
                                                        <html:radio property="p8" value="4" /> 4
                                                        <html:radio property="p8" value="5" /> 5 </td>
                </tr>
                <tr>
                    <td > <p>Pregunta 9:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p9" value="1" /> 1
                                                        <html:radio property="p9" value="2" /> 2
                                                        <html:radio property="p9" value="3" /> 3
                                                        <html:radio property="p9" value="4" /> 4
                                                        <html:radio property="p9" value="5" /> 5 </td>
                </tr>
                                <tr>
                    <td > <p>Pregunta 10:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p10" value="1" /> 1
                                                        <html:radio property="p10" value="2" /> 2
                                                        <html:radio property="p10" value="3" /> 3
                                                        <html:radio property="p10" value="4" /> 4
                                                        <html:radio property="p10" value="5" /> 5 </td>
                </tr>
                <tr>
                    <td > <p>Pregunta 11:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p11" value="1" /> 1
                                                        <html:radio property="p11" value="2" /> 2
                                                        <html:radio property="p11" value="3" /> 3
                                                        <html:radio property="p11" value="4" /> 4
                                                        <html:radio property="p11" value="5" /> 5</td>
                </tr>
                <tr>
                    <td > <p>Pregunta 12:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p12" value="1" /> 1
                                                        <html:radio property="p12" value="2" /> 2
                                                        <html:radio property="p12" value="3" /> 3
                                                        <html:radio property="p12" value="4" /> 4
                                                        <html:radio property="p12" value="5" /> 5</td>
                </tr>
                <tr>
                    <td > <p>Pregunta 13:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p13" value="1" /> 1
                                                        <html:radio property="p13" value="2" /> 2 
                                                        <html:radio property="p13" value="3" /> 3
                                                        <html:radio property="p13" value="4" /> 4
                                                        <html:radio property="p13" value="5" /> 5</td>
                </tr>
                <tr>
                    <td > <p>Pregunta 14:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p14" value="1" /> 1
                                                        <html:radio property="p14" value="2" /> 2
                                                        <html:radio property="p14" value="3" /> 3
                                                        <html:radio property="p14" value="4" /> 4
                                                        <html:radio property="p14" value="5" /> 5</td>
                </tr>
                <tr>
                    <td > <p>Pregunta 15:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p15" value="1" /> 1
                                                        <html:radio property="p15" value="2" /> 2
                                                        <html:radio property="p15" value="3" /> 3
                                                        <html:radio property="p15" value="4" /> 4
                                                        <html:radio property="p15" value="5" /> 5 </td>
                </tr>
                <tr>
                    <td > <p>Pregunta 16:</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p16" value="1" /> 1
                                                        <html:radio property="p16" value="2" /> 2
                                                        <html:radio property="p16" value="3" /> 3
                                                        <html:radio property="p16" value="4" /> 4
                                                        <html:radio property="p16" value="5" /> 5 </td>
                </tr>
            </tbody>
        </table>
    
   
<%--   <P><LABEL ACCESSKEY=C><INPUT TYPE=radio NAME="payment_method" VALUE="1" CHECKED> Credit card</LABEL><BR>
    <LABEL ACCESSKEY=D><INPUT TYPE=radio NAME="payment_method" VALUE="2"> Debit card</LABEL><BR>
<LABEL ACCESSKEY=M><INPUT TYPE=radio NAME="payment_method" VALUE="3"> Money order</LABEL></P> --%>
    
   
            <p style="text-align: center">
            <html:submit >
                Cargar Gestion de Conocimientos
            </html:submit>
            </p>
     </html:form> 
     <html:link action="/AccionesGestion">
            <p style="text-align: center">
            <html:submit>
                Volver
            </html:submit>
            </p>
      </html:link>      
            
    </body>
</html:html>            