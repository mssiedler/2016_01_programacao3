<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="modelo.Editora"%>
<%@page import="java.util.List"%>
<%@include file="../cabecalho.jsp"%>

<%
    //Instanciar a DAO
    EditoraDAO dao = new EditoraDAO();
    // Verificar se veio o filtro
    // se vier passamos o filtro pra dao 
    // se não traz todos os registros
    List<Editora> lista; 
    if(request.getParameter("txtFiltro") != null){
        lista = dao.listar();
    }
    else{
        // Chama o método que retorna
        //todos registros do banco de dados
        lista = dao.listar();
    } 
    
    SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

            <table>
                <a href ="add.jsp"> Adicionar </a> <br />
                <input type="text" placeholder="digite o texto da pesquisa" />
                <input type="submit" value="Pesquisar" /> <br />
                <tr>
                    <th>Código:</th>
                    <td>Nome:</td>
                    <th>Data de Fundação:</th>
                </tr>
                <tr>
                    <%
                        for(Editora item : lista){
                    %>
                    <td><%=item.getCodigo()%></td>
                    <td><%=item.getNome()%></td>
                    <td><%=formato.format(item.getDatafundacao())%></td>
                    
                    <td>
                        <a href ="del-ok.jsp?codigo=<%=item.getCodigo()%>" > Deletar </a>
                        <a href ="upd.jsp?codigo=<%=item.getCodigo()%>" > Modificar </a>
                </tr>
                <%
                    }
                %>
            </table>

    </body>
</html>
