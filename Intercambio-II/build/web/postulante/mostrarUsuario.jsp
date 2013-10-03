<%-- 
    Document   : mostrarUsuario
    Created on : 25-oct-2012, 20:22:37
    Author     : gustavo
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<html>

        <title>Mostrar-Usuario</title>
        <script language="JavaScript">
            function submitForm() { document.ObtenerDatos.submit(); }
        </script>

        <h4>Informaci&oacute;n de Usuario</h4>
        <br/><br/><center><strong><span style='font-size: 20px'>Solicitud de <bean:write name = "PlanillaUSB" property="nombre1"/> <bean:write name = "PlanillaUSB" property="nombre2"/> <bean:write name = "PlanillaUSB" property="apellido1"/> <bean:write name = "PlanillaUSB" property="apellido2"/>
            </strong></center>
        <br/><br/><center><strong>DATOS PERSONALES</strong></center><br/>
        <table border=1 cellspacing=0 cellpadding=2 style="width:68%;">
            <tr>
                <td>Género</td>
                <td><bean:write name = "PlanillaUSB" property="sexo"/></td>
            </tr>
             <tr>
                <td>E-Mail</td>
                <td><bean:write name = "PlanillaUSB" property="email"/></td>
            </tr>
            <tr>
                <td>Fecha Nacimiento</td>
                <td><bean:write name = "PlanillaUSB" property="fechaNacimiento"/></td>
            </tr>
            <tr>
                <td>Nacionalidad</td>
                <td><bean:write name = "PlanillaUSB" property="nacionalidad"/></td>
            </tr>
            <tr>
                <td>Cédula de Identidad</td>
                <td><bean:write name = "PlanillaUSB" property="cedula"/></td>
            </tr>
            <tr>
                <td>Carné Estudiantil USB</td>
                <td><bean:write name = "PlanillaUSB" property="carnet"/></td>
            </tr>
            <tr>
                <td>Tlf. Celular</td>
                <td><bean:write name = "PlanillaUSB" property="telefonoCelular"/></td>
            </tr>
            <tr>
                <td>Tlf. Habitación</td>
                <td><bean:write name = "PlanillaUSB" property="telefonoCasa"/></td>
            </tr>
            <tr>
                <td>Domicilio Actual</td>
                <td>Urb <bean:write name = "PlanillaUSB" property="urbanizacion"/>
            </tr>
            
        </table>
            <br/><br/><center><strong>DOMICILIO ACTUAL</strong></center><br/>
            <table border=1 cellspacing=0 cellpadding=2 style="width:68%;">
            <tr>
                <td>Urb/Sector/Barrio</td>
                <td><bean:write name = "PlanillaUSB" property="urbanizacion"/></td>
            </tr>
             <tr>
                <td>Calle</td>
                <td><bean:write name = "PlanillaUSB" property="calle"/></td>
            </tr>
            <tr>
                <td>Nombre (Edificio|Casa)</td>
                <td><bean:write name = "PlanillaUSB" property="edificio"/></td>
            </tr>
            <tr>
                <td>Apartamento/Nro.Casa</td>
                <td><bean:write name = "PlanillaUSB" property="apartamento"/></td>
            </tr>
            <tr>
                <td>Ciudad</td>
                <td><bean:write name = "PlanillaUSB" property="ciudad"/></td>
            </tr>
            <tr>
                <td>Estado</td>
                <td><bean:write name = "PlanillaUSB" property="estado"/></td>
            </tr>
            <tr>
                <td>Cod. Postal</td>
                <td><bean:write name = "PlanillaUSB" property="codPostal"/></td>
            </tr>
            <tr>
            
        </table>
            <br/><br/><center><strong>IDENTIFICACIÓN DEL PROGRAMA Y LAPSO DE ESTUDIO EN INTERCAMBIO</strong><br/>Primera Opción</center>
            <table border=1 cellspacing=0 cellpadding=2 style="width:68%;">
            <tr>
                <td>País de Destino</td>
                <td><bean:write name = "PlanillaUSB" property="paisOpcion1"/></td>
            </tr>
             <tr>
                <td>Tipo de Programa</td>
                <td><bean:write name = "PlanillaUSB" property="programaOpcion1"/></td>
            </tr>
            <tr>
                <td>Duración del Programa</td>
                <td><bean:write name = "PlanillaUSB" property="duracionProgramaOpcion1"/></td>
            </tr>
            <tr>
                <td>Nombre de la Universidad de Destino</td>
                <td><bean:write name = "PlanillaUSB" property="nombreOpcion1"/></td>
            </tr>
            <tr>
                <td>Nombre del Programa</td>
                <td><bean:write name = "PlanillaUSB" property="nombreProgramaOpcion1"/></td>
            </tr>
            <tr>
                <td>Fecha tentativa de inicio</td>
                <td><bean:write name = "PlanillaUSB" property="mesFechaIni1"/> <bean:write name = "PlanillaUSB" property="anoFechaIni1"/></td>
            </tr>
            <tr>
                <td>Fecha tentativa de fin</td>
                <td><bean:write name = "PlanillaUSB" property="mesFechaFin1"/> <bean:write name = "PlanillaUSB" property="anoFechaFin1"/></td>
            </tr>
            
        </table>
            <br/><br/><center>Segunda Opción</center><br/>
            <table border=1 cellspacing=0 cellpadding=2 style="width:68%;">
            <tr>
                <td>País de Destino</td>
                <td><bean:write name = "PlanillaUSB" property="paisOpcion2"/></td>
            </tr>
             <tr>
                <td>Tipo de Programa</td>
                <td><bean:write name = "PlanillaUSB" property="programaOpcion2"/></td>
            </tr>
            <tr>
                <td>Duración del Programa</td>
                <td><bean:write name = "PlanillaUSB" property="duracionProgramaOpcion2"/></td>
            </tr>
            <tr>
                <td>Nombre de la Universidad de Destino</td>
                <td><bean:write name = "PlanillaUSB" property="nombreOpcion2"/></td>
            </tr>
            <tr>
                <td>Nombre del Programa</td>
                <td><bean:write name = "PlanillaUSB" property="nombreProgramaOpcion2"/></td>
            </tr>
            <tr>
                <td>Fecha tentativa de inicio</td>
                <td><bean:write name = "PlanillaUSB" property="mesFechaIni2"/> <bean:write name = "PlanillaUSB" property="anoFechaIni2"/></td>
            </tr>
            <tr>
                <td>Fecha tentativa de fin</td>
                <td><bean:write name = "PlanillaUSB" property="mesFechaFin2"/> <bean:write name = "PlanillaUSB" property="anoFechaFin2"/></td>
            </tr>
            
        </table>
             <br/><br/><center><strong>INFORMACIÓN ACADÉMICA</strong></center><br/>
            <table border=1 cellspacing=0 cellpadding=2 style="width:68%;">
            <tr>
                <td>Decanato</td>
                <td><bean:write name = "PlanillaUSB" property="decanato"/></td>
            </tr>
             <tr>
                <td>Nro de Créditos Aprobados</td>
                <td><bean:write name = "PlanillaUSB" property="creditosApro"/></td>
            </tr>
            <tr>
                <td>Carrera</td>
                <td><bean:write name = "PlanillaUSB" property="carrera"/></td>
            </tr>
            <tr>
                <td>Índice Académico</td>
                <td><bean:write name = "PlanillaUSB" property="indice"/></td>
            </tr>
            <tr>
                <td>Área de Estudio</td>
                <td><bean:write name = "PlanillaUSB" property="areaEstud"/></td>
            </tr>
            <tr>
                <td>Fecha tentativa de inicio</td>
                <td><bean:write name = "PlanillaUSB" property="mesFechaIni2"/> <bean:write name = "PlanillaUSB" property="anoFechaIni2"/></td>
            </tr>
            <tr>
                <td>Fecha tentativa de fin</td>
                <td><bean:write name = "PlanillaUSB" property="mesFechaFin2"/> <bean:write name = "PlanillaUSB" property="anoFechaFin2"/></td>
            </tr>
            
        </table>
            <br/><br/><center><strong>PLAN DE ESTUDIO TENTATIVO</strong></center><br/>
            <table border=1 cellspacing=0 cellpadding=2 style="width:68%;">

                                <tr>
                                    <td> Nombre-USB
                            
                                    </td>

                                    <td> Código-USB</td>

                                    <td> Créditos-USB</td>

                                    <td> Codigo-Univ. Destino</td>

                                    <td> Nombre-Univ. Destino</td>                                

                                    <td> Créditos-Univ. Destino</td>

                                </tr>
                                <tr>
                                   
                                   <logic:iterate id="element" name="materias" >
                                       <bean:write filter='false' name="element" />
                                </logic:iterate>
                                </tr>

                    </table>
            <br/><br/><center><strong>CONOCIMIENTO DE IDIOMAS</strong></center><br/>
            <table border=1 cellspacing=0 cellpadding=2 style="width:68%;">

                                <tr>
                                    <td> Idioma
                            
                                    </td>

                                    <td> Nivel verbal</td>

                                    <td> Nivel escrito</td>

                                    <td> Nivel conversacional</td>

                                    <td> Nivel auditivo</td>                                

                                </tr>
                                <tr>
                                   
                                   <logic:iterate id="element" name="idiomas" >
                                       <bean:write filter='false' name="element" />
                                </logic:iterate>
                                </tr>

                    </table>
            <br/><br/><center><strong>FUENTE DE FINANCIAMIENTO DEL ESTUDIANTE</strong></center><br/>
            <table border=1 cellspacing=0 cellpadding=2 style="width:68%;">
            <tr>
                <td>Principal Fuente de Ingresos</td>
                <td><bean:write name = "PlanillaUSB" property="fuenteFinanciamiento"/></td>
            </tr>
             <tr>
                <td>Otro</td>
                <td><bean:write name = "PlanillaUSB" property="descripcion2"/></td>
            </tr>
            <tr>
                <td>Recibe ayuda económica</td>
                <td><bean:write name = "PlanillaUSB" property="ayudaEc"/></td>
            </tr>
            <tr>
                <td>Información sobre ayuda económica</td>
                <td><bean:write name = "PlanillaUSB" property="descripcion1"/></td>
            </tr>
            
        </table>
             <br/><br/><center><strong>DATOS DE CONTACTO EN CASO DE EMERGENCIA</strong></center><br/>
            <table border=1 cellspacing=0 cellpadding=2 style="width:68%;">
            <tr>
                <td>Nombre Contacto</td>
                <td><bean:write name = "PlanillaUSB" property="nombresRep"/> <bean:write name = "PlanillaUSB" property="apellidosRep"/></td>
            </tr>
             <tr>
                <td>Tlf. Habitación Contacto</td>
                <td><bean:write name = "PlanillaUSB" property="tlfRepCasa"/></td>
            </tr>
            <tr>
                <td>Tlf. Celular Contacto</td>
                <td><bean:write name = "PlanillaUSB" property="celRep"/></td>
            </tr>
            <tr>
                <td>Relación con el estudiante</td>
                <td><bean:write name = "PlanillaUSB" property="relacion"/></td>
            </tr>
            <tr>
                <td>Email Contacto</td>
                <td><bean:write name = "PlanillaUSB" property="emailRep"/></td>
            </tr>
            <tr>
                <td>Domicilio Contacto</td>
                <td><bean:write name = "PlanillaUSB" property="direccionRep"/></td>
            </tr>
            
        </table>
           <center><br><br><strong>FOTO DEL APLICANTE</strong><br>
            <img src="<logic:iterate id="element" name="dir" >
                                       <bean:write filter='false' name="element" />
                                </logic:iterate>" /></center>
            

</html>
