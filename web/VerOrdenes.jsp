<%-- 
    Document   : VerOrdenes
    Created on : 8/05/2020, 03:06:13 PM
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
        <title>Lista de ordenes</title>       
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
             
             ps = con.prepareStatement("SELECT * FROM orden");
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
        <div class="B3">
        <h1>Ordenes</h1>
        <table>
            <tr>
                <th>No. de Orden</th>
                <th>Nombre</th>
                <th>Ingredientes</th>
                <th>Tamaños</th>
                <th>Precios</th>
                <th>Opciones</th>
            </tr>
        <%       
         while(rs.next()){         
        %>
            <tr>
                <td><%=rs.getString("Id_orden")%></td>
                <td><%=rs.getString("Nombre")%></td>
                <td><%=rs.getString("Direccion")%></td>
                <td><%=rs.getString("Ciudad")%></td>
                <td><%=rs.getString("Telefono")%></td>
                <td><%=rs.getString("NombrePizza")%></td>
                <td><%=rs.getString("TamanoPizza")%></td>
                <td>$<%=rs.getString("Total")%></td>
                <td><a href="ModificarOrden.jsp?Id_Orden=<%=rs.getString("Id_orden") %>">Editar</a>
                    <a href="EliminarOrden.jsp?Id_Orden=<%=rs.getString("Id_orden") %>">Eliminar</a>
                </td>                    
            </tr>
              
        <% } %>       

        </table>
        </div>
        <div class="btn">
        <s:form action="RegresarInicio">
            
            <s:submit value="Regresar a Inicio"/>
            
        </s:form>
        </div>
    </body>
</html>
