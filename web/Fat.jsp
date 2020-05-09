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
         <h1>Detalles de Pizza</h1>
        <img src='img/4Q.png'>
        <h2>Para los amantes del tocino:<br>
            Fat Cat tiene Peperoni y tocino en sus ingredientes, con orilla de queso.</h2>
        
           <s:form action="Ordenar">
                <s:submit value="Ordenar"/>
           </s:form>
    </body>
</html>
