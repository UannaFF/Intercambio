<%-- 
    Document   : accionesExtmp
    Created on : 15/10/2013, 06:04:21 PM
    Author     : jaescalante02
--%>

<%@page import="Clases.*"%>
<%Object tmp = session.getAttribute("nombreusuario");%>
<%Object var = session.getAttribute("nombre");%>
<%Object confirm = session.getAttribute("confirmar");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>


<title>Sistema de Gesti&oacute;n de Intercambio</title>
<html:html lang="true">
  
   <%Usuario u = new Usuario();%>
   <%u.setNombreusuario(tmp.toString());%>
   <%Gestion gest = DBMS.DBMS.getInstance().getGestion(u);%>
    
   <% String r1=null,r2=null,r3=null,r4=null,r5=null;%>
   <% String r6=null,r7=null,r8=null,r9=null,r10=null;%>
   <% String r11=null,r12=null,r13=null,r14=null,r15=null, r16=null;%>
   <% String pais=null, univ=null;%>

   <%if(gest!=null){%>
   <%r1 = gest.getp1();%>
   <%r2 = gest.getp2();%>
   <%r3 = gest.getp3();%>
   <%r4 = gest.getp4();%>
   <%r5 = gest.getp5();%>
   <%r6 = gest.getp6();%>
   <%r7 = gest.getp7();%>
   <%r8 = gest.getp8();%>
   <%r9 = gest.getp9();%>
   <%r10 = gest.getp10();%>
   <%r11 = gest.getp11();%>
   <%r12 = gest.getp12();%>
   <%r13 = gest.getp13();%>
   <%r14 = gest.getp14();%>
   <%r15 = gest.getp15();%>
   <%r16 = gest.getp16();%>
   <%pais = gest.getpais();%>
   <%univ = gest.getuniv();%>
   <%}%>

 
         <p hidden="true"><bean:write name="Usuario" property="nombre"></bean:write></p>
    <p hidden="true"><bean:write name="Usuario" property="email"></bean:write></p>
<p hidden="true"><bean:write name="Usuario" property="nombreusuario"></bean:write></p> 
    <table border="0" width="520" >
        <tr> <td> <h4 align ="center">Estudiante USB</h4> </td> </tr>
        <tr align="center"><td>
                <div id="opci1" class="divformulario" style="display: block" align="center">
                    <p align="center"><b>¡Extemporanea!</b></p>
                    </p>
                     
                </div>     
                    </td></tr>
                </table>    
        </td></tr>
        <tr> <td> <h3 align ="center">¿Qu&eacute; desea hacer?</h3> </td> </tr>
    
        
        <tr> <td>   

     <html:form  action="/AgregarExtmp" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
                        <p hidden="true"><html:text name="ExtmpSol" property="nombreusuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p> 
            <p style="text-align: center">
            <html:submit >
                Agregar Solicitud
            </html:submit>
        </p>
     </html:form> 
        
       </td> </tr>
        <tr><td>
    
        
    <html:form  action="/ConsultarExtmp" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
       
                        <p hidden="true"> <html:text name="ExtmpSol" property="nombreusuario" value ="<%=tmp.toString()%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        
                          <p style="text-align: center">
                            <html:submit >
                                Consultar Solicitudes
                            </html:submit>
                        </p>    

   </html:form>
   </body> 
    </td></tr>
    </table>
    
    
</html:html>