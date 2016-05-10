<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%
if(request.getParameter("codigo") == null)
{
    response.sendRedirect("index.jsp");
    return;
}
/*
        1. Buscar o objeto a partir da chave primária
        2. Exibo as informações do objeto no formulário
        
*/

HeroiDAO dao = new HeroiDAO();
Heroi obj;
Integer codigo = Integer.parseInt(request.getParameter("codigo"));
obj = dao.buscarPorChavePrimaria(codigo);



%>
<%@include file="../cabecalho.jsp"%>
<div>
    <h1 class="centro">Alteração de Heroi</h1>

    <div>

        <form action="upd-ok.jsp" method="post">
            <label>Código</label><input type="text" name="txtCodigo" 
                                        value="<%=obj.getCodigo()%>" readonly /><br />
           <label>Nome:</label><input type="text" 
                                     name="txtNome"/><br />
                    <label>Codinome:</label><input type="text" 
                                     name="txtNome"/><br />
                    <label>Descrição</label>
                        <textarea name="txtDescricao"></textarea><br />
                    <label>Foto:</label><input type="file" 
                                     name="txtFoto"/><br />
                    <label>Inteligência:</label><input type="number" 
                                     name="txtInteligencia" 
                                     min="1" max="10"/><br />
                    <label>Velocidade:</label><input type="number" 
                                     name="txtVelocidade"
                                     min="1" max="10"/><br />
                    <label>Resistência:</label><input type="number" 
                                     name="txtResistecia"
                                     min="1" max="10"/><br />
                    <label>Projeção de Energia:</label><input type="number" 
                                     name="txtProjecaodeEnergia"
                                     min="1" max="10"/><br />
                    <label>Habilidade em Combate:</label><input type="number" 
                                     name="txtHabilidadeemCombate"
                                     min="1" max="10"/><br />
                    <label>Heroi:</label><select>
                                                <option value="">Selecione</option>
                                                
                                            </select>
                    <br />
                    <label>Editora:</label><select>
                                                <option value="">Selecione</option>
                                                
                                            </select>
                    <br />
                    <label>Região</label><select>
                                                <option value="">Selecione</option>
                                                
                                         </select>
                    <br />
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Salvar" />
        </form>
    </div>
        </div>



    </body>
</html>
