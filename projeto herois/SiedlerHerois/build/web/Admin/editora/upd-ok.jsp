<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%
    if(request.getParameter("txtNome") == null){
        response.sendRedirect("index.jsp");
        return;
    }
    if(request.getParameter("txtNome").isEmpty()){
        response.sendRedirect("index.jsp");
        return;
    }
    EditoraDAO dao = new EditoraDAO();
    Editora obj = new Editora();
    
    String dataStr = obj.getDatafundacao("tx");
    SimpleDateFormat sf1 = new SimpleDateFormat("dd/mm/yyyy");
    Date data = sf1.parse(dataStr);

    obj.setCodigo(Integer.parseInt(request.getParameter("txtCodigo")));
    obj.setNome(request.getParameter("txtNome"));
    //obj.setDatafundacao(Date.parse(request.getParameter("txtDat")));
    dao.alterar(obj);
%>
<%@include file="../cabecalho.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificado</title>
    </head>
    <body>
        <h1>Modificado com sucesso!</h1>
        <a href="index.jsp"> Voltar </a>
    </body>
</html>
