<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>

<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    //Instanciar a DAO
    CategoriaDAO dao = new CategoriaDAO();
    //Verificar se veio algo no filtro
    //se vier passamos o filtro pra DAO
    //se n�o tiver filtro traz todos registros
    List<Categoria> lista;
    if(request.getParameter("txtFiltro") !=null)
    {
        lista = dao.listar(request.getParameter("txtFiltro"));
    }
    else
    {
        //Chama o m�todo que retorna 
        //todos registros do banco de dados
        lista = dao.listar();
    }
    
    
    
    
    

%>
        <h1 class="centro">Categoria</h1>
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
                            <th>C�digo</th>
                            <th>Nome</th>
                            <th>A��es</th>
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
