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
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


/**
 *
 * @author gustavo
 */
public class AccionPlanDeEstudio extends Action {
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        // aqui recibimos el plan de estudio puesto en el form
        PlanDeEstudio plan = (PlanDeEstudio) form;
        String nom = plan.getNombreUsuario();
        
        //Obtenermos los arraylist de cada uno de los campos para el plan de
        //estudio de un estudiante
        
        ArrayList codiusb = plan.getListCodigoUSB();
        ArrayList crediusb = plan.getListCreditoUSB();
        ArrayList nomusb = plan.getListMateriaUSB();
        ArrayList codiuni = plan.getListCodigoUniv();
        ArrayList crediuni = plan.getListCreditoUniv();
        ArrayList nomuni = plan.getListMateriaUniv();
        int count = 0;
        for(int i = 0; i<codiusb.size(); i++){
            String a = codiusb.get(i).toString();
            if(a.equalsIgnoreCase("") ){
                count++;
            }
        }
        for(int i = 0; i<crediusb.size(); i++){
            String a = crediusb.get(i).toString();
            if(a.equalsIgnoreCase("") ){
                count++;
            }
        }
        for(int i = 0; i<nomusb.size(); i++){
            String a = nomusb.get(i).toString();
            if(a.equalsIgnoreCase("") ){
                count++;
            }
        }
        for(int i = 0; i<codiuni.size(); i++){
            String a = codiuni.get(i).toString();
            if(a.equalsIgnoreCase("") ){
                count++;
            }
        }
        for(int i = 0; i<crediuni.size(); i++){
            String a = crediuni.get(i).toString();
            if(a.equalsIgnoreCase("") ){
                count++;
            }
        }
        for(int i = 0; i<nomuni.size(); i++){
            String a = nomuni.get(i).toString();
            if(a.equalsIgnoreCase("") ){
                count++;
            }
        }
        if(count > 0){
            return mapping.findForward("fail");
        
        }
        
        
        /*Llamamos a la funcion para que guarde en la base de datos el plan
         de estudio de un estudiante*/
        if(!DBMS.getInstance().InsertarPlan(plan)){
            
            return mapping.findForward("fail");
        }
        
        return mapping.findForward("success");
    }
    
}
