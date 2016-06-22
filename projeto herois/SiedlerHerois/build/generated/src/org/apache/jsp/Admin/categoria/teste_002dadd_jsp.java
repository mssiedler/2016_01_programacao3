package org.apache.jsp.Admin.categoria;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class teste_002dadd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Admin/categoria/../cabecalho.jsp");
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
      out.write("        <div>\n");
      out.write("            <h1 class=\"centro\">Cadastro de Categoria</h1>\n");
      out.write("            \n");
      out.write("            <div>\n");
      out.write("                \n");
      out.write("                <form action=\"teste-add-ok.jsp\" method=\"post\">\n");
      out.write("                    <label>Codigo:</label><input type=\"text\" \n");
      out.write("                                     name=\"txtCodigo\"/><br />\n");
      out.write("                    \n");
      out.write("                    <label>Nome:</label><input type=\"text\" \n");
      out.write("                                     name=\"txtNome\"/><br />\n");
      out.write("                    <input type=\"reset\" value=\"Limpar\" />\n");
      out.write("                    <input type=\"submit\" value=\"Salvar\" />\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
