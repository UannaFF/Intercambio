<%-- 
    Document   : listarSolicitudes
    Created on : Oct 18, 2012, 12:58:41 AM
    Author     : caponte
--%>
<%Object var = session.getAttribute("nombre");
    Object var2 = session.getAttribute("nombreusuario");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<script  src="/Intercambio-II/css/jquery.js"></script>
<script  src="/Intercambio-II/css/jquery.tablePagination.0.5.js"></script>
<script type="text/javascript">
    function altRows(id){
        if(document.getElementsByTagName){  
		
            var table = document.getElementById(id);  
            var rows = table.getElementsByTagName("tr"); 
		 
            for(i = 0; i < rows.length; i++){          
                if(i % 2 == 0){
                    rows[i].className = "evenrowcolor";
                }else{
                    rows[i].className = "oddrowcolor";
                }      
            }
        }
    }
    $(document).ready(function() {
        $('table').tablePagination({});
    } );
    window.onload=function(){
        altRows('alternatecolor');
    }
</script>

    <script language="JavaScript">
        function submitForm() { document.ObtenerDatos.submit(); }
    </script>
<center>
    <h4>Solicitudes:</h4>
    <div id="testTable" style="width: 68%">
        <table  style="margin: auto" class="altrowstable" id="alternatecolor">
            <thead>
                <tr>
                    <th width="220px" align="center">
                        Nombre
                    </th>
                    <th width="90px" align="center">
                        Fecha
                    </th>
                    <th width="90px" align="center">
                        Estado
                    </th>
                    <th width="100px" align="center">
                        Ver solicitud
                    </th>
                </tr>
            </thead>
            <logic:iterate name="sols" id="solic">

                <tr>
                    <td width="190px" align="center">
                        <bean:write name="solic" property="nombreusuario" />
                    </td>
                    <td align="center" width="120px">
                        <bean:write name="solic" property="fecha" />
                    
                    </td>
                    <td align="center" width="90px">
                        <bean:write name="solic" property="estado" />
                    </td>
                    <td align="center" width="90px">
                         <html:form action="/mostrarSolicitud" onsubmit="return(this)">
                            <html:hidden name = "solic" property="nombreusuario"/>
                            <html:hidden name="Usuario" property="nombreusuario" value="<%=var2.toString()%>"/>
                            <html:image src="images/verDatos.png" value="" property="" style=""/> 
                        </html:form> 
                    </td>
                </tr>

            </logic:iterate>           
        </table>
    </div>
</center>