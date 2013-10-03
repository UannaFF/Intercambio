<%-- 
    Document   : modificarGestion
    Created on : 30/05/2013, 02:58:20 PM
    Author     : jaescalante02
--%>


<%Object tmp = session.getAttribute("nombreusuario");%>
<%Object var = session.getAttribute("nombre");%>
<%Object confirm = session.getAttribute("confirmar");%>
<%@page import="javax.swing.text.html.HTML"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>

<title>Sistema de Gesti&oacute;n de Intercambio</title>
<html:html lang="true">

    <h4 align ="center">Estudiante USB</h4>
    <h5 align ="center">¡Marca tus correcciones! Esperamos tu m&aacute;s
    sincera respuesta</h5>

    <script  src="/Intercambio-II/css/gestion.js"></script>
    
    <%String univ = (String) request.getAttribute("uni");%>
    
    <html:form  action="/gestionModificada" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
    
    <table border="0" width="520"> 
        
        <tr>
            
            <td>
                <b>Pa&iacute;s al que fue de Intercambio: </b>
            </td>
            <td align="center">
               <html:select styleId="pais_princG" name="Gestion" onchange="cambia_universidadG()" property="pais"> 
               <html:option value="0">Seleccione </html:option>
               <html:option value="Alemania">Alemania</html:option>
               <html:option value="Argentina">Argentina</html:option>
               <html:option value="Australia">Australia</html:option>
               <html:option value="Bélgica">B&eacute;lgica</html:option>
               <html:option value="Bolivia">Bolivia</html:option>
               <html:option value="Brasil">Brasil</html:option>
               <html:option value="Canadá">Canad&aacute;</html:option>
               <html:option value="Chile">Chile</html:option>
               <html:option value="Colombia">Colombia</html:option> 
               <html:option value="CostaRica">Costa Rica</html:option>
               <html:option value="Ecuador">Ecuador</html:option>
               <html:option value="España">Espa&ntilde;a</html:option>
               <html:option value="EstadosUnidos">Estados Unidos</html:option>
               <html:option value="Finlandia">Finlandia</html:option>
               <html:option value="Francia">Francia</html:option>
               <html:option value="Italia">Italia</html:option>
               <html:option value="Japón">Jap&oacute;n</html:option>
               <html:option value="México">M&eacute;xico</html:option>
               <html:option value="Noruega">Noruega</html:option>
               <html:option value="Panamá">Panam&aacute;</html:option>
               <html:option value="Paraguay">Paraguay</html:option>
               <html:option value="Perú">Per&uacute;</html:option>
               <html:option value="Polonia">Polonia</html:option>
               <html:option value="PuertoRico">Puerto Rico</html:option>
               <html:option value="ReinoUnido">Reino Unido</html:option>
               <html:option value="RepúblicaCheca">Rep&uacute;blica Checa</html:option>               
               <html:option value="RepúblicaDominicana">Rep&uacute;blica Dominicana</html:option>
               <html:option value="Suecia">Suecia</html:option>
               <html:option value="Uruguay">Uruaguay</html:option>
               <html:option value="Venezuela">Venezuela</html:option>               
             </html:select>
        </td></tr>
        <tr>
            <td>
                <b>Universidad a la que fue de Intercambio: </b>
            </td>
        <td align="center">
            <html:select styleId="uni_princG"  name="Gestion" property="univ"> 
                <html:option value="<%=univ%>"> <%=univ%> </html:option>
            </html:select>
       </td></tr>
        
        
    </table>
    <br>    
    <table border="1" width="520">
            <tbody>
                <tr > <p hidden="true"><html:text name="Gestion" property="usuario" maxlength="20" errorStyleClass="error" value ="<%=tmp.toString()%>"
                           errorKey="org.apache.struts.action.ERROR"></html:text></p></tr>

    <th align="center" colspan="7" bgcolor="#C0C0C0"> Secci&oacute;n 1</th>
    <tr>
        <th width="350" align="center">Preguntas</th>
        <th align="center">NA</th>
        <th align="center">1</th>
        <th align="center">2</th>
        <th align="center">3</th>
        <th align="center">4</th>
        <th align="center">5</th>
    </tr>
                <tr>
                    <td width="350"  align="center"> <p>Valoraci&oacute;n general
                        del proceso de Intercambio Estudiantil USB</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p1" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p1" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p1" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p1" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p1" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p1" value="5" /> </p></td>
                </tr>
                <tr>
                    <td align="center"> <p>Disponibilidad de informaci&oacute;n 
                            sobre el programa de Intercambio Estudiantil USB</p></td>
                    <td> <p style="text-align: center"> <html:radio property="p2" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p2" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p2" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p2" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p2" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p2" value="5" /> </p></td>
                </tr>
                <tr>
                    <td align="center"> <p>Pregunta por definir </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p3" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p3" value="1" /> </p></td> 
                    <td> <p style="text-align: center"> <html:radio property="p3" value="2" /> </p></td> 
                    <td> <p style="text-align: center"> <html:radio property="p3" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p3" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p3" value="5" /> </p></td>
                </tr>
                <tr>
                    <td align="center"> <p>Pregunta por definir </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p4" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p4" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p4" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p4" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p4" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p4" value="5" /> </p></td>
                </tr>
                <th align="center" colspan="7" bgcolor="#C0C0C0"> Secci&oacute;n 2</th>
                    <tr>
        <th width="350" align="center">Preguntas</th>
        <th align="center">NA</th>
        <th align="center">1</th>
        <th align="center">2</th>
        <th align="center">3</th>
        <th align="center">4</th>
        <th align="center">5</th>
    </tr>
                <tr>
                    <td align="center"> <p>Eval&uacute;e el papel de la coordinaci&oacute;n
                            docente durante el proceso de aplicaci&oacute;n y selecci&oacute;n </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p5" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p5" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p5" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p5" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p5" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p5" value="5" /> </p></td>
                </tr>
                <tr>
                    <td align="center"> <p>¿Recomendar&iacute;a el programa a sus compa&ntilde;eros? </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p6" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p6" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p6" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p6" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p6" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p6" value="5" /> </p></td>
                </tr>
                <tr>
                    <td align="center"> <p>Pregunta por definir </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p7" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p7" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p7" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p7" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p7" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p7" value="5" /> </p></td>
                </tr>
                <tr>
                    <td align="center"> <p>Pregunta por definir </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p8" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p8" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p8" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p8" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p8" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p8" value="5" /> </p></td>
                </tr>
                <th align="center" colspan="7" bgcolor="#C0C0C0"> Secci&oacute;n 3</th>
                    <tr>
        <th width="350" align="center">Preguntas</th>
        <th align="center">NA</th>
        <th align="center">1</th>
        <th align="center">2</th>
        <th align="center">3</th>
        <th align="center">4</th>
        <th align="center">5</th>
    </tr>
                <tr>
                    <td align="center"> <p>Eval&uacute;e cu&aacute;nto contribuy&oacute; 
                            el programa a su formaci&oacute;n profesional </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p9" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p9" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p9" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p9" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p9" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p9" value="5" /> </p></td>
                </tr>
                <tr>
                    <td align="center"> <p>Pregunta por definir </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p10" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p10" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p10" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p10" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p10" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p10" value="5" /> </p></td>
                </tr>
                <tr>
                    <td align="center"> <p>Pregunta por definir </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p11" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p11" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p11" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p11" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p11" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p11" value="5" /> </p></td>
                </tr>
                <tr>
                    <td align="center"> <p>Pregunta por definir </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p12" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p12" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p12" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p12" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p12" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p12" value="5" /> </p></td>
                </tr>
                <th align="center" colspan="7" bgcolor="#C0C0C0"> Secci&oacute;n 4</th>
                <tr>
        <th width="350" align="center">Preguntas</th>
        <th align="center">NA</th>
        <th align="center">1</th>
        <th align="center">2</th>
        <th align="center">3</th>
        <th align="center">4</th>
        <th align="center">5</th>
                </tr>
                <tr>
                    <td align="center"> <p>Valoraci&oacute;n general del Sistema de Gesti&oacute;n
                        de Intercambio Estudiantil </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p13" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p13" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p13" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p13" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p13" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p13" value="5" /> </p></td>
                </tr>
                <tr>
                    <td align="center"> <p>Pregunta por definir </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p14" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p14" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p14" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p14" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p14" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p14" value="5" /> </p></td>
                </tr>
                <tr>
                    <td align="center"> <p>Pregunta por definir </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p15" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p15" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p15" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p15" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p15" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p15" value="5" /> </p></td>
                </tr>
                <tr>
                    <td align="center"> <p>Pregunta por definir </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p16" value="0" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p16" value="1" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p16" value="2" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p16" value="3" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p16" value="4" /> </p></td>
                    <td> <p style="text-align: center"> <html:radio property="p16" value="5" /> </p></td>                
                </tr>
            </tbody>
        </table>
    
   
<%--   <P><LABEL ACCESSKEY=C><INPUT TYPE=radio NAME="payment_method" VALUE="1" CHECKED> Credit card</LABEL><BR>
    <LABEL ACCESSKEY=D><INPUT TYPE=radio NAME="payment_method" VALUE="2"> Debit card</LABEL><BR>
<LABEL ACCESSKEY=M><INPUT TYPE=radio NAME="payment_method" VALUE="3"> Money order</LABEL></P> --%>
    
   
            <p style="text-align: center">
                <html:submit onclick="return gestionnocompleta();">
                Guardar
            </html:submit>
            </p>
     </html:form> 
     <html:link action="/accionesGestion">
            <p style="text-align: center">
            <html:submit>
                Volver
            </html:submit>
            </p>
      </html:link>       
            
    </body>
</html:html> 
