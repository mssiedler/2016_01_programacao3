<%-- 
    Document   : index
    Created on : 22/03/2016, 08:43:59
    Author     : marcelosiedler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        //Tudo que eu programar aqui é Java e será 
        //interpretado pelo servidor
            
        String produto;
        Double preco;
        
        produto = "Projetor EPSON";
        preco = 340.0;
        
        out.print(produto);
        %>
        
        <h1>Hello World!</h1>
    </body>
</html>
