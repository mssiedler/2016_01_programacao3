<%-- 
    Document   : receberFormulario
    Created on : 23/03/2016, 09:05:36
    Author     : marcelosiedler
--%>
<%@page import="modelo.Produto"%>
<%
  Produto produto =  new Produto();  
  
  produto.setNome(request.getParameter("txtNome"));
  produto.setPreco(Double.parseDouble(request.getParameter("txtPreco")));
  produto.setUnidades(Integer.parseInt(request.getParameter("txtUnidades")));
  produto.setTaxaInstalacao(Double.parseDouble(request.getParameter("txtTaxaInstalacao")));
  if(request.getParameter("selDisponivel").equals("Sim"))
  {
      produto.setDisponivel(true);
  }
  else
  {
      produto.setDisponivel(false);
  }
  
  
  /*
  Double a;
  Float c;
  Integer d;        
  String b = "123.0";      
  a = Double.parseDouble(b);
  c  = Float.parseFloat(b);
  d = Integer.parseInt(b);
  
  //CONVERTER PARA STRING
  b = c.toString();
  */        
%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Dados do Formulário</h1>
        <label>Nome do Produto:</label><%=produto.getNome()%><br />
        <label>Preço:</label><%=produto.getPreco()%><br />
        <label>Unidades:</label><%=produto.getUnidades()%><br />
        <label>Taxa Inst.:</label><%=produto.getTaxaInstalacao()%><br />
        <label>Disponível:</label><%=produto.isDisponivel()%><br />
        
    </body>
</html>
