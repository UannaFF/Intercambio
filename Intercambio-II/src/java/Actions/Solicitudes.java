/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;
import Clases.*;
import DBMS.DBMS;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author jaescalante02
 */
public class Solicitudes extends org.apache.struts.action.Action {


    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String FAIL = "failure";
    
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
        Usuario u2 = new Usuario();
        System.out.println(u.getNombreusuario());
        
        String[] info = DBMS.getInstance().getInfoPostulante(u.getNombreusuario());
        System.out.println(info.length);
        u2.setNombreusuario(info[3]);
        ArrayList<ExtmpSol> sols;
        if (u.getNombre().compareTo("true") == 0)
        {
          sols = DBMS.getInstance().consultarExtmp(u2,true);
        } else {
          sols = DBMS.getInstance().consultarExtmp(u2,false);
        }
        request.setAttribute("sols", sols);
        return mapping.findForward(SUCCESS);
    }
}
