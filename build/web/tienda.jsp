<%-- 
    Document   : tienda
    Created on : Oct 12, 2026, 7:16:38 PM
    Author     : Administrador
--%>

<%@page import="java.util.List"%>
<%@page import="my.webapp.tienda.ClaseTienda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
       
        <%
            List<ClaseTienda> productList = (List<ClaseTienda>) request.getAttribute("productList");
        %>
       
        <a href="tienda-edit.jsp"> Add new </a>
        
         
        
        <h1> Tienda de Ropa: </h1>

        <ul>

            <% for (ClaseTienda product : productList) {%>
            
                 

             <li>
                    <P> Nombre de prenda: <%= product.getName()%> </p>
                    <P> Precio de prenda: <%= product.getPrecio()%> </p>
                    <p> Stock: <%= product.getStock()%> </p>
                        <a href="ServletTienda?action=delete&id=<%= product.getId()%>"> Delete </a>
                         <hr> 

                </li> 

            <%}%>  

        </ul> 
        
        
        
        
    </body>
</html>
