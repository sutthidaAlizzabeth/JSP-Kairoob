package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class HistoryShopping_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/header.jsp", out, false);
      out.write("\n");
      out.write("    <div align=\"center\" class='divcen'>\n");
      out.write("        <div align=\"center\">\n");
      out.write("            <h2>ประวัติการซื้อสินค้า</h2>\n");
      out.write("        </div>\n");
      out.write("        <table class=\"history\">\n");
      out.write("            <tr>\n");
      out.write("                <td>ลำดับ</td>\n");
      out.write("                <td>รายการ</td>\n");
      out.write("                <td>ราคา</td>\n");
      out.write("                <td>สถานะ</td>\n");
      out.write("                <td>รายละเอียด</td>\n");
      out.write("                <td>แจ้งการชำระเงิน</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td colspan='6'>\n");
      out.write("                 ( Backend )                   \n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/footer.jsp", out, false);
      out.write("\n");
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
