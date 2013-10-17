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
  

    <table border="0" width="520" >
        <tr> <td> <h4 align ="center">Estudiante USB</h4> </td> </tr>
        <tr align="center"><td>
                <div id="opci1" class="divformulario" style="display: block" align="center">
                    <p align="center"><b>Solicitud de Modificaci&oacute;n Extempor&aacute;nea</b>
                        <br>Está sección esta dedicada a las peticiones desde la universidad
                    de destino, para los casos imprevistos.<br><br>
                    
                    Recuerda tener preparado tu plan de trabajo para pasant&iacute;a o
                    proyecto de grado o en el caso de tener problemas con una materia,
                    el programa de tu nueva opci&oacute;n
                    </p>
     
                     
                </div>     
                    </td></tr>
                </table>    
        </td></tr>
        <tr> <td> <h3 align ="center">¿Qu&eacute; desea hacer?</h3> </td> </tr>
    
        
        <tr> <td>   
     <p style="text-align:center">
        <font size="1">
            Ingresa una solicitud para tu coordinador.
        </font>
            
    </p>
     <html:form  action="/AgregarExtmp" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
                        <p hidden="true"><html:text name="ExtmpSol" property="nombreusuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p> 
                        <p hidden="true"><html:text name="ExtmpSol" property="solicitud" maxlength="20" errorStyleClass="error" value =""
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p> 
                                                <p hidden="true"><html:text name="ExtmpSol" property="tipo" maxlength="20" errorStyleClass="error" value ="0"
                                   errorKey="org.apache.struts.action.ERROR"></html:text></p> 
            <p style="text-align: center">
            <html:submit >
                Agregar Solicitud
            </html:submit>
        </p>
     </html:form> 
        
       </td> </tr>
        <tr><td>
    
    <p style="text-align:center">
        <font size="1">
            Consulta el estado de tus solicitudes.
        </font>
            
    </p>   
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