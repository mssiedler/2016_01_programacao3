<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%
if(request.getParameter("codigo") == null)
{
    response.sendRedirect("index.jsp");
    return;
}
/*
        1. Buscar o objeto a partir da chave prim�ria
        2. Exibo as informa��es do objeto no formul�rio
        
*/

HeroiDAO dao = new HeroiDAO();
Heroi obj;
Integer codigo = Integer.parseInt(request.getParameter("codigo"));
obj = dao.buscarPorChavePrimaria(codigo);

CategoriaDAO cDAO = new CategoriaDAO();
List<Categoria> cLista = cDAO.listar();


%>
<%@include file="../cabecalho.jsp"%>
<div>
    <h1 class="centro">Altera��o de Heroi</h1>

    <div>

        <form action="upd-ok.jsp" method="post">
            <label>C�digo</label><input type="text" name="txtCodigo" 
                                        value="<%=obj.getCodigo()%>" readonly /><br />
           <label>Nome:</label><input type="text" 
                                     name="txtNome" value="<%=obj.getNome()%>"/><br />
                    <label>Codinome:</label><input type="text" 
                                     name="txtCodinome" value="<%=obj.getCodinome()%>"/><br />
                    <label>Descri��o</label>
                        <textarea name="txtDescricao"><%=obj.getDescricao()%></textarea><br />
                    <label>Foto:</label><input type="file" 
                                     name="txtFoto"/><br />
                    <label>Intelig�ncia:</label><input type="number" 
                                     name="txtInteligencia" 
                                     min="1" max="10"/><br />
                    <label>Velocidade:</label><input type="number" 
                                     name="txtVelocidade"
                                     min="1" max="10"/><br />
                    <label>Resist�ncia:</label><input type="number" 
                                     name="txtResistecia"
                                     min="1" max="10"/><br />
                    <label>Proje��o de Energia:</label><input type="number" 
                                     name="txtProjecaodeEnergia"
                                     min="1" max="10"/><br />
                    <label>Habilidade em Combate:</label><input type="number" 
                                     name="txtHabilidadeemCombate"
                                     min="1" max="10"/><br />
                    <label>Categoria:</label>
                    <select>
                        <option value="">Selecione</option>
                        <%
                        String marcado;
                        for(Categoria cat: cLista)
                        {
                            
                            if(cat.getCodigo() == obj.getCategoria().getCodigo())
                            {
                                marcado = "selected";
                            }
                            else
                            {
                                marcado = "";
                            }
                        
                        %>
                            <option value="<%=cat.getCodigo()%>" <%=marcado%>><%=cat.getNome()%>
                            </option>
                        <%
                        }
                        %>
                    </select>
                    <br />
                    <label>Editora:</label><select>
                                                <option value="">Selecione</option>
                                                
                                            </select>
                    <br />
                    <label>Regi�o</label><select>
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
