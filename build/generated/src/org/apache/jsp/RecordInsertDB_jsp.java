package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.Date;

public final class RecordInsertDB_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            
     
        String empno;
        String ename;
        String job;
        String Gender;
        String x;
        //int Managerno;
        String Managerno;
        String hiredate ;
        String salary;
        
        //double commission;
        String commission;
        //int deptno;
        String deptno;
                
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Inserting record to the Database</h1>\n");
      out.write("        ");
      out.write("\n");
      out.write("           \n");
      out.write("      ");

           if(request.getParameter("txtEmpNo")!=null)
           {
                empno=request.getParameter("txtEmpNo");
                out.println("The Employee no is:"+empno+"<br/>");
           }
           
            if(request.getParameter("txtEName")!=null)
                {
                    ename=request.getParameter("txtEName");
                    out.println("The Employee Name is:"+ename+"<br/>");   
                }
            if(request.getParameter("ddJob")!=null)
                {
                        job=request.getParameter("ddJob");
                        out.println("The Employee is:"+job+"<br/>");   
                }
            
          
                        Gender=request.getParameter("rdMale");
                        out.println("The Employee is:"+Gender+"<br/>"); 
              
               //For Selecting the number of check box
                String [] hobby;
                hobby=request.getParameterValues("ckboxCricket");
                out.println("Your hobby/hobbies selected are:");
               
                if(hobby!=null)
                {
                   
                   for(int i=0; i<hobby.length; i++)
                   {
                       //out.println(hobby[i]+",");
                        x+=(hobby[i]+",");                
                   }
                   out.println(x);
                   
                   out.println("<br>");
                }
                else
                    {
                         out.println("You are not selected any checkbox:"+"<br/>");
                    }
             
            
                //getting the Manager Number
                if(request.getParameter("txtManagerNo")!=null)
                {
                    //Managerno=Integer.parseInt(request.getParameter("txtManagerNo"));
                    Managerno=request.getParameter("txtManagerNo");
                    out.println("The Manager number is:"+Managerno+"<br/>");   
                }
             
                //For Hiring the date we use SimpleDateFormatc object 
                // SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                 hiredate=null; //initialize the hiredate
          
                if(request.getParameter("txtHireDate")!=null)
                {
                   
                    //hiredate=formatter.parse(request.getParameter("txtHireDate"));
                    hiredate=request.getParameter("txtHireDate");
                    //Date date = formatter.parse(hiredate);
                    out.println("The hiredate is:"+hiredate+"<br/>");   
                }
           
          
                //getting Salary
                 if(request.getParameter("txtSalary")!=null)
                    {
                            //salary=Double.parseDouble(request.getParameter("txtSalary"));
                             salary=request.getParameter("txtSalary");
                            out.println("The Employee Salary   is:"+salary+"<br/>");   
                    }
             
                if(request.getParameter("txtCommission")!=null)
                {
                        //commission=Double.parseDouble(request.getParameter("txtCommission"));
                        commission=request.getParameter("txtCommission");
                        out.println("The Employee commission is:"+commission+"<br/>");   
                }
                 
               
               if(request.getParameter("txtDeptNo")!=null)
                {
                            //deptno=Integer.parseInt(request.getParameter("txtDeptNo"));
                            deptno=request.getParameter("txtDeptNo");
                            out.println("The Employees depertment no is:"+deptno+"<br/>");
                }
            
               
          
      out.write("\n");
      out.write("                   \n");
      out.write("  \n");
      out.write("            \n");
      out.write("    ");
 
        out.println("Enter a record into the Employee Table."+"<br>");
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
                //creating the actual command text
                String cmdQuerytext= "INSERT INTO [ABDUSSCHEMA].[Employees] (EMPNO,ENAME,JOB,GENDER,HOBBIES,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES('"+empno+"','"+ename+"','"+job+"','"+Gender+"','"+x+"','"+Managerno+"','"+hiredate+"','"+salary+"','"+ commission+"','"+deptno+"')";
               //creating and executing the command
                int rowsaffected=scomm.executeUpdate(cmdQuerytext);
                out.println("Data inserted successfully");
                    
               
     
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
