<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>

<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    //Instanciar a DAO
    CategoriaDAO dao = new CategoriaDAO();
    //Chama o método que retorna 
    //todos registros do banco de dados
    List<Categoria> lista = dao.listar();
    //percorre a lista ge categorias
    //e exibe o nome
    
    

%>
        <h1 class="centro">Categoria</h1>
        <div>
                +<a href="add.jsp">Novo</a><br />
                <form>
                    <input type="text" placeholder="digite o texto da pesquisa" />
                    <input type="submit" value="Pesquisar"/><br />
                </form>
                    <table>
                        <tr>
                            <th>Código</th>
                            <th>Nome</th>
                            <th>Ações</th>
                        </tr>
                        <%  
                        for(Categoria item: lista)
                        {
                        %>
                        <tr>
                            <td><%=item.getCodigo()%></td>
                            <td><%=item.getNome()%></td>
                            
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
