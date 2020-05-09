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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        
        <s:form action="Validar">
            <s:textfield name="Usuario" label="Usuario"/>
            <s:textfield name="Contrasena" label="Contraseña"/>
            
            <s:submit value="Entrar"/>
        </s:form>
        
        <s:form action="MostrarRegistro">
            
            <s:submit value="Registrar"/>
        </s:form>
        
    </body>
</html>
