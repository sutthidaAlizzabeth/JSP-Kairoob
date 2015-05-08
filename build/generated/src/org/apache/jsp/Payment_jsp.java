package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Payment_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_when_test.release();
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_otherwise.release();
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
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "WEB-INF/include/taghead.jsp", out, false);
      out.write("\n");
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
      out.write("                <a class=\"navbar-brand\" href=\"");
      out.print(response.encodeURL("index.jsp"));
      out.write("\"><span class=\"glyphicon glyphicon-picture\"></span> Kairoob</a>\n");
      out.write("                <form action=\"");
      out.print( response.encodeURL("PhotoList"));
      out.write("\" method=\"post\" class=\"navbar-form navbar-left\" role=\"search\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <input type=\"text\" name=\"photosearchkey\" id=\"form-search\" class=\"form-control\" placeholder=\"Search\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${search}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-default\"><span class=\"fa fa-search\"</button>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cart.items == null ? \"\" : \"ShowCart\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                            <span class=\"glyphicon glyphicon-shopping-cart\"></span> \n");
      out.write("                            <span>&nbsp;&nbsp; ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cart.items == null ? 0 : cart.size}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    ");
      //  c:choose
      org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
      _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
      _jspx_th_c_choose_0.setParent(null);
      int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
      if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                        ");
          //  c:when
          org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
          _jspx_th_c_when_0.setPageContext(_jspx_page_context);
          _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
          _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${! empty user}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
          int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
          if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
            do {
              out.write("\n");
              out.write("                            <li><a href=\"");
              out.print(response.encodeURL("AccountShow"));
              out.write("\"><span class=\"glyphicon glyphicon-user\"></span> <span> User</span></a></li>\n");
              out.write("                            <li><a href=\"");
              out.print(response.encodeURL("Logout"));
              out.write("\"><span class=\"glyphicon glyphicon-off\"></span> <span> Logout</span></a></li>\n");
              out.write("                            ");
              int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
              if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                break;
            } while (true);
          }
          if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
            _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
            return;
          }
          _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
          out.write("\n");
          out.write("                            ");
          //  c:otherwise
          org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
          _jspx_th_c_otherwise_0.setPageContext(_jspx_page_context);
          _jspx_th_c_otherwise_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
          int _jspx_eval_c_otherwise_0 = _jspx_th_c_otherwise_0.doStartTag();
          if (_jspx_eval_c_otherwise_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
            do {
              out.write("\n");
              out.write("                            <li>\n");
              out.write("                                <a href=\"");
              out.print(response.encodeURL("Register"));
              out.write("\">\n");
              out.write("                                    <span class=\"glyphicon glyphicon-user\"></span> \n");
              out.write("                                    <span> Sign up</span>\n");
              out.write("                                </a>\n");
              out.write("                            </li>\n");
              out.write("                            <li><a href=\"");
              out.print(response.encodeURL("Login"));
              out.write("\"><span class=\"glyphicon glyphicon-lock\"></span> <span> Login</span></a></li>\n");
              out.write("                            ");
              int evalDoAfterBody = _jspx_th_c_otherwise_0.doAfterBody();
              if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                break;
            } while (true);
          }
          if (_jspx_th_c_otherwise_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
            _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
            return;
          }
          _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
          out.write("\n");
          out.write("                        ");
          int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
        return;
      }
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
      out.write("\n");
      out.write("\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </navbar>\n");
      out.write("\n");
      out.write("    <div class=\"paymentdiv\">\n");
      out.write("        <h2>Payment</h2>            \n");
      out.write("        <div class=\"col-lg-12\">\n");
      out.write("            <div class=\"col-md-6\">\n");
      out.write("                <h3>Details Payment</h3>\n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                    <img src=\"Assets/icon/BANGKOK-1.png\" class=\"img-responsive\"><span>Bangkok Bank</span>\n");
      out.write("                    <br>\n");
      out.write("                    Account Name : Nattha Boonnumchai\n");
      out.write("                    <br>\n");
      out.write("                    Account No : 699-0-09667-0\n");
      out.write("                    <br>\n");
      out.write("                    Branch : Rama 1\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                    <img src=\"Assets/icon/GSB-1.png\" class=\"img-responsive\"/><span>GSB Bank</span>\n");
      out.write("                    <br>\n");
      out.write("                    Account Name : Nattha Boonnumchai\n");
      out.write("                    <br>\n");
      out.write("                    Account No : 699-0-09667-0\n");
      out.write("                    <br>\n");
      out.write("                    Branch : Rama 5\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                    <img src=\"Assets/icon/KBANK-1.png\" class=\"img-responsive\"><span>KBANK</span>\n");
      out.write("                    <br>\n");
      out.write("                    Account Name : Nattha Boonnumchai\n");
      out.write("                    <br>\n");
      out.write("                    Account No : 995-2-50667-9\n");
      out.write("                    <br>\n");
      out.write("                    Branch : Rama 7\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                    <img src=\"Assets/icon/KRUNGSRI-1.png\" class=\"img-responsive\"><span>KRUNGSRI Bank</span>\n");
      out.write("                    <br>\n");
      out.write("                    Account Name : Nattha Boonnumchai\n");
      out.write("                    <br>\n");
      out.write("                    Account No : 199-0-08867-0\n");
      out.write("                    <br>\n");
      out.write("                    Branch : Rama 4\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                    <img src=\"Assets/icon/KTB-1.png\" class=\"img-responsive\"><span>KTB Bank</span>\n");
      out.write("                    <br>\n");
      out.write("                    Account Name : Nattha Boonnumchai\n");
      out.write("                    <br>\n");
      out.write("                    Account No : 199-1-09667-0\n");
      out.write("                    <br>\n");
      out.write("                    Branch : Rama 3\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                    <img src=\"Assets/icon/SC-1.png\" class=\"img-responsive\"><span>SC Bank</span>\n");
      out.write("                    <br>\n");
      out.write("                    Account Name : Nattha Boonnumchai\n");
      out.write("                    <br>\n");
      out.write("                    Account No : 689-0-09557-0\n");
      out.write("                    <br>\n");
      out.write("                    Branch : Rama 2\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                    <img src=\"Assets/icon/SCB-1.png\" class=\"img-responsive\"><span>SCB Bank</span>\n");
      out.write("                    <br>\n");
      out.write("                    Account Name : Nattha Boonnumchai\n");
      out.write("                    <br>\n");
      out.write("                    Account No : 609-0-09667-0\n");
      out.write("                    <br>\n");
      out.write("                    Branch : Ladprao\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                    <img src=\"Assets/icon/THANACHART-1.png\" class=\"img-responsive\"><span>THANACHART Bank</span>\n");
      out.write("                    <br>\n");
      out.write("                    Account Name : Nattha Boonnumchai\n");
      out.write("                    <br>\n");
      out.write("                    Account No : 799-0-08267-0\n");
      out.write("                    <br>\n");
      out.write("                    Branch : Rama 9\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                    <img src=\"Assets/icon/TMB.png\" class=\"img-responsive\"><span>TMB Bank</span>\n");
      out.write("                    <br>\n");
      out.write("                    Account Name : Nattha Boonnumchai\n");
      out.write("                    <br>\n");
      out.write("                    Account No : 499-0-09667-5\n");
      out.write("                    <br>\n");
      out.write("                    Branch : Sukhumvit\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                    <img src=\"Assets/icon/UOB.png\" class=\"img-responsive\"><span>UOB Bank</span>\n");
      out.write("                    <br>\n");
      out.write("                    Account Name : Nattha Boonnumchai\n");
      out.write("                    <br>\n");
      out.write("                    Account No : 399-5-09667-8\n");
      out.write("                    <br>\n");
      out.write("                    Branch : Rachaphruk\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-6\">\n");
      out.write("                Transfer Date\n");
      out.write("                <input class=\"form-control\" type=\"text\" id=\"datepicker\" style=\"width: 300px\">\n");
      out.write("                <br>\n");
      out.write("                Amount \n");
      out.write("                <input class=\"form-control\" type=\"text\" style=\"width: 300px;\" placeholder=\"xxx.xx\"><div style=\"float: right; margin-top:-25px;\">Baht</div>\n");
      out.write("                <br>\n");
      out.write("                Details\n");
      out.write("                <br>\n");
      out.write("                <input type=\"text\" class=\"form-control\" style=\"width: 300px;\" placeholder=\"Details\">\n");
      out.write("                <br>\n");
      out.write("                <input class=\"btn btn-info\" type=\"button\" value=\"Add Payment\">\n");
      out.write("                <a href=\"AccountShow.jsp\"><button type=\"button\" class=\"btn btn-default\" value=\"AccountShow\">Account Show</button></a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "WEB-INF/include/footer.jsp", out, false);
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
