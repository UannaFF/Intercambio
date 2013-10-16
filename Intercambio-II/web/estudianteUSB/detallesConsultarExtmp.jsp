<%-- 
    Document   : detallesConsultarExtmp
    Created on : 16/10/2013, 11:34:58 AM
    Author     : jaescalante02
--%>

<%@page import="Clases.ExtmpSol"%>
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

     <%ExtmpSol sol= (ExtmpSol)request.getAttribute("solicitudextmp");%>
    
    <h4 align ="center">Estudiante USB</h4>
    <table border="1" width="400">
    
        <th>Solicitud</th>
        <tr><td align="center">
                
              <%=sol.getsolicitud()%>  
                
                
            </td></tr>       
        
     
    </table>
              <br><br><br><br>          
    <table border="1" width="400">
        <th>Respuesta </th>
             <tr><td align="center">
                     <%if(!(sol.getrespuesta().equals(""))){%>
                <%=sol.getrespuesta()%>
                <%}else{%>
                Su solicitud no ha sido respondida.
                <%}%>
                
            </td></tr>        
        
     
    </table>
     <html:form  action="/ConsultarExtmp" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
       
                        <p hidden="true"> <html:text name="ExtmpSol" property="nombreusuario" value ="<%=tmp.toString()%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        
                          <p style="text-align: center">
                            <html:submit >
                                Volver
                            </html:submit>
                        </p>    

   </html:form>      
            
    </body>
</html:html>