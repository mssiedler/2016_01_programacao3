<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%
    
 out.print(request.getParameter("selCategoria"));
   
    
 /*verifico se foi enviado o campo txtNome
 if(request.getParameter("txtNome") == null)
 {
     //volta para a tela da listagem
     response.sendRedirect("index.jsp");
     return;
 }
 //verifica se o campo está vazio
  if(request.getParameter("txtNome").isEmpty())
 {
     //volta para a tela da listagem
     response.sendRedirect("index.jsp");
 }
 
 //Gravar a categoria no banco
 HeroiDAO dao = new HeroiDAO(); 
 //Monto o objeto com os dados para sem inserir
 Heroi obj = new Heroi();
 
 obj.setNome(request.getParameter("txtNome"));
 
 //executo o insert na DAO    
 dao.incluir(obj);
         */
 %>

<%@include file="../cabecalho.jsp"%>

         <h1 >Cadastro de Heroi</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             
             <a href="index.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
