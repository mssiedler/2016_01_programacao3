<%-- 
    Document   : segundo-basico
    Created on : 22/03/2016, 09:04:35
    Author     : marcelosiedler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String nome;
Double preco;
Boolean disponivel;

nome = "EPSON 2";
preco = 123.0;

disponivel = true;



%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Detalhes do Produto</h1>
        
        <div>
            Nome:<span><% out.print(nome); %></span><br/>
            Preco:<span><% out.print(preco); %></span><br/>
            Disponível:<span><% out.print(disponivel); %></span><br/>
            
        </div>
    </body>
</html>
