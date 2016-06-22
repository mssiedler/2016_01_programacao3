package org.apache.jsp.Admin.equipe;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Admin/equipe/../cabecalho.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');

//verificar se está logado (se tem a session)
if(session.getAttribute("usuario") == null)
{
    response.sendRedirect("../login.jsp");
    return; //interrompe a execuçao do arquivo .. 
}


      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Sistema Heróis</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../estilo.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1 class=\"centro\">SUPER HEROES!</h1>\n");
      out.write("        <div style=\"text-align: right\">\n");
      out.write("            Bem vindo, <span>Usuário</span> - <a href=\"../sair.jsp\">Sair</a>\n");
      out.write("        </div>\n");
      out.write("        <nav class=\"centro\">\n");
      out.write("            <a href=\"../categoria\">Categoria</a> - \n");
      out.write("            <a href=\"../regiao\">Região</a>\n");
      out.write("        </nav>");
      out.write("\n");
      out.write("        <h1 class=\"centro\">Categoria</h1>\n");
      out.write("        <div>\n");
      out.write("                +<a href=\"add.jsp\">Novo</a><br />\n");
      out.write("                <form>\n");
      out.write("                    <input type=\"text\" placeholder=\"digite o texto da pesquisa\" />\n");
      out.write("                    <input type=\"submit\" value=\"Pesquisar\"/><br />\n");
      out.write("                </form>\n");
      out.write("                    <table>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Código</th>\n");
      out.write("                            <th>Nome</th>\n");
      out.write("                             <th>Descrição</th>\n");
      out.write("                             <th>Heróis</th>\n");
      out.write("                           \n");
      out.write("                            <th>Ações</th>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>1</td>\n");
      out.write("                            <td>Vingadores</td>\n");
      out.write("                            <td>Equipe reunida b;la bla bla</td>\n");
      out.write("                            <td>Batman, Mulher Gato, Lanterna Verde</td>\n");
      out.write("                            \n");
      out.write("                            <td><a href=\"upd.jsp\">Editar</a>\n");
      out.write("                                <a href=\"del-ok.jsp\">Excluir</a>\n");
      out.write("                            </td>\n");
      out.write("                            \n");
      out.write("                        </tr>\n");
      out.write("                        \n");
      out.write("                    </table>\n");
      out.write("                    \n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
