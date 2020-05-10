<%-- 
    Document   : Fat
    Created on : 9/05/2020, 02:46:46 PM
    Author     : andi9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href="estilosMenu.css"
<!DOCTYPE html>

    </head>
    <body>
        
        <header>
        <div class='head'>
            <h1>Pizzeria Lara</h1>
                
        </div>
            <nav>
            <ul>
                
                   <li>
                    </div>
                    <form action="Login.jsp">
                        <button class='btnpepe'type="submit">Login</button>
                     </form> 
                    </li>
                    <li>
                    </div>
                    <form action="index.jsp">
                        <button class='btnpepe'type="submit">Home</button>
                     </form> 
                    </li>
            </ul>
          
            
            </nav>
        </header>
        
       <showcase>
        
        
        
   
            <div class='container'>
                <h2>Detalles de Pizza</h2>
                <img src='img/4Q.png'>
                <h3>Para los amantes del tocino:<br>
                Fat Cat tiene Peperoni y tocino en sus ingredientes, con orilla de queso.</h3>
        
                <s:form action="Ordenar">
                <s:submit value="Ordenar"/>
                </s:form>
            
            </div>
        
        </showcase>
        
    </body>
</html>
