<%-- 
    Document   : index
    Created on : 6/05/2020, 05:08:20 PM
    Author     : gmndi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pizzeria Lara</title>
        <link rel='stylesheet' href="estilos.css"
        
    </head>
    <body>
       
        
        
        <header>
            <div class='head'>
                <h1>Pizzeria Lara</h1>
                
            </div>
            
            <nav>
                <ul>
                   <div class='header'>
                    <li> <s:form  action="MostrarAggPizza">
                            <s:submit  value="Agregar Pizza"/>
                        </s:form>
                    </li>
                   </div>
                    
                    <div class='header'>
                    <li>  
                        <s:form action="MostrarListaPizzas">
            
                           <s:submit value="Ver la lista de pizzas"/>
                        </s:form>
                    </li>
                    </div>
                    
                    <div class='active'>
                    <li>
                        <s:form action="MostrarListaOrdenes">
            
                        <s:submit value="Ver Lista de Ordenes"/>
                        </s:form>
                    </li> 
                    
                    <li>
                    </div>
                    <form action="Login.jsp">
                        <button class='btnpepe'type="submit">Login</button>
                     </form> 
                    </li>
                     
                     
                </ul>
            </nav>
            
        </header>
        
        
    <showcase>
        <div class='container'>
             <h2> Menú</h2>
        
             <div class='category'>
                 
                 <div class='PizzaPepe'>
                     <img src='img/PEPE.png'>
                     
                     <h4>Clasica</h4>
                     <form method="get" action="Clasica.jsp">
                        <button class='btnpepe'type="submit">Conoce mas</button>
                     </form>  
                     
                 </div>
                 <div class='PizzaFat'>
                     <img src='img/4Q.png'>
                     
                     <h4>Fat Cat</h4>
                     <form method="get" action="Fat.jsp">
                        <button class='btnpepe' type="submit">Conoce mas</button>
                     </form>  
                     
                     
                 </div>
                 
                  <div class='PizzaChurro'>
                     <img src='img/VGP.png'>
                     
                     <h4>Churro</h4>
                     <form method="get" action="Churro.jsp">
                        <button class='btnpepe' type="submit">Conoce mas</button>
                     </form>  
                     
                     
                 </div>
                 
                  <div class='PizzaPerr'>
                     <img src='img/hawaii.png'>
                     
                     <h4>Perrona</h4>
                     <form method="get" action="Perrona.jsp">
                        <button class='btnpepe' type="submit">Conoce mas</button>
                     </form>   
                 </div>
                 
                   <div class='PizzaPlac'>
                     <img src='img/mex.png'>
                     
                     <h4>Placosa</h4>
                       <form method="get" action="Plac.jsp">
                        <button class='btnpepe' type="submit">Conoce mas</button>
                     </form>  
                     
                     
                 </div>
                 
                 
                 
             </div>
             
             
        </div>
    </showcase>
        
        
        
        
       
    </body>
</html>
