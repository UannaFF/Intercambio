<%-- 
    Document   : gestionAvanzada
    Created on : 01/10/2013, 08:02:59 AM
    Author     : jaescalante02
--%>

<%@page import="Clases.Gestionpais"%>
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
    
    <%String[] mejorc = (String []) request.getAttribute("mejorc");%>
    <%String[] mejorg = (String []) request.getAttribute("mejorg");%>
    <%String[] paisg = (String []) request.getAttribute("paisg");%>
    <%String[] paisc = (String []) request.getAttribute("paisc");%>
    

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <br><br><br>
    <br><br><br>
    <div id="muestrauni">
       <table  border="1" width="520">
           <h5 align ="center">Estas son las mejores opciones según la opinión de antiguos postulados </h5>
           <tr> <th>Mejores puntuaciones por Universidad</th></tr>
           <th> GENERAL</th>
           <tr>
               <td>
                   <table border="0">
                    <% for (int i=0; i<paisg.length; i++){%>
                  <html:form  action="/AvanzadaUniv" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
                  
                  <tr ><td><p hidden="true"><html:text name="GestionUniversidad" property="nombreusuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                           errorKey="org.apache.struts.action.ERROR"></html:text></p>
            </td></tr> 
                  <tr > <td><p hidden="true"><html:text name="GestionUniversidad" property="pais" maxlength="20" errorStyleClass="error" value ="<%=paisg[i]%>"
                           errorKey="org.apache.struts.action.ERROR"></html:text></p>
            </td></tr>
            <tr > <td><p hidden="true"><html:text name="GestionUniversidad" property="univ" maxlength="20" errorStyleClass="error" value ="<%=mejorg[i]%>"
                           errorKey="org.apache.struts.action.ERROR"></html:text></p>
            </td></tr> 
                  
                   
                      <tr>
                          <td>
                          <%=i+1%>.<%=mejorg[i]%>
                          </td>   
                      
                      <td>
                       
                          <html:submit>Detalles</html:submit>
                       
                      </td>
                      </tr>
                  </html:form>    
                 <%}%>
                   </table>
               </td>
               
           </tr>
            <th>CARRERA</th>
                       <tr>
               <td>
                   <table border="0">
                    <% for (int i=0; i<paisc.length; i++){%>
                  <html:form  action="/AvanzadaUniv" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
                  
                  <tr ><td><p hidden="true"><html:text name="GestionUniversidad" property="nombreusuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                           errorKey="org.apache.struts.action.ERROR"></html:text></p>
            </td></tr> 
                  <tr > <td><p hidden="true"><html:text name="GestionUniversidad" property="pais" maxlength="20" errorStyleClass="error" value ="<%=paisc[i]%>"
                           errorKey="org.apache.struts.action.ERROR"></html:text></p>
            </td></tr>
            <tr > <td><p hidden="true"><html:text name="GestionUniversidad" property="univ" maxlength="20" errorStyleClass="error" value ="<%=mejorc[i]%>"
                           errorKey="org.apache.struts.action.ERROR"></html:text></p>
            </td></tr> 
                  
                   
                      <tr>
                          <td>
                          <%=i+1%>.<%=mejorc[i]%>
                          </td>   
                      
                      <td>
                       
                          <html:submit>Detalles</html:submit>
                       
                      </td>
                      </tr>
                  </html:form>    
                 <%}%>
                   </table>
               </td>
               
           </tr>
 
       </table>    
       </div>
       <br>
       
         <html:link action="/AccionesGestionCoord">
            <p style="text-align: center">
            <html:submit>
                Volver
            </html:submit>
            </p>
         </html:link>
                   
</html:html>