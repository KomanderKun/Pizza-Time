<%-- 
    Document   : Login
    Created on : 9/05/2020, 01:31:01 PM
    Author     : gmndi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet"/>  
        <title>Iniciar Sesion</title>
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
            </ul>
            
            </nav>
        </header>
        
    <div class="sesion">
        <h1>Iniciar Sesion</h1>
        
        <s:actionerror/>
        
        <s:form action="Validar">
            <s:textfield name="User" label="Usuario"/>
            <s:textfield name="Pass" label="Contraseña"/>
            
            <s:submit value="Entrar"/>
        </s:form>
        </div>
        <div class="btnr">
        <s:form action="MostrarRegistro">
            
            <s:submit value="Registrar"/>
        </s:form>
        </div>
    </body>
</html>
