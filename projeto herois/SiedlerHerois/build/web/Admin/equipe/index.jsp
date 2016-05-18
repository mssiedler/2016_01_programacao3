<%@include file="../cabecalho.jsp"%>
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
                        <tr>
                            <td>1</td>
                            <td>xxxxxx</td>
                            
                            <td><a href="upd.jsp">Editar</a>
                                <a href="del-ok.jsp">Excluir</a>
                            </td>
                            
                        </tr>
                        
                    </table>
                    
               
            </div>
    </body>
</html>
