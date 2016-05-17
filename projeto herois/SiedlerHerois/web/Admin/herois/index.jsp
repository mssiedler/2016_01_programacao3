<%@page import="java.util.Date"%>
<%@page import="modelo.Heroi"%>
<%@page import="java.util.List"%>

<%@page import="dao.HeroiDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    
    
    
    
    //Instanciar a DAO
    HeroiDAO dao = new HeroiDAO();
    //Verificar se veio algo no filtro
    //se vier passamos o filtro pra DAO
    //se não tiver filtro traz todos registros
    List<Heroi> lista;
    if(request.getParameter("txtFiltro") !=null)
    {
        lista = dao.listar();
    }
    else
    {
        //Chama o método que retorna 
        //todos registros do banco de dados
        lista = dao.listar();
    }
    
    
    
    
    

%>
        <h1 class="centro">Heroi</h1>
        <div>
                +<a href="add.jsp">Novo</a><br />
                <form method="post">
                    <!--  Monta o filtro  -->
                    <input type="text" name="txtFiltro" 
                           placeholder="digite o texto da pesquisa" />
                    <input type="submit" value="Pesquisar"/><br />
                </form>
                    <table>
                        <tr>
                            <th>Código</th>
                            <th>Nome</th>
                            <th>Codinome</th>
                            <th>Editora</th>
                            <th>Categoria</th>
                             <th>Regiao</th>
                            <th>Ações</th>
                        </tr>
                        <%  
                        for(Heroi item: lista)
                        {
                        %>
                        <tr>
                            <td><%=item.getCodigo()%></td>
                            <td><%=item.getNome()%></td>
                            <td><%=item.getCodinome()%></td>
                            <td><%=item.getEditora()%></td>
                            <td><%=item.getCategoria()%></td>
                            <td><%=item.getRegiao()%></td>
                            <td><a href="upd.jsp?codigo=<%=item.getCodigo()%>">Editar</a>
                                <a href="del-ok.jsp?codigo=<%=item.getCodigo()%>">Excluir</a>
                            </td>
                            
                        </tr>
                        <%
                        }
                        %>
                    </table>
                    
               
            </div>
    </body>
</html>
