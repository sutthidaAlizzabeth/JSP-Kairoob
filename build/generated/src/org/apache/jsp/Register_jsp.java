package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_if_test.release();
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Register Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/reset.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/bootstrap.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/thumbnail-gallery.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/csss/bootstrap.min.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/stylish-portfolio.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/css/kairoob.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/font-awesome/css/font-awesome.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Assets/font-awesome/css/font-awesome.min.css\"/>\n");
      out.write("        <script type=\"text/javascript\" src=\"Assets/js/jquery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"Assets/js/bootstrap.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"Assets/js/kairoob.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <navbar class=\"navbar navbar-inverse navbar-fixed-top\" role=\"nav\">\n");
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
      out.write("    ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    <section class=\"section-page\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <h2>Register Free</h2>\n");
      out.write("                        <p>สมาชิกแบบธรรมดา อัพโหลดรูปได้ 10 รูป ต่อ สัปดาห์</p>\n");
      out.write("                        <p>สมัครวันนี้ทดลองแบบ VIP 14 วัน</p>\n");
      out.write("                        <p>สมาชิก VIP เดือนละ 350 บาท</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6 group-all\">\n");
      out.write("                        <form name='regis' action=\"Register\" method=\"post\"> \n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>E-mail</label>\n");
      out.write("                                <input id='username' onblur=\"checkEmail(this.value)\" type=\"email\" class=\"form-control\" name=\"username\" placeholder=\"E-mail\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Password</label>\n");
      out.write("                                <input id='pass' onblur=\"chkpass()\" type=\"password\" class=\"form-control\" name=\"password\" placeholder=\"password\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>RePassword</label>\n");
      out.write("                                <input id='repass' onblur='chkpass()' type=\"password\" class=\"form-control\" name=\"repassword\" placeholder=\"repassword\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <button onclick=\"sub()\" type=\"submit\" class=\"btn btn-success\">Submit</button>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${! empty message}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("        <script type=\"text/javascript\">\n");
        out.write("            alert(\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\");\n");
        out.write("        </script>\n");
        out.write("    ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }
}
