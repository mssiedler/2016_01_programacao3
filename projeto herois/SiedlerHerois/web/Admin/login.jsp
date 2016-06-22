<%-- 
    Document   : login
    Created on : 08/06/2016, 08:07:06
    Author     : marcelosiedler
--%>
<%
    //verificar se veio uma tentativa de login
    
    if(request.getParameter("txtLogin")!= null && request.getParameter("txtSenha")!=null)
    {
        //tentativa de login
        String loginCerto = "Admin";
        String senhaCerta = "123";
        
        if(request.getParameter("txtLogin").equals(loginCerto) && 
                request.getParameter("txtSenha").equals(senhaCerta))
        {
            //Criar a minha session
            session.setAttribute("usuario", request.getParameter("txtLogin"));
            //redirecionar para a home
            response.sendRedirect("home");
        }
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="estilo.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1 class="centro">SUPER HEROES!</h1>
        <div class="centro">
            <form action="login.jsp" method="post">
                <label>Login</label><input type="text" name="txtLogin" required /><br/>
                <label>Senha</label><input type="password" name="txtSenha" required /><br/>
                <input type="submit" value="Entrar" /><br/>
                <a href="#">Esqueci minha senha</a>
            </form>
        </div>
    </body>
</html>
