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
   <%if(gest!=null){%>
   <%r1 = gest.getp1();%>
   <%r2 = gest.getp2();%>
   <%r3 = gest.getp3();%>
   <%r4 = gest.getp4();%>
   <%r5 = gest.getp5();%>
   <%=gest.getp5()%>
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
      
            <p style="text-align: center">
                <html:submit>
                    Modificar Gestion de Conocimientos
                </html:submit>
        </p>
     </html:form> 
    
    <%}%>
    
    
    
</html:html>