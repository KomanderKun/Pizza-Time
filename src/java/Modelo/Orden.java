/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author gmndi
 */
public class Orden {
    
    public String Nombre;
    public String Direccion;
    public String Ciudad;
    public String NombrePizza;
    public String TamanoPizza;
    public String Telefono;
    public double total;

    public Orden(String Nombre, String Direccion, String Ciudad, String NombrePizza, String TamanoPizza, String Telefono, double total) {
        super();
        this.Nombre = Nombre;
        this.Direccion = Direccion;
        this.Ciudad = Ciudad;
        this.NombrePizza = NombrePizza;
        this.TamanoPizza = TamanoPizza;
        this.Telefono = Telefono;
        this.total = total;
    }
    
    

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getCiudad() {
        return Ciudad;
    }

    public void setCiudad(String Ciudad) {
        this.Ciudad = Ciudad;
    }

    public String getNombrePizza() {
        return NombrePizza;
    }

    public void setNombrePizza(String NombrePizza) {
        this.NombrePizza = NombrePizza;
    }

    public String getTamanoPizza() {
        return TamanoPizza;
    }

    public void setTamanoPizza(String TamanoPizza) {
        this.TamanoPizza = TamanoPizza;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
    
    
    
}
