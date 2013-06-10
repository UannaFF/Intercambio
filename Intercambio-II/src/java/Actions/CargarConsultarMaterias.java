/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import Clases.Usuario;
import Clases.PlanillaUSB;
import Clases.PlanDeEstudio;
import DBMS.DBMS;
import com.sun.xml.ws.security.trust.elements.RequestSecurityToken;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author caponte
 */
public class CargarConsultarMaterias extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String MODIFICAR = "modificar";

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

       Usuario u = (Usuario) form;
        ArrayList materias = new ArrayList();
        u.setConfirmar("2013-2014");
        
        Clases.PlanillaUSB hay = DBMS.getInstance().obtenerPlanillaUSB(u);

        if (true) {
            PlanDeEstudio plan = DBMS.getInstance().obtenerPlanDeEstudio(u);
            u.setNombre("");
    
            request.setAttribute("Usuario", u);
            request.setAttribute("PlanDeEstudio", plan);
            for(int i=0; i< plan.listMateriaUSB.size(); i++)
            {
                materias.add("<td>"+plan.getMateriaUSB(i)+"</td>");
                materias.add("<td>"+plan.getCodigoUSB(i)+"</td>");
                materias.add("<td>"+plan.getCreditosUSB(i)+"</td>");
                materias.add("<td>"+plan.getCodigoUniv(i)+"</td>");
                materias.add("<td>"+plan.getMateriaUniv(i)+"</td>");
                materias.add("<td>"+plan.getCreditosUniv(i)+"</td>");
                materias.add("</tr><tr>");
                
            }
            request.setAttribute("materias", materias);
           return mapping.findForward(MODIFICAR);
       }
        u.setNombre("");
        request.setAttribute("Usuario", u);
        return mapping.findForward(SUCCESS);
    }
}