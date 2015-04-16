package org.apache.jsp.include;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.css\"/>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/thumbnail-gallery.css\"/>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"/>\n");
      out.write("<navbar class=\"navbar navbar-inverse navbar-fixed-top\" role=\"nav\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"navbar-header\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"#\"><span class=\"glyphicon glyphicon-picture\"></span> Kairoob</a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"collapse navbar-collapse\">\n");
      out.write("            <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                <li><a href=\"#\"><span class=\"glyphicon glyphicon-shopping-cart\"></span> <span> Checkout</span></a></li>\n");
      out.write("                <li><a href=\"#\"><span class=\"glyphicon glyphicon-user\"></span> <span> Sign up</span></a></li>\n");
      out.write("                <li><a href=\"#\"><span class=\"glyphicon glyphicon-lock\"></span> <span> Login</span></a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</navbar>");
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
