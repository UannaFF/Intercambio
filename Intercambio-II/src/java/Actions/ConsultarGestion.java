/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


package Actions;


import Clases.Gestion;
import Clases.Usuario;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


/**
 *
 * @author jaescalante02
 */
public class ConsultarGestion extends org.apache.struts.action.Action {


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
        
        Gestion g = (Gestion) form;
        Usuario u = new Usuario();
        System.out.print("saludo");
    //    System.out.print(g.getusuario().toString());
        u.setNombreusuario(g.getnombreusuario());
        if(!DBMS.DBMS.getInstance().existeGestion(u)) return mapping.findForward(FAIL);
        Gestion g2 = DBMS.DBMS.getInstance().getGestion(u);
   //     System.out.print(g2.toString());
        request.setAttribute("gestion", g2);
        return mapping.findForward(SUCCESS);
    }
}