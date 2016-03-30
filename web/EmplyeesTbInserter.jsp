<%-- 
    Document   : EmplyeesTbInserter
    Created on : 02-Oct-2015, 16:47:50
    Author     : Administrator
--%>

<%--
importing the date class Packging
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! 
        int empno;
        String ename;
        String job;
        String Gender;
        
        int Managerno;
        Date hiredate;
        double salary;
        double commission;
        int deptno;
                %>
       <%
           if(request.getParameter("txtEmpNo")!=null)
           {
                empno=Integer.parseInt(request.getParameter("txtEmpNo"));
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
                out.println("Your hobby/hobbies selected are:"+"<br/>");
                if(hobby!=null)
                {
                   for(int i=0; i<hobby.length; i++)
                   {
                       out.println(hobby[i]+"<br/>");
                   }
                }
                else
                    {
                         out.println("You r not selected any checkbox:"+"<br/>");
                    }
                //getting the Manager Number
                if(request.getParameter("txtManagerNo")!=null)
                {
                    Managerno=Integer.parseInt(request.getParameter("txtManagerNo"));
                    out.println("The Manager number is:"+Managerno+"<br/>");   
                }
                //For Hiring the date we use SimpleDateFormatc object 
                 SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
                 String hiredate;
          
                if(request.getParameter("txtHireDate")!=null)
                {
                   
                    hiredate=request.getParameter("txtHireDate");
                    Date date = formatter.parse(hiredate);
                    out.println("The hiredate is:"+hiredate+"<br/>");   
                }
                //getting Salary
                 if(request.getParameter("txtSalary")!=null)
                    {
                            salary=Double.parseDouble(request.getParameter("txtSalary"));
                            out.println("The Employee Salary   is:"+salary+"<br/>");   
                    }
                if(request.getParameter("txtCommission")!=null)
                {
                        commission=Double.parseDouble(request.getParameter("txtCommission"));
                        out.println("The Employee commission is:"+commission+"<br/>");   
                }
               
               if(request.getParameter("txtDeptNo")!=null)
                {
                            deptno=Integer.parseInt(request.getParameter("txtDeptNo"));
                            out.println("The Employees depertment is:"+deptno+"<br/>");
                }
               
          %>
                
    </body>
</html>
