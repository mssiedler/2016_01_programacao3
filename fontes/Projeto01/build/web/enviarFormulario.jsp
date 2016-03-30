<%-- 
    Document   : enviarFormulario
    Created on : 23/03/2016, 08:52:29
    Author     : marcelosiedler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Produto</h1>
        <form action="receberFormulario.jsp" method="post">
            <label>Nome:</label>
            <input type="text" required name="txtNome"/><br/>
            <label>Preço:</label>
            <input type="text" name="txtPreco"/><br/>
            <label>Unidades Disponíveis:</label>
            <input type="text" name="txtUnidades" /><br/>
            <label>Taxa de Instalação:</label>
            <input type="text" name="txtTaxaInstalacao"/><br/>
            <label>Disponível:</label>
            <select name="selDisponivel">
                <option>Selecione</option>
                <option>Sim</option>
                <option>Não</option>
            </select>
            <br/>
            <input type="submit" value="Enviar" />
            <input type="reset" value="Limpar" />
        </form>
    </body>
</html>
