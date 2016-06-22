<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Heroi"%>
<%@page import="dao.EquipeDAO"%>
<%@page import="modelo.Equipe"%>
<%@include file="../cabecalho.jsp"%>

<%
Equipe e = new Equipe();
EquipeDAO eDAO = new EquipeDAO();
e.setNome(request.getParameter("txtNome"));
//Buscar a lista de heróis marcados
//array com os elementos enviados cujo NAME é heroi -- request.getParameterValues("heroi"); 
String[] heroisForm = request.getParameterValues("heroi"); 

List<Heroi> lista = new ArrayList<>();
for(String heroif:heroisForm)
{
    Heroi h = new Heroi();
    h.setCodigo(Integer.parseInt(heroif));
    lista.add(h);
}

e.setHeroiList(lista);
eDAO.incluir(e);
%>

         <h1 >Cadastro de Categoria</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             
             <a href="index.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
