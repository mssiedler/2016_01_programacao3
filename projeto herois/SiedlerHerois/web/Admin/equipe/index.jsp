<%@page import="modelo.Heroi"%>
<%@page import="modelo.Equipe"%>
<%@page import="java.util.List"%>
<%@page import="dao.EquipeDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    EquipeDAO dao = new EquipeDAO();
    List<Equipe> lista = dao.listar();
%>
        <h1 class="centro">Equipe</h1>
        <div>
                +<a href="add.jsp">Novo</a><br />
                <form>
                    <input type="text" placeholder="digite o texto da pesquisa" />
                    <input type="submit" value="Pesquisar"/><br />
                </form>
                    <table>
                        <tr>
                            <th>C�digo</th>
                            <th>Nome</th>
                             <th>Descri��o</th>
                             <th>Her�is</th>
                           
                            <th>A��es</th>
                        </tr>
                        <%
                        for(Equipe item:lista)
                        {
                        %>
                        <tr>
                            <td><%=item.getCodigo()%></td>
                            <td><%=item.getNome()%></td>
                            <td><%=item.getDescricao()%></td>
                            <td>
                                <%
                                String strHerois = "";
                                for(Heroi heroi:item.getHeroiList())
                                {
                                
                                    strHerois += heroi.getNome() + ",";
                                
                                
                                }
                                out.print(strHerois.substring(0, strHerois.length()-1));
                                %>
                            
                            </td>
                            
                            <td><a href="upd.jsp">Editar</a>
                                <a href="del-ok.jsp">Excluir</a>
                            </td>
                            
                        </tr>
                        <%
                        }
                        %>
                    </table>
                    
               
            </div>
    </body>
</html>
