<%-- 
    Document   : Registro
    Created on : 9/05/2020, 01:30:49 PM
    Author     : gmndi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet"/>  
        <title>Registro</title>
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
        <div class="registro">
            <h1>Registro de usuario</h1>
        <s:form action="ValidarRegistro">
            
            <s:textfield name="UsuarioRegistro" label="Usuario"/>
            <s:textfield name="ContraRegistro" label="Contraseña"/>
            <s:textfield name="ContraRegistro2" label="Confirmar contraseña"/>
            
            <s:submit value="Registrar"/>
        </s:form>
        </div>
    </body>
</html>
