<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%
    if (request.getParameter("txtNome") == null) {
        response.sendRedirect("index.jsp");
        return;
    }
    if (request.getParameter("txtNome").isEmpty()) {
        response.sendRedirect("index.jsp");
        return;
    }
    EditoraDAO dao = new EditoraDAO();
    Editora obj = new Editora();

    obj.setNome(request.getParameter("txtNome"));
    //obj.(request.getParameter("txtDat"));
    dao.incluir(obj);
%>
<%@include file="../cabecalho.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionado</title>
    </head>
    <body>
        <h1>Adicionado com sucesso!</h1>
        <a href="index.jsp"> Voltar </a>
    </body>
</html>
