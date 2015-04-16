package org.apache.jsp.include;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<section class=\"section-page\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <footer>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <div class=\"col-md-3\">\n");
      out.write("                            <h4>Contact Us</h4>\n");
      out.write("                            <p>Kairoob (??????)</p>\n");
      out.write("                            <p>126 ????????????? ????????? ?????????? ????????????? 10140</p>\n");
      out.write("                            <br>\n");
      out.write("                            <a href=\"mailto:Kairoob@gmail.com\">Kairoob@gmail.com</a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3\">\n");
      out.write("                            <h4>Creator</h4>\n");
      out.write("                            <p>Nattha Boonnumchai</p>\n");
      out.write("                            <p>Boom Pongtorn</p>\n");
      out.write("                            <p>Sumet Benjawan</p>\n");
      out.write("                            <p>Alizzabeth Carry</p>\n");
      out.write("                            <p>Earth's Eternity</p>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3\">\n");
      out.write("                            <h4>Follow Us</h4>\n");
      out.write("                            <a href=\"#\">Facebook</a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3\">\n");
      out.write("                            <h4>Sponsor</h4>\n");
      out.write("                            <a href=\"https://www.facebook.com/iamfuphotography\">Iamfu Studio</a>\n");
      out.write("                            <br>\n");
      out.write("                            <br>\n");
      out.write("                            <a href=\"https://www4.sit.kmutt.ac.th\">SIT KMUTT</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <hr>\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                    <p>Copyright © By <span class=\"glyphicon glyphicon-picture\"></span>  Kairoob 2015</p> \n");
      out.write("                </div>\n");
      out.write("            </footer>\n");
      out.write("        </div>\n");
      out.write("    </section>");
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
