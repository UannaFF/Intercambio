/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import Clases.GestionUniversidad;
import Clases.Gestionpais;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author jaescalante02
 */
public class GestionPais extends org.apache.struts.action.Action {


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

        
        Gestionpais gestp= (Gestionpais) form;
        gestp.setpais(new String (gestp.getpais().getBytes("ISO-8859-1"),"UTF-8"));
        String pais = gestp.getpais();
        String u = gestp.getnombreusuario();
        System.out.println(u);
        System.out.println();
        System.out.println();
        System.out.println(pais);
        gestp = DBMS.DBMS.getInstance().calcularavgpaisGestion(u, pais);
        gestp.setpais(pais);
        String[] arreglo = gestp.UnivdePais(pais);
        request.setAttribute("univs", arreglo);
        request.setAttribute("gestionpais", gestp);
        return mapping.findForward(SUCCESS);
    }
}
