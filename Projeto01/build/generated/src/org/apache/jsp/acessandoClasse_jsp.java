package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.Produto;

public final class acessandoClasse_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write('\n');

    Produto produto = new Produto();
    produto.setNome("Projetor EPSON");
    produto.setPreco(123.0);
    produto.setDisponivel(false);
    produto.setTaxaInstalacao(10.0);
    produto.setUnidades(5);

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Produto</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Detalhes do Produto - Visualização</h1>\n");
      out.write("        Nome: <span>");
      out.print(produto.getNome());
      out.write("</span><br/>\n");
      out.write("        Preço Unitário: <span>");
      out.print(produto.getPreco());
      out.write("</span><br/>\n");
      out.write("        Unidades disponíveis: <span>");
      out.print(produto.getUnidades());
      out.write("</span><br/>\n");
      out.write("        Taxa de Instalação: <span>");
      out.print(produto.getTaxaInstalacao());
      out.write("</span><br/>\n");
      out.write("        Disponível?: <span>");
      out.print(produto.isDisponivel());
      out.write("</span><br/>\n");
      out.write("        Custo total: <span>");
      out.print(produto.retornarCustoTotal());
      out.write("</span><br/>\n");
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
