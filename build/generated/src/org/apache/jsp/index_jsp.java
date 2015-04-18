package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Kairoob</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/reset.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/bootstrap.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/bootstrap.min.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/stylish-portfolio.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/kairoob.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/font-awesome/css/font-awesome.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/font-awesome/css/font-awesome.min.css\"/>\n");
      out.write("        <script type=\"text/javascript\" src=\"Assets/js/jquery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"Assets/js/bootstrap.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Navigation เมนู -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "WEB-INF/include/header.jsp", out, false);
      out.write("\n");
      out.write("        <section class=\"header\">\n");
      out.write("            <div class=\"text-vertical-center\">\n");
      out.write("                <h1>Kairoob</h1>\n");
      out.write("                <h3>Easy to buy Everywhere Everytime</h3>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <section id=\"bg-aboutus\" class=\"section-page\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"col-lg-12 text-center\">\n");
      out.write("                    <h1>About us</h1>\n");
      out.write("                    <h2>เว็บ Stockphoto โดยคนไทย เพื่อคนไทย</h2>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <section id=\"bg-service\" class=\"section-page\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row text-center\">\n");
      out.write("                    <div class=\"col-lg-10 col-lg-offset-1\">\n");
      out.write("                        <h1>Our Services</h1>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-4 col-sm-8\">\n");
      out.write("                                <div class=\"service-item\">\n");
      out.write("                                    <span id=\"icon-find\" class=\"glyphicon glyphicon-search\" style=\"font-size: 5em\"></span>\n");
      out.write("                                    <h3>Easy to find</h3>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4 col-sm-8\">\n");
      out.write("                                <div class=\"service-item\">\n");
      out.write("                                    <span id=\"icon-cart\" class=\"glyphicon glyphicon-shopping-cart\" style=\"font-size: 5em\"></span>\n");
      out.write("                                    <h3>Easy to buy </h3>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4 col-sm-8\">\n");
      out.write("                                <div class=\"service-item\">\n");
      out.write("                                    <span class=\"fa fa-cc-paypal fa-5x icon-payments\" ></span>\n");
      out.write("                                    <span class=\"fa fa-money fa-5x icon-payments\"></span>\n");
      out.write("                                    <span class=\"fa fa-cc-visa fa-5x icon-payments\"></span>\n");
      out.write("                                    <h3>Quick and easy ecommerce</h3>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!--page content catagory หมวดหมู่รูปภาพ-->\n");
      out.write("        <section class=\"section-page\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <h1>Browser By Category</h1>\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-6 col-md-4\">\n");
      out.write("                            <div class=\"thumbnail\">\n");
      out.write("                                <img src=\"Assets/photo/animals/icons_animals.jpg\" alt=\"...\">\n");
      out.write("                                <div class=\"caption\">\n");
      out.write("                                    <table style=\"width: 100%;\">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><h3>Animals</h3></td>\n");
      out.write("                                            <td style=\"float: right;\">add to cart <input type=\"checkbox\" name=\"selectedProduct\" value=\"\"></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-6 col-md-4\">\n");
      out.write("                            <div class=\"thumbnail\">\n");
      out.write("                                <img src=\"Assets/photo/blackandwhite/blackandwhite-city.jpg\" alt=\"...\">\n");
      out.write("                                <div class=\"caption\">\n");
      out.write("                                    <input type=\"checkbox\" name=\"selectedProduct\" value=\"\">\n");
      out.write("                                    <h3>Black & White</h3>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-sm-6 col-md-4\">\n");
      out.write("                            <div class=\"thumbnail\">\n");
      out.write("                                <img src=\"Assets/photo/cityscape/cityscape.jpg\" alt=\"...\">\n");
      out.write("                                <div class=\"caption\">\n");
      out.write("                                    <h3>Cityscape</h3>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-6 col-md-4\">\n");
      out.write("                            <div class=\"thumbnail\">\n");
      out.write("                                <img src=\"Assets/photo/food/noodle.JPG\" alt=\"...\">\n");
      out.write("                                <div class=\"caption\">\n");
      out.write("                                    <h3>Food</h3>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-6 col-md-4\">\n");
      out.write("                            <div class=\"thumbnail\">\n");
      out.write("                                <img src=\"Assets/photo/landscape/landscape.jpg\" alt=\"...\">\n");
      out.write("                                <div class=\"caption\">\n");
      out.write("                                    <h3>Landscape</h3>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-6 col-md-4\">\n");
      out.write("                            <div class=\"thumbnail\">\n");
      out.write("                                <img src=\"Assets/photo/nature/sunflower-2.jpg\" alt=\"...\">\n");
      out.write("                                <div class=\"caption\">\n");
      out.write("                                    <h3>Nature</h3>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-sm-6 col-md-4\">\n");
      out.write("                            <div class=\"thumbnail\">\n");
      out.write("                                <img src=\"Assets/photo/people/people-3.jpg\" alt=\"...\">\n");
      out.write("                                <div class=\"caption\">\n");
      out.write("                                    <h3>People</h3>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-6 col-md-4\">\n");
      out.write("                            <div class=\"thumbnail\">\n");
      out.write("                                <img src=\"Assets/photo/toy/Lego-2.JPG\" alt=\"...\">\n");
      out.write("                                <div class=\"caption\">\n");
      out.write("                                    <h3>Toy</h3>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-6 col-md-4\">\n");
      out.write("                            <div class=\"thumbnail\">\n");
      out.write("                                <img src=\"Assets/photo/transportation/BTS-1.JPG\" alt=\"...\">\n");
      out.write("                                <div class=\"caption\">\n");
      out.write("                                    <h3>Transportation</h3>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div> \n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!--footer-- ฟุตเตอร์-->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "WEB-INF/include/footer.jsp", out, false);
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
