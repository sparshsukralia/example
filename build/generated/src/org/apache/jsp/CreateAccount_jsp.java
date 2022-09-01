package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CreateAccount_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<link rel=\"stylesheet\" href=\"http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css\" />\n");
      out.write("<script src=\"http://code.jquery.com/jquery-1.8.2.js\"></script>\n");
      out.write("<script src=\"http://code.jquery.com/ui/1.9.1/jquery-ui.js\"></script>\n");
      out.write("<html>\n");
      out.write("    <style>\n");
      out.write("        * {\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("            box-sizing: border-box;\n");
      out.write("        }\n");
      out.write("        html { \n");
      out.write("            overflow-y: scroll; \n");
      out.write("        }\n");
      out.write("        body {\n");
      out.write("            font-family: sans-serif;\n");
      out.write("            background: #9fa8da ;\n");
      out.write("            align-items: center;\n");
      out.write("            /*min-height: 100vh;*/\n");
      out.write("            /*position: absolute;*/\n");
      out.write("        }\n");
      out.write("        form {\n");
      out.write("            /*background-color: rgb(105, 105, 231);*/\n");
      out.write("            /*min-height: 100vh;*/\n");
      out.write("            /*display: flex;*/\n");
      out.write("            justify-content: space-around;\n");
      out.write("            align-items: center;\n");
      out.write("            width: 500px;\n");
      out.write("            top: 50%;\n");
      out.write("            left: 50%;\n");
      out.write("            margin-top: 100px;\n");
      out.write("            transform: translate(-50%, -50%);\n");
      out.write("            position: absolute;\n");
      out.write("            /*margin:1% auto;*/\n");
      out.write("            /*margin-right: auto; margin-left: auto; width: 21%;*/ \n");
      out.write("            /*padding-top: 11px;*/\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        h1 {\n");
      out.write("            font-size: 40px;\n");
      out.write("            text-align: center;\n");
      out.write("            text-transform: uppercase;\n");
      out.write("            margin-bottom: 10px;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .createForm p {\n");
      out.write("            font-size: 20px;\n");
      out.write("            margin: 15px 0;\n");
      out.write("            text-align: left;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .createForm input, select {\n");
      out.write("            font-size: 12px;\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 15px 10px;\n");
      out.write("            border: 0;\n");
      out.write("            outline: none;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .createForm button {\n");
      out.write("            font-size: 18px;\n");
      out.write("            font-weight: bold;\n");
      out.write("            margin: 20px 5px;\n");
      out.write("            padding: 10px 10px;\n");
      out.write("            width: 50%;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            border: 0;\n");
      out.write("            cursor: pointer;\n");
      out.write("            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);\n");
      out.write("        }\n");
      out.write("        .formBlock {\n");
      out.write("            display: flex;\n");
      out.write("            width: 100%;\n");
      out.write("            margin: 0.2rem;\n");
      out.write("        }\n");
      out.write("        .child {\n");
      out.write("            float: left;\n");
      out.write("            width: 50%;\n");
      out.write("            margin: 3px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        $(function() {\n");
      out.write("        var date = new Date();\n");
      out.write("        var currentMonth = date.getMonth();\n");
      out.write("        var currentDate = date.getDate();\n");
      out.write("        var currentYear = date.getFullYear();\n");
      out.write("        $('#datepicker').datepicker({\n");
      out.write("        maxDate: new Date(currentYear, currentMonth, currentDate)\n");
      out.write("        });\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("    <body>\n");
      out.write("        <h1>Create Account</h1><br>\n");
      out.write("        <div class=\"createForm\">\n");
      out.write("        <form action=\"CreateAccountDBMS.jsp\" method=\"post\">\n");
      out.write("<!--            <div class=\"formBlock\">\n");
      out.write("                <div class=\"child\"><p>Account Number</p></div>\n");
      out.write("                <div class=\"child\"><input type=\"text\" name=\"accno\"></div>\n");
      out.write("            </div>-->\n");
      out.write("            <div class=\"formBlock\">\n");
      out.write("                <div class=\"child\"><p>Customer Name</p></div>\n");
      out.write("                <div class=\"child\"><input type=\"text\" name=\"name\"></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"formBlock\">\n");
      out.write("                <div class=\"child\"><p>Gender</p></div>\n");
      out.write("                <div class=\"child\"><select name=\"gender\">\n");
      out.write("                    <option>Male</option>\n");
      out.write("                    <option>Female</option>\n");
      out.write("                </select></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"formBlock\">\n");
      out.write("                <div class=\"child\"><p>DOB</p></div>\n");
      out.write("                <div class=\"child\"><input type=\"date\" name=\"DOB\" id=\"datepicker\"></div> \n");
      out.write("            </div>\n");
      out.write("            <div class=\"formBlock\">\n");
      out.write("                <div class=\"child\"><p>Address</p></div>\n");
      out.write("                <div class=\"child\"><input type=\"text\" name=\"address\"></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"formBlock\">\n");
      out.write("                <div class=\"child\"><p>Contact Number</p></div>\n");
      out.write("                <div class=\"child\"><input type=\"text\" name=\"contactno\"></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"formBlock\">\n");
      out.write("                <div class=\"child\"><p>Password</p></div>\n");
      out.write("                <div class=\"child\"><input type=\"password\" name=\"password\"></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"formBlock\">\n");
      out.write("                <div class=\"child\"><p>Security Question</p></div>\n");
      out.write("                <div class=\"child\"><select name=\"sques\">\n");
      out.write("                    <option>First Car</option>\n");
      out.write("                    <option>First Bank</option>\n");
      out.write("                    <option>First School</option>\n");
      out.write("                    <option>First Job</option>\n");
      out.write("                </select></div> \n");
      out.write("            </div>\n");
      out.write("            <div class=\"formBlock\">\n");
      out.write("                <div class=\"child\"><p>Answer</p></div>\n");
      out.write("                <div class=\"child\"><input type=\"text\" name=\"answer\"></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"formBlock\">\n");
      out.write("                <button type=\"submit\" name=\"b1\" value=\"create\">Create</button>\n");
      out.write("                <button type=\"reset\" name=\"b2\" value=\"reset\">Reset</button>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
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
