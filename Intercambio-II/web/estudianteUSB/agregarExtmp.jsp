<%-- 
    Document   : agregarExtmp
    Created on : 15/10/2013, 06:18:40 PM
    Author     : jaescalante02
--%>

<%Object tmp = session.getAttribute("nombreusuario");%>
<%Object var = session.getAttribute("nombre");%>
<%Object confirm = session.getAttribute("confirmar");%>
<%@page import="javax.swing.text.html.HTML"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>

 <title>Sistema de Gesti&oacute;n de Intercambio</title>
<html:html lang="true">

    <h4 align ="center">Estudiante USB</h4>
    
    <html:form  action="/ExtmpAgregada" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
        <table border="0" width="520"> 
           <tr><td>
                
            <p hidden="true"> <html:text name="ExtmpSol" property="nombreusuario" value ="<%=tmp.toString()%>" maxlength="20" errorStyleClass="error"
                                 errorKey="org.apache.struts.action.ERROR"></html:text></p>    
                
            </td></tr>
            
        <tr>
            <td align="center">
               <html:select styleId="tippo" name="ExtmpSol" property="tipo"> 
               <html:option value="0">Seleccione </html:option>
               <html:option value="materia">Solicitud de cambio de materia</html:option>
               <html:option value="pasantia">Solicitud de pasant&iacute;a</html:option>
               <html:option value="proygrado">Solicitud de proyecto de grado</html:option>              
             </html:select>  
        </td></tr>
        <tr><td align="center">
                
               <html:textarea style="width:500px;height:200px;" name="ExtmpSol" property="solicitud" errorStyleClass="error"
                              errorKey="org.apache.struts.action.ERROR"></html:textarea> 
                
            </td></tr>
            </tbody>
        </table>
    
   
<%--   <P><LABEL ACCESSKEY=C><INPUT TYPE=radio NAME="payment_method" VALUE="1" CHECKED> Credit card</LABEL><BR>
    <LABEL ACCESSKEY=D><INPUT TYPE=radio NAME="payment_method" VALUE="2"> Debit card</LABEL><BR>
<LABEL ACCESSKEY=M><INPUT TYPE=radio NAME="payment_method" VALUE="3"> Money order</LABEL></P> --%>
    
   
<p style="text-align: center" >
    <html:submit > <%--onclick="return gestionnocompleta();"--%>
                Guardar
    </html:submit>
            </p>
     </html:form> 
     <html:link action="/AccionesExtmp">
            <p style="text-align: center">
            <html:submit>
                Volver
            </html:submit>
            </p>
      </html:link>      
            
    </body>
</html:html>