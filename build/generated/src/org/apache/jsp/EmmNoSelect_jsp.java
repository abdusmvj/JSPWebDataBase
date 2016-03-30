package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;

public final class EmmNoSelect_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        <div>\n");
      out.write("        <form >\n");
      out.write("        <table border=\"1\">\n");
      out.write("         <tr><td><b>Select Employee No:</b></td><td><select id=\"ddEmpNo\" name=\"ddEmpNo\">\n");
      out.write("     \n");
      out.write("        ");

            Connection conn;
            conn=null;
            Statement scomm;
            
             try
            {
                //this registers the java program to connect with SQL Server
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        
                //this connects to a particular database within a particular instance
       
                String dbURL = "jdbc:sqlserver://Islam-PC:1433;databaseName=ABDUSJSPDB";
                String user = "ABDUSLOGIN";
                String pass = "123456";
                //creating the connection
                conn = java.sql.DriverManager.getConnection(dbURL, user, pass);
                if(conn!=null)
                    {
                        //conn.open() 
                         out.println("Connetion ESTABLISED SUCESSFULLY"+"<br>");
                    }
                    //creating the command
                    scomm=conn.createStatement();
                   //creating and executing the command
                    ResultSet rs= scomm.executeQuery("Select * from [ABDUSSCHEMA].[Employees]");
                    out.println("Viewing the data of dept table....."+"<br>");
                    while(rs.next())
                        {
                           // out.println(rs.getString(1)+"<br>");
                           
      out.write(" \n");
      out.write("                              <option value=\"");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(1));
      out.write("</option>\n");
      out.write("                              ");

                        }
              }
        catch(ClassNotFoundException cnfex)
        {
            out.println(cnfex.toString());
        }
         catch(SQLException ex)
         {
             out.println(ex.toString());
         }
         finally
         {
             conn.close();
         }
        
      out.write("\n");
      out.write("                                               \n");
      out.write("                                           \n");
      out.write("                                    </select></td></tr>\n");
      out.write("          <tr><th><input type=\"submit\" name=\"tsubmit\" value=\"Submit\" onclick=\"SercherRecordForm.jsp\"/></td>\n");
      out.write("                    <td><input type=\"reset\" name=\"treset\" value=\"Clear\"/></td>\n");
      out.write("                    <td><input type=\"button\" name=\"tbutton\" value=\"Close\"/></td>\n");
      out.write("                </tr>\n");
      out.write("        </table>\n");
      out.write("      </form>\n");
      out.write("      </div>      \n");
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
