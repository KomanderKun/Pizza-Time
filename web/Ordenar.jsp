<%-- 
    Document   : Ordenar
    Created on : 6/05/2020, 09:04:00 PM
    Author     : gmndi
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*"%>
<%@page import="Controlador.Ordenar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet"/>        
        <title>Ordenar</title>        
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
        <div class="B1">
        <h1>Formulario para ordenar</h1>
        <div class="form">
        <s:form action="ConfirmarOrden">
            
                    <s:textfield name="nombre" label="Nombre"/>
                
                    <s:textarea name="direccion" label="Direccion"/>
                
                    <s:textfield type="number" name="telefono" label="Telefono"/>
                
                    <s:select name="ciudad" list="Ciudades" label="Ciudad"/>
                
                    <s:select name="NombrePizza" id="NombrePizza" label="Pizza" list="MenuOrden"/>
                
                    <s:radio name="TamanoPizza" id="TamanoPizza" label="Tamaño" list="Tam"/>
                                                           
                    <s:submit type="button" value="Confirmar Orden"/>
                    <s:reset type="button" value="Limpiar"/>
               
        </s:form>
        </div>
                </div>
            <%
        String DRIVER = "com.mysql.cj.jdbc.Driver";
        String USER = "root";
        String PASSWORD = "root";
        String URL = "jdbc:mysql://localhost:3306/pizza?useTimezone=true&serverTimezone=UTC";
        
        Connection con = null;
        PreparedStatement ps;
        ResultSet rs = null;
        
        try{
            
            
             Class.forName(DRIVER);
             con = DriverManager.getConnection(URL, USER, PASSWORD);
             
             ps = con.prepareStatement("SELECT * FROM Pizza");
             rs = ps.executeQuery();
             
             
             
         } catch(ClassNotFoundException | SQLException e){
             System.out.println(e);
         }
        %>
        <div class="B2">
        <table>
            <tr>
                <th>No. de Pizza</th>
                <th>Nombre</th>
                <th>Ingredientes</th>
                <th>Tamaños</th>
                <th>Precios</th>
            </tr>
        <%       
         while(rs.next()){         
        %>
            <tr>
                <td><%=rs.getString("Id")%></td>
                <td><%=rs.getString("Nombre")%></td>
                <td><%=rs.getString("Ingrediente1")%><br>
                    <%=rs.getString("Ingrediente2")%></td>
                <td><%=rs.getString("Tam1")%><br>
                    <%=rs.getString("Tam2")%></td>
                <td>$<%=rs.getString("Precio1")%><br>
                    $<%=rs.getString("Precio2")%></td>
        <% } %>

        </table>  
        </div>
    </body>
</html>
