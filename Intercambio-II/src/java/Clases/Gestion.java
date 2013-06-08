/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author jaescalante02
 */
public class Gestion extends org.apache.struts.validator.ValidatorForm {
    
    String usuario;
    String p1;
    String p2;
    String p3;
    String p4;
    String p5;
    
public String getusuario(){
    
    return this.usuario;
}    
    
public void setusuario(String u){
    
    this.usuario = u;
}    
  
public String getp1(){
    
    return this.p1;
}    
    
public void setp1(String p1){
    
    this.p1 = p1;
   
} 

public String getp2(){
    
    return this.p2;
}    
    
public void setp2(String p2){
    
    this.p2 = p2;
    
} 

public String getp3(){
    
    return this.p3;
}    
    
public void setp3(String p3){
    
    this.p3 = p3;
} 

public String getp4(){
    
    return this.p4;
}    
    
public void setp4(String p4){
    
    this.p4 = p4;
    
} 

public String getp5(){
    
    return this.p5;
}    
    
public void setp5(String p5){
    
    this.p5 = p5;
} 



}
