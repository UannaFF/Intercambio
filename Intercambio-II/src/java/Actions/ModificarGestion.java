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
public class ModificarGestion extends org.apache.struts.action.Action {


    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String NUEVO = "nuevo";
    
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
                g.setpais(new String (g.getpais().getBytes("ISO-8859-1"),"UTF-8"));
                g.setuniv(new String (g.getuniv().getBytes("ISO-8859-1"),"UTF-8"));
                request.setAttribute("uni", g.getuniv());
                form = g;
                Usuario u = new Usuario();
                u.setNombreusuario(g.getnombreusuario());
        if(!DBMS.DBMS.getInstance().existeGestion(u)) return mapping.findForward(NUEVO);
        
        System.out.print("estoy en modificar gestion");
        return mapping.findForward(SUCCESS);
        
    }
}