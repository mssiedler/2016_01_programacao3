<%@page import="modelo.Heroi"%>
<%@page import="java.util.List"%>
<%@page import="dao.HeroiDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    HeroiDAO dao = new HeroiDAO();
    List<Heroi> lista = dao.listar();
%>


        <div>
            <h1 class="centro">Cadastro de Equipe</h1>
            
            <div>
                
                <form action="add-ok.jsp" method="post">
                    <label>Nome:</label><input type="text" name="txtNome"/><br />
                    <label>Heróis</label><br/>
                    <!--FOR -->
                    <%
                    for(Heroi heroi: lista)
                    {
                    %>
                    <input type="checkbox" name="heroi" value="<%=heroi.getCodigo()%>"/><%=heroi.getNome()%>
                    <br/>
                   
                    <%
                    }
                    %>
                    <!--FIM FOR -->
                    
                    
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Salvar" />
                </form>
            </div>
        </div>



    </body>
</html>
