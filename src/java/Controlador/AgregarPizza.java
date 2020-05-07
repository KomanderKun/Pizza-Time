/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Mantenimientos.GestionPizza;
import Modelo.Pizza;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author gmndi
 */
public class AgregarPizza extends ActionSupport {
    public List<String> Ingredientes;
    
    
    public String Ingrediente1, Ingrediente2;
    public String Tam1, Tam2;
    public String Precio1, Precio2;
    public String Nombre;
    
    public Pizza Pizza;

    public Pizza getPizza() {
        return Pizza;
    }

    public void setPizza(Pizza Pizza) {
        this.Pizza = Pizza;
    }   


    public String getIngrediente1() {
        return Ingrediente1;
    }
    public void setIngrediente1(String Ingrediente1) {
        this.Ingrediente1 = Ingrediente1;
    }

    public String getIngrediente2() {
        return Ingrediente2;
    }
    public void setIngrediente2(String Ingrediente2) {
        this.Ingrediente2 = Ingrediente2;
    }

    public String getTam1() {
        return Tam1;
    }
    public void setTam1(String Tam1) {
        this.Tam1 = Tam1;
    }

    public String getTam2() {
        return Tam2;
    }
    public void setTam2(String Tam2) {
        this.Tam2 = Tam2;
    }

    public String getPrecio1() {
        return Precio1;
    }
    public void setPrecio1(String Precio1) {
        this.Precio1 = Precio1;
    }

    public String getPrecio2() {
        return Precio2;
    }
    public void setPrecio2(String Precio2) {
        this.Precio2 = Precio2;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    
    

        
    

    public List<String> getIngredientes() {
        return Ingredientes;
    }
    public void setIngredientes(List<String> Ingredientes) {
        this.Ingredientes = Ingredientes;
    }    
    
    public AgregarPizza(){
        Ingredientes = new ArrayList<>();
        Ingredientes.add("Peperoni");
        Ingredientes.add("Champiñones");
        Ingredientes.add("Salchicha");
        Ingredientes.add("Tocino");
        Ingredientes.add("Jamón");
        Ingredientes.add("Piña");
        Ingredientes.add("Chorizo");
        
        
        
    }
    
    public String agregar(){
        
        System.out.println("Ingredientes: "+Ingrediente1+Ingrediente2);
        System.out.println("Tamaños: "+Tam1+Tam2);
        System.out.println("Precios:"+Precio1+Precio2);
        
        Pizza = new Pizza(Nombre, Ingrediente1, Ingrediente2, Tam1, Tam2, Precio1, Precio2);
//        Pizza = new Pizza();
//        Pizza.setIngrediente1(Ingrediente1);
//        Pizza.setIngrediente2(Ingrediente2);
//        Pizza.setPrecio1(Precio1);
//        Pizza.setPrecio2(Precio2);
//        Pizza.setTam1(Tam1);
//        Pizza.setTam2(Tam2);
        
        System.out.println(Pizza.toString());
        
        try{
            GestionPizza gp = new GestionPizza();
            gp.RegistrarPizza(Pizza);
            
            return "success";
            
        } catch(Exception e){
            System.out.println(e);
            return "error";
        }
        
        
    }
    
    public String mostrar(){
        
        return "success";
    }
}
