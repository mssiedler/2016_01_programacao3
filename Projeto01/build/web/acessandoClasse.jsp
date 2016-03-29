<%-- 
    Document   : acessandoClasse
    Created on : 23/03/2016, 08:17:37
    Author     : marcelosiedler
--%>
<%@page import="modelo.Produto"%>
<%
    Produto produto = new Produto();
    produto.setNome("Projetor EPSON");
    produto.setPreco(123.0);
    produto.setDisponivel(false);
    produto.setTaxaInstalacao(10.0);
    produto.setUnidades(5);
    String simnao;
    
  
    
    if (produto.isDisponivel()) {
            simnao = "SIM";
    }
    else{
        simnao = "Não";
    }
        
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produto</title>
    </head>
    <body>
        <h1>Detalhes do Produto - Visualização</h1>
        Nome: <span><%=produto.getNome()%></span><br/>
        Preço Unitário: <span><%=produto.getPreco()%></span><br/>
        Unidades disponíveis: <span><%=produto.getUnidades()%></span><br/>
        Taxa de Instalação: <span><%=produto.getTaxaInstalacao()%></span><br/>
        Disponível?: <span><%=simnao%></span><br/>
        Custo total: <span><%=produto.retornarCustoTotal()%></span><br/>
    </body>
</html>
