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
    

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <br><br><br>
    <br><br><br>
    <div id="muestrauni">
       <table  border="1" width="520">
           
           <th colspan="2">GENERAL</th>
           <tr>
               <td width="300">
                   N&uacute;mero de encuestas llenadas del pa&iacute;s        
               </td>
               <td>
                  
               </td>
           </tr>
           <tr>
               <td>
                   Promedio de aceptaci&oacute;n del pa&iacute;s        
               </td>
               <td>
                  
               </td>
           </tr>
           <tr>
               <td colspan="2" align="center">
                Top 10 Universidades             
               </td>
           </tr>
           <tr>
               <td colspan="2">
               <table>
                   <tr>    
                     <td colspan="2" align="center">
                       Univ 1             
                     </td>
                   </tr>
                   <tr>    
                     <td colspan="2" align="center">
                       Univ 2             
                     </td>
                   </tr>
               </table> 
               </td>    
           </tr>
           <th colspan="2">CARRERA</th>
           <tr>
               <td>
                 N&uacute;mero de encuestas llenadas del pa&iacute;s
               </td>
               <td>
                   
               </td>
           </tr>
           <tr>
               <td>
                    Promedio de aceptaci&oacute;n del pa&iacute;s 
               </td>
               <td>
                   
               </td>
           </tr>
           <tr>
               <td colspan="2" align="center">
                Top 10 Universidades             
               </td>
           </tr>
           <tr>
               <td colspan="2">
               <table>
                   <tr>    
                     <td colspan="2" align="center">
                       Univ 1             
                     </td>
                   </tr>
                   <tr>    
                     <td colspan="2" align="center">
                       Univ 2             
                     </td>
                   </tr>
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