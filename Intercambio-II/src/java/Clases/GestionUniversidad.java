/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author jaescalante02
 */
public class GestionUniversidad extends org.apache.struts.validator.ValidatorForm {
    
    String nombreusuario;
    String univ;
    String pais;
    float avgg1;
    float avgg2;
    float avgg3;
    float avgg4;
    float avggt;
    int encuestasg;
    float avgc1;
    float avgc2;
    float avgc3;
    float avgc4;
    float avgct;
    int encuestasc;

    public boolean mayorQueG(GestionUniversidad g){
        
        return this.avggt>g.getavggt();
    }

    public boolean mayorQueC(GestionUniversidad g){
        
        return this.avgct>g.getavgct();
    }
    
    public String getnombreusuario() {
        return nombreusuario;
    }

    public void setnombreusuario(String nombreusuario) {
        this.nombreusuario = nombreusuario;
    }
    
    
    public String getuniv() {
        return univ;
    }

    public void setuniv(String univ) {
        this.univ = univ;
    }

    public String getpais() {
        return pais;
    }

    public void setpais(String pais) {
        this.pais = pais;
    }

    public float getavgg1() {
        return avgg1;
    }

    public void setavgg1(float avgg1) {
        this.avgg1 = avgg1;
    }

    public float getavgg2() {
        return avgg2;
    }

    public void setavgg2(float avgg2) {
        this.avgg2 = avgg2;
    }

    public float getavgg3() {
        return avgg3;
    }

    public void setavgg3(float avgg3) {
        this.avgg3 = avgg3;
    }

    public float getavgg4() {
        return avgg4;
    }

    public void setavgg4(float avgg4) {
        this.avgg4 = avgg4;
    }

    public float getavggt() {
        return avggt;
    }

    public void setavggt(float avggt) {
        this.avggt = avggt;
    }

    public int getencuestasg() {
        return encuestasg;
    }

    public void setencuestasg(int encuestasg) {
        this.encuestasg = encuestasg;
    }

    public float getavgc1() {
        return avgc1;
    }

    public void setavgc1(float avgc1) {
        this.avgc1 = avgc1;
    }

    public float getavgc2() {
        return avgc2;
    }

    public void setavgc2(float avgc2) {
        this.avgc2 = avgc2;
    }

    public float getavgc3() {
        return avgc3;
    }

    public void setavgc3(float avgc3) {
        this.avgc3 = avgc3;
    }

    public float getavgc4() {
        return avgc4;
    }

    public void setavgc4(float avgc4) {
        this.avgc4 = avgc4;
    }

    public float getavgct() {
        return avgct;
    }

    public void setavgct(float avgct) {
        this.avgct = avgct;
    }

    public int getencuestasc() {
        return encuestasc;
    }

    public void setencuestasc(int encuestasc) {
        this.encuestasc = encuestasc;
    }

   
    }