<%-- 
    Document   : cabecalho
    Created on : 30/03/2016, 14:45:41
    Author     : marcelosiedler
--%>
<%
//verificar se está logado (se tem a session)
if(session.getAttribute("usuario") == null)
{
    response.sendRedirect("../login.jsp");
    return; //interrompe a execuçao do arquivo .. 
}

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Heróis</title>
        <link rel="stylesheet" href="../estilo.css" />
    </head>
    <body>
        <h1 class="centro">SUPER HEROES!</h1>
        <div style="text-align: right">
            Bem vindo, <span>Usuário</span> - <a href="../sair.jsp">Sair</a>
        </div>
        <nav class="centro">
            <a href="../categoria">Categoria</a> - 
            <a href="../regiao">Região</a>
        </nav>