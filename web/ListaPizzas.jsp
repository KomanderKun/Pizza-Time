<%-- 
    Document   : ListaPizzas
    Created on : 6/05/2020, 06:24:55 PM
    Author     : gmndi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet"/>
        <title>Lista</title>
    </head>
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
    <body>
       
         <header>
            <div class='head'>
            <h1>Pizzeria Lara</h1>
                
            </div>
            <nav>
            <ul>
                
                   <li>
                    
                    <form action="Login.jsp">
                        <button class='btnpepe'type="submit">Login</button>
                     </form> 
                    </li>
                    
                    <li>
                    
                    <form action="index.jsp">
                        <button class='btnpepe'type="submit">Home</button>
                     </form> 
                    </li>
            
            </ul>
            
            </nav>
        </header>
        <h1>Lista de Pizzas</h1>
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
        
        
        
        <s:form action="MostrarAggPizza">
            
            <s:submit value="Agregar otra pizza"/>
        </s:form>
            <s:form action="Ordenar">
                
                <s:submit value="Ordenar"/>
            </s:form>
    </body>
</html>
