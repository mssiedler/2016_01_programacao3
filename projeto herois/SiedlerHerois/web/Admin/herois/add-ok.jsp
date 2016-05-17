<%@page import="modelo.Editora"%>
<%@page import="modelo.Categoria"%>
<%@page import="modelo.Regiao"%>
<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%
    
 //out.print(request.getParameter("selCategoria"));
   
    
 //verifico se foi enviado o campo txtNome
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
 obj.setCodinome(request.getParameter("txtCodinome"));
 obj.setDescricao(request.getParameter("txtDescricao"));
 obj.setForca(Integer.parseInt(request.getParameter("txtForca")));
 obj.setInteligencia(Integer.parseInt(request.getParameter("txtInteligencia"))); 
 obj.setHabilidadecombate(Integer.parseInt(request.getParameter("txtHabilidadeemCombate")));
 obj.setProjecaoenergia(Integer.parseInt(request.getParameter("txtProjecaodeEnergia")));
 obj.setVelocidade(Integer.parseInt(request.getParameter("txtVelocidade")));
 
//AGORA AS FK
Regiao regiao = new Regiao();
regiao.setCodigo(Integer.parseInt(request.getParameter("selRegiao")));
obj.setRegiao(regiao);

Categoria categoria = new Categoria();
categoria.setCodigo(Integer.parseInt(request.getParameter("selCategoria")));
obj.setCategoria(categoria);

Editora editora = new Editora();
editora.setCodigo(Integer.parseInt(request.getParameter("selEditora")));
obj.setEditora(editora);

 //executo o insert na DAO    
 dao.incluir(obj);
         
 %>

<%@include file="../cabecalho.jsp"%>

         <h1 >Cadastro de Heroi</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             
             <a href="index.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
