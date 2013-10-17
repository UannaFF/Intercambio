/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import Clases.Usuario;
import DBMS.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author leddkire
 * NOTA IMPORTANTE: El codigo hecho aqui esta replicado en una parte del codigo encontrado 
 * en el archivo Actions.Login.java. Algun cambio que se haga en esta parte del codigo debe
 * ser hecho tambien en el otro archivo, para que este se refleje cuando uno entra al sistema como
 * coordinador.
 * 
 * Esta accion es para cuando se quiera regresar a la pagina principal del coordinador
 * una vez que ya se haya iniciado la sesion.
 */
public class revisarNuevasSol extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String FAIL ="failure";

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
        System.out.println(u.getNombreusuario());
        String[] info = DBMS.getInstance().getInfoPostulante(u.getNombreusuario());
         System.out.println(info.length);
        if(info == null){
            System.out.println("FAIL");
        }
        if(DBMS.getInstance().haySolPendientes(info[3])){
            return mapping.findForward(SUCCESS);
        }
        
        return mapping.findForward(FAIL);
        
    }
}
