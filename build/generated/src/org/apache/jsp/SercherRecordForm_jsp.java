package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SercherRecordForm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    ");

    String getSelectedEmpNo;
    getSelectedEmpNo=request.getParameter("ddEmpNo");
    out.println("You are selected EmpNo is:"+getSelectedEmpNo);
    
    
    
      out.write("\n");
      out.write("    <body style=\"background-color: aqua\">\n");
      out.write("        <h2>Please fill the Form of Employees table Database</h2>\n");
      out.write("        <div>\n");
      out.write("            <form>\n");
      out.write("            <table border=\"2\">\n");
      out.write("                <tr><td><b>EmpNo:</b></td><td><input type=\"text\" name=\"txtEmpNo\" id=\"txtEmpNo\" value=\"");
      out.print(getSelectedEmpNo);
      out.write("\"></td></tr>\n");
      out.write("                \n");
      out.write("                <tr><td><b>EName:</b></td><td><input type=\"text\" name=\"txtEName\" id=\"txtEName\"/></td></tr>\n");
      out.write("                <tr><td><b>Job:</b></td><td><select id=\"ddJob\" name=\"ddJob\">\n");
      out.write("                                            <option value=\"Select Job\">--Select Job--</option>\n");
      out.write("                                            <option value=\"Manager\">MANAGER</option>\n");
      out.write("                                            <option value=\"Clerk\">CLERK</option>\n");
      out.write("                                            <option value=\"Salesman\">SALESMAN</option>\n");
      out.write("                                            <option value=\"Analyst\">ANALYST</option>\n");
      out.write("                                            <option value=\"President\">PRESIDENT</option>\n");
      out.write("                                    </select></td></tr>\n");
      out.write("                <tr><td><b>Select Gender</b></td><td><input type=\"radio\" name=\"rdMale\" value=\"True\" id=\"rdMale\"/>Male\n");
      out.write("                                                    <input type=\"radio\" name=\"rdMale\" value=\"False\" id=\"rdFemale\"/>Female</td></tr>\n");
      out.write("                <tr><td><b> Select Hobbies:</b></td><td><input type=\"checkbox\" name=\"ckboxCricket\" value=\"Cricket\"/>Cricket\n");
      out.write("                                                        <input type=\"checkbox\" name=\"ckboxCricket\" value=\"Badminton\"/>Badminton\n");
      out.write("                                                        <input type=\"checkbox\" name=\"ckboxCricket\" value=\"Football\"/>Football\n");
      out.write("                                                        <input type=\"checkbox\" name=\"ckboxCricket\" value=\"Games\"/>Games </td></tr>\n");
      out.write("                                                   \n");
      out.write("                <tr><td><b>Manager No.(MGR):</b></td><td><input type=\"text\" name=\"txtManagerNo\" id=\"txtManagerNo\"/></td></tr>\n");
      out.write("                <tr><td><b>Hire Date:</b></td><td><input type=\"date\" name=\"txtHireDate\" id=\"txtHireDate\"/></td></tr>\n");
      out.write("                <tr><td><b>Salary:</b></td><td><input type=\"text\" name=\"txtSalary\" id=\"txtSalary\"/></td></tr>\n");
      out.write("                <tr><td><b>Commission:</b></td><td><input type=\"text\" name=\"txtCommission\" id=\"txtCommission\"/></td></tr>\n");
      out.write("                <tr><td><b>DeptNo:</b></td><td><input type=\"text\" name=\"txtDeptNo\" id=\"txtDeptNo\"/></td></tr>\n");
      out.write("                \n");
      out.write("                <tr><th><input type=\"submit\" name=\"tsubmit\" value=\"Submit\"/></th>\n");
      out.write("                    <th><input type=\"reset\" name=\"treset\" value=\"Clear\"/></th>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("           </form>\n");
      out.write("        </div>\n");
      out.write("    \n");
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
