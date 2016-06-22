<%@include file="../cabecalho.jsp"%>
        <div>
            <h1 class="centro">Cadastro de Categoria</h1>
            
            <div>
                
                <form action="teste-add-ok.jsp" method="post">
                    <label>Codigo:</label><input type="text" 
                                     name="txtCodigo"/><br />
                    
                    <label>Nome:</label><input type="text" 
                                     name="txtNome"/><br />
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Salvar" />
                </form>
            </div>
        </div>



    </body>
</html>
