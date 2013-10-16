/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author jaescalante02
 */
public class ExtmpSol extends org.apache.struts.validator.ValidatorForm {
    
    String nombreusuario;
    String tipo;
    String solicitud;
    String estado;
    String respuesta;
    String archivo;
    String fecha;

    public String getfecha() {
        return fecha;
    }

    public void setfecha(String fecha) {
        this.fecha = fecha;
    }

    public String getarchivo() {
        return archivo;
    }

    public void setarchivo(String archivo) {
        this.archivo = archivo;
    }

    public String getnombreusuario() {
        return nombreusuario;
    }

    public void setnombreusuario(String nombreusuario) {
        this.nombreusuario = nombreusuario;
    }

    public String gettipo() {
        return tipo;
    }

    public void settipo(String tipo) {
        this.tipo = tipo;
    }

    public String getsolicitud() {
        return solicitud;
    }

    public void setsolicitud(String solicitud) {
        this.solicitud = solicitud;
    }

    public String getestado() {
        return estado;
    }

    public void setestado(String estado) {
        this.estado = estado;
    }

    public String getrespuesta() {
        return respuesta;
    }

    public void setrespuesta(String respuesta) {
        this.respuesta = respuesta;
    }

    
    
}
