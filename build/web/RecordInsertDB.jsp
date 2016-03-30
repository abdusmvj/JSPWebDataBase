<%-- 
    Document   : RecordInsertDB
    Created on : 10-Oct-2015, 13:53:58
    Author     : Administrator
    Second Page=
--%>


<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inserting record to the Database</h1>
        <%!
            
     
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
                %>
           
      <%
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
            
               
          %>
                   
  
            
    <% 
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
         
        %>
    </body>
</html>
