package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class PhotoList_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/reset.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/bootstrap.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/thumbnail-gallery.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/bootstrap.min.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/stylish-portfolio.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/kairoob.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/font-awesome/css/font-awesome.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/font-awesome/css/font-awesome.min.css\"/>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/bootstrap.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <navbar class=\"navbar navbar-kairoob navbar-inverse navbar-fixed-top\" role=\"nav\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.jsp\"><span class=\"glyphicon glyphicon-picture\"></span> Kairoob</a>\n");
      out.write("                <form action=\"\" method=\"\" class=\"navbar-form navbar-left\" role=\"search\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <input type=\"text\" id=\"form-search\" class=\"form-control\" placeholder=\"Search\">\n");
      out.write("                    </div>\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-default\"><span class=\"fa fa-search\"</button>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                    <li><a href=\"Register.jsp\"><span class=\"glyphicon glyphicon-user\"></span> <span> Sign up</span></a></li>\n");
      out.write("                    <li><a href=\"Login.jsp\"><span class=\"glyphicon glyphicon-lock\"></span> <span> Login</span></a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </navbar>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-lg-12\">\n");
      out.write("                <form action=\"PhotoList\" method=\"post\">\n");
      out.write("                    <h1>PhotoList</h1>\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"col-md-1 search-photo\">\n");
      out.write("                            <h4>Search</h4>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-2 search-photo\">\n");
      out.write("                            <select name=\"kind\" class=\"form-control\">\n");
      out.write("                                <option value=\"all\">All</option>\n");
      out.write("                                <option value=\"blackandwhite\">Black & White</option>\n");
      out.write("                                <option value=\"cityscape\">Cityscape</option>\n");
      out.write("                                <option value=\"food\">Food</option>  \n");
      out.write("                                <option value=\"landscape\">Landscape</option> \n");
      out.write("                                <option value=\"nature\">Nature</option>\n");
      out.write("                                <option value=\"people\">People</option>\n");
      out.write("                                <option value=\"toy\">Toy</option>\n");
      out.write("                                <option value=\"transportation\">Transportation</option>\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-8 search-photo\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" name=\"photosearchkey\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.photosearchkey}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-1 search-photo\">\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-default\">Search</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                <br/>\n");
      out.write("                //แสดงรูป\n");
      out.write("                <img src=\"Assets/photo/animals/cat.jpg\" />\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <section class=\"section-page\">\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <div class=\"col-md-3\">\n");
      out.write("                            <h4>Contact Us</h4>\n");
      out.write("                            <p>Kairoob (ขายรูป)</p>\n");
      out.write("                            <p>126 ถนนประชาอุทิศ แขวงบางมด เขตทุ่งครุ กรุงเทพมหานคร 10140</p>\n");
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
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("    </section>\n");
      out.write("</body>\n");
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
