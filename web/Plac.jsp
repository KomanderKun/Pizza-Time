<%-- 
    Document   : Plac
    Created on : 9/05/2020, 02:47:33 PM
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
         <h1>Detalles de Pizza</h1>
         
         <img src='img/mex.png'>
         
         <h2>¡La mas mexicana!<br>
             con Peperoni y Tocino, la masa es picosita.
         </h2>
        
           <s:form action="Ordenar">
                <s:submit value="Ordenar"/>
           </s:form>
    </body>
</html>