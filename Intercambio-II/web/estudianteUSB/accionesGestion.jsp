<%-- 
    Document   : accionesGestion
    Created on : 29/05/2013, 10:32:26 PM
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
                    <p align="center"><b>¡Bienvenido de nuevo a casa!</b></p>
                     Esperamos que tu experiencia en otra casa de estudio
                     <br> haya sido enriquecedora. <br>
                     Ahora te pedimos que completes una simple encuesta
                     sobre <br>tu proceso en el intercambio. <br>
                     Con ella podremos mejorar y podr&aacute;s ayudar
                     a los <br>nuevos postulantes. <br>
                     Las siguientes opciones te permitir&aacute;n llenar tu
                     <br>encuesta, consultarla y modificarla. <br>
                     <p align="center">¡Te lo agradecemos de antemano!</p>
                     
                </div>     
                    </td></tr>
                </table>    
        </td></tr>
        <tr> <td> <h3 align ="center">¿Qu&eacute; desea hacer?</h3> </td> </tr>
    
        
        <tr> <td>   
    <%if(gest==null){%>

     <html:form  action="/AgregarGestion" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
                        <p hidden="true"><html:text name="Gestion" property="nombreusuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p> 
                        <p hidden="true"><html:text name="Gestion" property="pais" maxlength="20" errorStyleClass="error" value ="0"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"><html:text name="Gestion" property="univ" maxlength="20" errorStyleClass="error" value ="-"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p1" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p2" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p3" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p4" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p5" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p6" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p7" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p8" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p9" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p10" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p11" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p12" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p13" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p14" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p15" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p16" value ="" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
            <p style="text-align: center">
            <html:submit >
                Responder Encuesta
            </html:submit>
        </p>
     </html:form> 
        
    <%}else{%>    
       
        <html:form  action="/AgregarGestion" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
             <p hidden="true"><html:text name="Gestion" property="nombreusuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
             errorKey="org.apache.struts.action.ERROR"></html:text></p> 
             <p style="text-align: center">
                 <html:submit disabled="true">
                Responder Encuesta
            </html:submit>
        </p>
     </html:form>  
    
    
    <%}%>
       </td> </tr>
        <tr><td>
    <body onload="ClearForms()" onunload="ClearForms()">
        
    <html:form  action="/ConsultarGestion" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
       
                        <p hidden="true"> <html:text name="Gestion" property="nombreusuario" value ="<%=tmp.toString()%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p1" value ="<%=r1%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p2" value ="<%=r2%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p3" value ="<%=r3%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p4" value ="<%=r4%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p5" value ="<%=r5%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p6" value ="<%=r6%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p7" value ="<%=r7%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p8" value ="<%=r8%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p9" value ="<%=r9%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p10" value ="<%=r10%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p11" value ="<%=r11%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p12" value ="<%=r12%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p13" value ="<%=r13%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p14" value ="<%=r14%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p15" value ="<%=r15%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p16" value ="<%=r16%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
      
                          <p style="text-align: center">
                            <html:submit >
                                Consultar Encuesta
                            </html:submit>
                        </p>    

   </html:form>
   </body> 
    </td></tr>
    <tr><td>
   <%if(gest==null){%>
   
        <html:form  action="/ModificarGestion" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
        <p hidden="true"><html:text name="Usuario" property="nombreUsuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
            <p style="text-align: center">
                <html:submit disabled="true">
                    Modificar Encuesta
                </html:submit>
        </p>
        </html:form> 

    <%}else{%>    
    
    <html:form  action="/ModificarGestion" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
                        <p hidden="true"> <html:text name="Gestion" property="nombreusuario" value ="<%=tmp.toString()%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="pais" value ="<%=pais%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="univ" value ="<%=univ%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p1" value ="<%=r1%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p2" value ="<%=r2%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p3" value ="<%=r3%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p4" value ="<%=r4%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p5" value ="<%=r5%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p6" value ="<%=r6%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p7" value ="<%=r7%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p8" value ="<%=r8%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p9" value ="<%=r9%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p10" value ="<%=r10%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p11" value ="<%=r11%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p12" value ="<%=r12%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p13" value ="<%=r13%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p14" value ="<%=r14%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p15" value ="<%=r15%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p16" value ="<%=r16%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
      
            <p style="text-align: center">
                <html:submit>
                    Modificar Encuesta
                </html:submit>
        </p>
     </html:form> 
    
    <%}%>
    </td></tr>
    </table>
    
    
</html:html>