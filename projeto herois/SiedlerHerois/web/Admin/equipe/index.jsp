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
                            <th>C�digo</th>
                            <th>Nome</th>
                             <th>Descri��o</th>
                             <th>Her�is</th>
                           
                            <th>A��es</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Vingadores</td>
                            <td>Equipe reunida b;la bla bla</td>
                            <td>Batman, Mulher Gato, Lanterna Verde</td>
                            
                            <td><a href="upd.jsp">Editar</a>
                                <a href="del-ok.jsp">Excluir</a>
                            </td>
                            
                        </tr>
                        
                    </table>
                    
               
            </div>
    </body>
</html>
