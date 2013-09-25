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

   <div id="Bienven">
        <h1>Bienvenido </h1>
  
   <%Usuario u = new Usuario();%>
   <%u.setNombreusuario(tmp.toString());%>
   <%Gestion gest = DBMS.DBMS.getInstance().getGestion(u);%>
    
   <% String r1=null,r2=null,r3=null,r4=null,r5=null;%>
   <% String r6=null,r7=null,r8=null,r9=null,r10=null;%>
   <% String r11=null,r12=null,r13=null,r14=null,r15=null, r16=null;%>

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
   <%}%>

 
         <p hidden="true"><bean:write name="Usuario" property="nombre"></bean:write></p>
    <p hidden="true"><bean:write name="Usuario" property="email"></bean:write></p>
<p hidden="true"><bean:write name="Usuario" property="nombreusuario"></bean:write></p> 

    <br>
    <br>
    <h4 align ="center">Estudiante USB</h4>
    <h5 align ="center">¿Qu&eacute; desea hacer?</h5>

    <%if(gest==null){%>

     <html:form  action="/AgregarGestion" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
                        <p hidden="true"><html:text name="Gestion" property="nombreusuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p> 
                        <p hidden="true"> <html:text name="Gestion" property="p1" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p2" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p3" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p4" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p5" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p6" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p7" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p8" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p9" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p10" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p11" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p12" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p13" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p14" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p15" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
                        <p hidden="true"> <html:text name="Gestion" property="p16" value ="<%=null%>" maxlength="20" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
            <p style="text-align: center">
            <html:submit >
                Agregar Gestion de Conocimientos
            </html:submit>
        </p>
     </html:form> 
        
    <%}else{%>    
       
        <html:form  action="/AgregarGestion" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
             <p hidden="true"><html:text name="Gestion" property="nombreusuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
             errorKey="org.apache.struts.action.ERROR"></html:text></p> 
             <p style="text-align: center">
                 <html:submit disabled="true">
                Agregar Gestion de Conocimientos
            </html:submit>
        </p>
     </html:form>  
    
    
    <%}%>
    
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
                                Consultar Gestion de Conocimientos
                            </html:submit>
                        </p>    

   </html:form>
   </body> 
    
   <%if(gest==null){%>
   
        <html:form  action="/ModificarGestion" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
        <p hidden="true"><html:text name="Usuario" property="nombreUsuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                   errorKey="org.apache.struts.action.ERROR"></html:text></p>
            <p style="text-align: center">
                <html:submit disabled="true">
                    Modificar Gestion de Conocimientos
                </html:submit>
        </p>
        </html:form> 

    <%}else{%>    
        
    <html:form  action="/ModificarGestion" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
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
                <html:submit>
                    Modificar Gestion de Conocimientos
                </html:submit>
        </p>
     </html:form> 
    
    <%}%>
    
    
    
</html:html>