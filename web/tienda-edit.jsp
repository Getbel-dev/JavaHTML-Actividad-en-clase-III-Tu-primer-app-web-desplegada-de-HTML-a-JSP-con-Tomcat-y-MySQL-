<%-- 
    Document   : tienda-edit
    Created on : Oct 12, 2026, 7:26:30 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <h1> Agregar un nuevo producto</h1>
        
        <form method="POST" action="ServletTienda">
            Name:<input type="text" name="txtname" /> <br>
            Price:<input type="number" name="txtprice" /><br>
            Stock: <input type="number" name="txtstock" /><br>
            <button type="submit">Save</button>
            
            
        </form>
    </body>
</html>
