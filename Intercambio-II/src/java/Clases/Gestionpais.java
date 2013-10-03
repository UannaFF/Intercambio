/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

    
/**
 *
 * @author jaescalante02
 */
public class Gestionpais extends org.apache.struts.validator.ValidatorForm  {
    
    String nombreusuario;
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
    

    public String getnombreusuario() {
        return nombreusuario;
    }

    public void setnombreusuario(String nombreusuario) {
        this.nombreusuario = nombreusuario;
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

    
    public String[] UnivdePais(String pais){
    
        String[] Alemania={"Universidad de Karlsruhe", "Universidad de Stuttgart" ,"Universidad de Siegen"};
        String[]  Argentina={"Universidad Nacional de Cuyo", "Universidad Nacional de Quilmes", "Universidad Nacional de San Martín"};       
        String[]  Australia={"Universidad Tecnológica de Swinburne"};
        String[]  Belgica={"Universidad Católica de Lovaina"};
        String[]  Bolivia={"Universidad Católica Boliviana San Pablo", "Universidad Privada Santa Cruz de la Sierra"};
        String[]  Brasil={"PSML - BRA - Universidad de Sao Paulo", "PSML - BRA - Universidad Federal de Río de Janeiro", "Universidad de Sao Paulo ", "Universidad Estadual de Campinas"};
        String[]  Canada={"Instituto de Tecnología de Ontario"};
        String[]  Chile={"PSML - CHI - Pontifica Universidad Católica de Chile", "Pontificia Universidad Católica de Chile", "Pontificia Universidad Católica de Valparaíso", "Universidad Austral de Chile", "Universidad de Concepción", "Universidad de Talca", "Universidad de Tarapacá"};
        String[]  CostaRica={"Universidad de Costa Rica "};       
        String[]  Colombia={"Pontificia Universidad Bolivariana", "PSML - COL - Pontificia Universidad Javeriana" ,"Universidad Externado", "Pontificia Universidad Javeriana ", "Universidad de los Andes", "Universidad del Norte", "Universidad del Valle"};
        String[]  Ecuador={"Escuela Superior Politécnica del Litoral"};
        String[]  Espana={"Universidad de Granada", "Universidad de Zaragoza", "Universidad Politécnica de Valencia", "PSML - ESP - Universidad Politécnica de Cataluña", "PSML - ESP - Universidad Politécnica de Madrid", "Universidad Carlos III de Madrid", "Universidad de Barcelona", "Universidad de las Islas Baleares", "Universidad de Santiago de Compostela", "Universitat Oberta de Catalunya", "Universitat Politécnica de Catalunya" };
        String[]  EstadosUnidos={"Universidad de Nuevo México", "Universidad de Oklahoma"};
        String[]  Finlandia={"Universidad Abo Akademi"};
        String[]  Francia={"Arts et Métiers ParisTech", "EPF Escuela de Ingenieros", "Escuela de Minas de Nantes", "INSA – Lyon", "TELECOM – SudParis", "Universidad Paris Est Marne la Vallé", "Universidad Paris Ouest Nanterre", "Universidad Tecnológica de Compiègne"};
        String[]  Italia={"Politécnico de Milano", "Politécnico de Torino", "Universidad Degli Studi Di Genova"};
        String[]  Japon={"Universidad de Tohoku", "Universidad Tecnológica de Nagaoka"};
        String[]  Mexico={"Instituto Tecnológico Superior de Cajeme (ITESCA)", "ITESM Monterrey", "Universidad Veracruzana",  "ITESM Monterrey ", "Universidad Autónoma Metropolitana"};
        String[]  Noruega={"NTNU- Trondheim"};
        String[]  Peru={"Universidad San Martín de Porres","Pontificia Universidad Católica del Perú ", "Universidad de Lima", "Universidad del Pacífico ", "Universidad Peruana Cayetano Heredia"};
        String[]  Polonia={ "PSML - POL - AGH Universidad de Ciencias y Tecnología"};
        String[]  Portugal={"PSML - POR - Universidad Técnica de Lisboa"};        
        String[]  Panama={"Universidad de Panamá "};
        String[]  Paraguay={"Universidad Católica de Nuestra Señora de la Asunción"};
        String[]  PuertoRico={"Universidad de Puerto Rico"};
        String[]  ReinoUnido={"Universidad de Ulster"};
        String[]  RepublicaCheca={"PSML - RPC - Universidad Técnica Checa en Praga"};
        String[]  RepubicaDominicana={"Instituto Tecnológico de Santo Domingo", "Pontificia Universidad Católica Madre Maestra"};
        String[]  Suecia={"Real Instituto de Estocolmo KTH", "Universidad de Lund", "Universidad de Uppsala"};     
        String[]  Uruguay={"Universidad Católica del Uruguay"};
        String[]  Venezuela={"Universidad Centroccidental Lisandro Alvarado", "Universidad Metropolitana"};
        
        if(pais.equals("Alemania")){
            return Alemania;
        }
        if(pais.equals("Argentina")){
            return Argentina;
        }
        if(pais.equals("Australia")){
            return Australia;
        }
        if(pais.equals("Bélgica")){
            return Belgica;
        }
        if(pais.equals("Bolivia")){
            return Bolivia;
        }
        if(pais.equals("Brasil")){
            return Brasil;
        }
        if(pais.equals("Canadá")){
            return Canada;
        }
        if(pais.equals("Chile")){
            return Chile;
        }
        if(pais.equals("CostaRica")){
            return CostaRica;
        }
        if(pais.equals("Colombia")){
            return Colombia;
        }
        if(pais.equals("Ecuador")){
            return Ecuador;
        }
        if(pais.equals("España")){
            return Espana;
        }
        if(pais.equals("EstadosUnidos")){
            return EstadosUnidos;
        }
        if(pais.equals("Finlandia")){
            return Finlandia;
        }
        if(pais.equals("Francia")){
            return Francia;
        }
        if(pais.equals("Italia")){
            return Italia;
        }
        if(pais.equals("Japón")){
            return Japon;
        }
        if(pais.equals("México")){
            return Mexico;
        }
        if(pais.equals("Noruega")){
            return Noruega;
        }
        if(pais.equals("Perú")){
            return Peru;
        }
        if(pais.equals("Polonia")){
            return Polonia;
        }
        if(pais.equals("Portugal")){
            return Portugal;
        }
        if(pais.equals("Paraguay")){
            return Paraguay;
        }
        if(pais.equals("PuertoRico")){
            return PuertoRico;
        }
        if(pais.equals("Panamá")){
            return Panama;
        }
        if(pais.equals("ReinoUnido")){
            return ReinoUnido;
        }
        if(pais.equals("RepúblicaDominicana")){
            return RepubicaDominicana;
        }
        if(pais.equals("RepúblicaCheca")){
            return RepublicaCheca;
        }
        if(pais.equals("Suecia")){
            return Suecia;
        }
        if(pais.equals("Venezuela")){
            return Venezuela;
        }
        if(pais.equals("Uruguay")){
            return Uruguay;
        }

        
        
        
        
        
        
     return null;        
        
    }
    }

