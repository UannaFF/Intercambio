<%-- 
    Document   : consultarExtmp
    Created on : 15/10/2013, 06:19:46 PM
    Author     : jaescalante02
--%>

<%@page import="java.util.ArrayList"%>
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

     <%ArrayList<ExtmpSol> sol= (ArrayList<ExtmpSol>)request.getAttribute("solicitudesextmp");%>
    
    <h4 align ="center">Estudiante USB</h4>
    
    <p align="center"> Verifique el estado de sus solicitudes</p>
    
    <table border="1" width="520">
        <tr>
            <th>Tipo</th>
            <th>Fecha</th>
            <th>Estado</th>
            <th>Detalles</th>
            
            
        </tr>
    <%if(sol.size()==0){%>
    <tr><td align="center" colspan="4"> No hay solicitudes para consultar</td></tr>
    <%}else{%>
    <%for(int i = 0; i<sol.size(); i++){%>
    <html:form  action="/DetallesConsultarExtmp" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
            
                
            <p hidden="true"> <html:text name="ExtmpSol" property="nombreusuario" value ="<%=sol.get(i).getnombreusuario().toString()%>" maxlength="20" errorStyleClass="error"
                                 errorKey="org.apache.struts.action.ERROR"></html:text></p>    
                
            
            <p hidden="true"> <html:text name="ExtmpSol" property="estado" value ="<%=sol.get(i).getestado().toString()%>" maxlength="20" errorStyleClass="error"
                                 errorKey="org.apache.struts.action.ERROR"></html:text></p> 
            
            <p hidden="true"> <html:text name="ExtmpSol" property="tipo" value ="<%=sol.get(i).gettipo().toString()%>" maxlength="20" errorStyleClass="error"
                                 errorKey="org.apache.struts.action.ERROR"></html:text></p> 
            <p hidden="true"> <html:text name="ExtmpSol" property="respuesta" value ="<%=sol.get(i).getrespuesta()%>" maxlength="2000" errorStyleClass="error"
                                 errorKey="org.apache.struts.action.ERROR"></html:text></p> 
            <p hidden="true"> <html:text name="ExtmpSol" property="solicitud" value ="<%=sol.get(i).getsolicitud().toString()%>" maxlength="2000" errorStyleClass="error"
                                 errorKey="org.apache.struts.action.ERROR"></html:text></p> 
            <td><%=sol.get(i).gettipo()%></td>
            <td><%=sol.get(i).getfecha()%></td>
            <td><%=sol.get(i).getestado()%></td>
            <td>            <p style="text-align: center">
            <html:submit>
                Solicitud/Respuesta
            </html:submit>
            </p></td>
            </tr>
            </html:form>
           <%}}%>
           
        
     
    </table>
     <html:link action="/AccionesExtmp">
            <p style="text-align: center">
            <html:submit>
                Volver
            </html:submit>
            </p>
      </html:link>      
            
    </body>
</html:html>
