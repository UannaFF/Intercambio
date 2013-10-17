/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import Clases.ExtmpSol;
import DBMS.DBMS;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

/**
 *
 * @author jaescalante02
 */
public class ExtmpAgregada extends org.apache.struts.action.Action {


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
        
        ExtmpSol sol = (ExtmpSol) form;
        
        File folder;
        //obtenemos los archivos de un arraylist
        int cant = 0;
        int cantArchivos = 0;


        //buscamos el path real para guardar el archivo, 
        //este path lo guarda en el la capeta build/web/Documentos

        String filePath =
                getServlet().getServletContext().getRealPath("/") + "Documentos2/" + sol.getnombreusuario();
        String documentos = getServlet().getServletContext().getRealPath("/") + "Documentos2/";
        /*Guardamos el path de los archivos relacionados a un usuario en la base
         de datos*/
        
        
        

        folder = new File(documentos);
        if (!folder.exists()) {
            folder.mkdir();
        }


        /*Creamos la carpeta donde se guardaran los archivos, si ya existe seguimos,
         si no la creamos*/
        folder = new File(filePath);
        if (!folder.exists()) {
            folder.mkdir();
        }

        /*Para cada archivo*/
        

            //del archivo del form obtenemos el archivo como tal
            FormFile file = (FormFile) sol.getarchivo();

            //obtenemos el nombre
            String fileName = file.getFileName();
            //obtenemos el arreglo de bytes del archivo
            byte[] fileData = file.getFileData();
            Random r = new Random();
            String f1=null;
            
            if (!fileName.equals("")) {

                /* Se crea el archivo para poder guardalo en el servidor
                 */
                System.out.println("Server path:" + filePath);
                boolean existe=true;
                while(existe){
                f1 = "extmp"+ r.nextInt(1000) +".pdf";
                File newFile=new File(filePath,f1);


                // si existe el archivo lo sobreescribe
                if (!newFile.exists()) {
                    existe=false;
                    FileOutputStream fos = new FileOutputStream(newFile);
                    fos.write(file.getFileData());
                    fos.flush();
                    fos.close();
                }

                }

            }

            DBMS.getInstance().agregarExtmp(filePath+"/"+f1, sol);
              
        return mapping.findForward(SUCCESS);
    }
}
