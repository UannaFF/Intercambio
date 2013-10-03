<%-- 
    Document   : gestionPais
    Created on : 30/09/2013, 07:47:33 PM
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
    
    <% Gestionpais g = (Gestionpais) request.getAttribute("gestionpais");%>
    <% String[] arr = (String []) request.getAttribute("univs");%>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <br><br><br>
    <br><br><br>
    <div id="muestrauni">
        <h5 align ="center">Estos son los resultados de la naci&oacute;n elegida </h5>
        
       <table  border="1" width="520">
           
           <tr>
               
               <td width="300">
                   
                   <b> Pa&iacute;s </b>
                   
               </td>
               <td>
                   <%=g.getpais()%>
               </td>
               
           </tr>
           <th colspan="2">GENERAL</th>
           <tr>
               <td>
                   <b> N&uacute;mero de encuestas llenadas del pa&iacute;s </b>        
               </td>
               <td>
                  <%=g.getencuestasg()%>
               </td>
           </tr>
<tr>
               <td>
                   <b>  Promedio Secci&oacute;n 1 del pa&iacute;s </b>        
               </td>
               <td>
                   <%=g.getavgg1()%>
               </td>
           </tr>
           <tr>
               <td>
                   <b> Promedio Secci&oacute;n 2 del pa&iacute;s    </b>    
               </td>
               <td>
                   <%=g.getavgg2()%>
               </td>
           </tr>
           <tr>
               <td>
                   <b> Promedio Secci&oacute;n 3 del pa&iacute;s    </b>    
               </td>
               <td>
                   <%=g.getavgg3()%>
               </td>
           </tr>
           <tr>
               <td>
                   <b>  Promedio Secci&oacute;n 4 del pa&iacute;s </b>        
               </td>
               <td>
                   <%=g.getavgg4()%>
               </td>
           </tr>
           <tr>
               <td>
                   <b>  Promedio Total del pa&iacute;s </b> 
               </td>
               <td>
                   <%=g.getavggt()%>
               </td>
           </tr>
           <th colspan="2">CARRERA</th>
           <tr>
               <td>
                   <b> N&uacute;mero de encuestas llenadas del pa&iacute;s </b>
               </td>
               <td>
                   <%=g.getencuestasc()%>
               </td>
           </tr>
           <tr>
               <td>
                   <b> Promedio Secci&oacute;n 1 del pa&iacute;s </b>        
               </td>
               <td>
                   <%=g.getavgc1()%>
               </td>
           </tr>
           <tr>
               <td>
                   <b>   Promedio Secci&oacute;n 2 del pa&iacute;s   </b>     
               </td>
               <td>
                   <%=g.getavgc2()%>
               </td>
           </tr>
           <tr>
               <td>
                   <b>   Promedio Secci&oacute;n 3 del pa&iacute;s </b>        
               </td>
               <td>
                   <%=g.getavgc3()%>
               </td>
           </tr>
           <tr>
               <td>
                   <b>  Promedio Secci&oacute;n 4 del pa&iacute;s </b>        
               </td>
               <td>
                   <%=g.getavgc4()%>
               </td>
           </tr>
           <tr>
               <td>
                   <b>  Promedio Total del pa&iacute;s </b> 
               </td>
               <td>
                   <%=g.getavgct()%>
               </td>
           </tr>    
           <th colspan="2">
                Posibles universidades           
           </th>
           <tr><td colspan="2">
               <table> 
                  <% for (int i=0; i<arr.length; i++){%>
                  <html:form  action="/PaisUniv" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
                  
                  <tr ><td><p hidden="true"><html:text name="GestionUniversidad" property="nombreusuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                           errorKey="org.apache.struts.action.ERROR"></html:text></p>
            </td></tr> 
                  <tr > <td><p hidden="true"><html:text name="GestionUniversidad" property="pais" maxlength="20" errorStyleClass="error" value ="<%=g.getpais()%>"
                           errorKey="org.apache.struts.action.ERROR"></html:text></p>
            </td></tr>
            <tr > <td><p hidden="true"><html:text name="GestionUniversidad" property="univ" maxlength="20" errorStyleClass="error" value ="<%=arr[i]%>"
                           errorKey="org.apache.struts.action.ERROR"></html:text></p>
            </td></tr> 
                  
                   
                      <tr>
                          <td>
                          <%=arr[i]%>
                          </td>   
                      
                      <td>
                       
                          <html:submit>Detalles</html:submit>
                       
                      </td>
                      </tr>
                  </html:form>    
                 <%}%>  
                   
               </table>
               </td> </tr>
           
       </table>    
       </div>
       <br>
       
       <html:form  action="/GestionporPais" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
       
            <p hidden="true"><html:text name="Gestionpais" property="pais" maxlength="20" errorStyleClass="error" value ="0"
                    errorKey="org.apache.struts.action.ERROR"></html:text></p> 
              
                          <p style="text-align: center">
                            <html:submit >
                                Volver
                            </html:submit>
                        </p>    

       </html:form>
                   
</html:html>
