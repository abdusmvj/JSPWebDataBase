<%-- 
    Document   : SercherRecordForm
    Created on : 17-Oct-2015, 15:14:40
    Author     : Administrator
    fourth page==
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
  
    <%
    String getSelectedEmpNo;
    getSelectedEmpNo=request.getParameter("ddEmpNo");
    out.println("You are selected EmpNo is:"+getSelectedEmpNo+"<br>");
    
   
    //String getSelectedEmpName;
    //getSelectedEmpName=request.getParameter("txtEName");
    //out.println("You are selected EmpName is:"+getSelectedEmpName);
    
    
            ResultSet rs=null;
            Connection conn;
            conn=null;
            Statement scomm;
            String vEname=null;
            String vjob=null;
            String vgender=null;
            String vhobbies=null;
            String vMGR=null;
            String vHiredate=null;
            String vSalary=null;
            String vCommission=null;
            String vDeptno=null;
            
            
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
                    rs= scomm.executeQuery("Select * from [ABDUSSCHEMA].[Employees] where EmpNo='"+getSelectedEmpNo+"'");
                    out.println("Viewing the data of dept table....."+"<br>");
                     while(rs.next())
                        {
                           // out.println(rs.getString(1)+"<br>");
                            vEname=rs.getString(2);
                            vjob=rs.getString(3);
                            vgender=rs.getString(4);
                            
                            vhobbies=rs.getString(5);
                            vMGR=rs.getString(6);
                            vHiredate=rs.getString(7);
                            vSalary=rs.getString(8);
                            vCommission=rs.getString(9);
                            vDeptno=rs.getString(10);
                            //out.println("Employee Name is :"+rs.getString(2)+"<br>");
                            //out.println("Employee Job Category is :"+rs.getString(3)+"<br>");
                            //out.println("Employee Gender is :"+rs.getString(4)+"<br>");
                            //out.println("Employee Hobbies is :"+rs.getString(5)+"<br>");
                            //out.println("Employee MGR Number is :"+rs.getString(6)+"<br>");
                            //out.println("Employee HireDate is :"+rs.getString(7)+"<br>");
                            //out.println("Employee Salary is :"+rs.getString(8)+"<br>");
                            //out.println("Employee Commission is :"+rs.getString(9)+"<br>");
                            
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
    %>
    <body style="background-color: aqua">
        <h2>Please fill the Form of Employees table Database</h2>
        <div>
            <form>
            <table border="2">
               <%--  
                        <tr><td><b>EmpNo:</b></td><td><input type="text" name="txtEmpNo" id="txtEmpNo" value="<%=getSelectedEmpNo%>"></td></tr> 
                    --%>
                
                <tr><td><b>EName:</b></td><td><input type="text" name="txtEName" id="txtEName" value="<%=vEname%>"/></td></tr>
                <tr><td><b>Job:</b></td><td><input type="text" name="txtjob" id="txtJob" value="<%=vjob%>" /></td></tr>
                <tr><td><b>Select Gender</b></td><td><%
                                                         if(vgender.equals("1"))
                                                         {
                                                         
                                                        %>
                                                        <input type="radio" name="rdMale" id="rdMale" checked="checked"/>Male
                                                         <input type="radio" name="rdMale" id="rdFemale"/>Female</td>
                                                    <%
                                                         }
                                                    else if(vgender.equals("0"))
                                                          {
                                                              %>
                                                               <input type="radio" name="rdMale"id="rdMale" checked="checked"/>Male
                                                              <input type="radio" name="rdMale" id="rdFemale" checked="checked"/>Female</td></tr>
                                                       <%
                                                           }  
                                                             %>
                                                             
                                                             
                                                    
                                                   
                <tr><td><b> Select Hobbies:</b></td><td>
                                                     <%
                                                         //1.first check for Cricket
                                                         if(vhobbies.indexOf("Cricket")!=-1)
                                                         {
                                                             %>
                                                            <input type="checkbox" name="ckboxCricket" value="Cricket" checked/>Cricket                                     
                                                    <%                                 
                                                        }
                                                         else
                                                         {
                                                             %>
                                                             <input type="checkbox" name="ckboxCricket" value="Cricket"/>Cricket                                     
                                                          <%
                                                                 }
                                                         %>
                                                         
                                                         
                                                              <%
                                                                //2.Now check for Badminton
                                                                if(vhobbies.indexOf("Badminton")!=-1)
                                                                        {
                                                                    %>
                                                                   <input type="checkbox" name="ckboxCricket" value="Badminton" checked/>Badminton
                                                              <%
                                                                        }
                                                                    else
                                                                    {
                                                                    %> 
                                                                    <input type="checkbox" name="ckboxCricket" value="Badminton"/>Badminton
                                                                    <%
                                                                      }
                                                                        %>
                                                                        
                                                                        
                                                               <%
                                                                //3.Now check for Football
                                                                if(vhobbies.indexOf("Football")!=-1)
                                                                        {
                                                                    %>
                                                                     <input type="checkbox" name="ckboxCricket" value="Football" checked/>Football
                                                              <%
                                                                        }
                                                                    else
                                                                    {
                                                                    %> 
                                                                        <input type="checkbox" name="ckboxCricket" value="Football"/>Football
                                                                    <%
                                                                      }
                                                                        %>          
                                                                        
                                                                       
                                                             <%
                                                                //4.Now check for Games
                                                                if(vhobbies.indexOf("Games")!=-1)
                                                                        {
                                                                    %>
                                                                    <input type="checkbox" name="ckboxCricket" value="Games" checked="checked"/>Games </td>
                                                              <%
                                                                        }
                                                                    else
                                                                    {
                                                                    %> 
                                                                         <input type="checkbox" name="ckboxCricket" value="Games"/>Games </td></tr>
                                                                    <%
                                                                      }
                                                                        %>          
                                                                        
                                                        
                                                       
                                                   
                <tr><td><b>Manager No.(MGR):</b></td><td><input type="text" name="txtManagerNo" id="txtManagerNo" value="<%=vMGR%>"/></td></tr>
                <tr><td><b>Hire Date:</b></td><td><input type="date" name="txtHireDate" id="txtHireDate" value="<%=vHiredate%>"/></td></tr>
                <tr><td><b>Salary:</b></td><td><input type="text" name="txtSalary" id="txtSalary" value="<%=vSalary%>" /></td></tr>
                <tr><td><b>Commission:</b></td><td><input type="text" name="txtCommission" id="txtCommission" value="<%=vCommission%>"/></td></tr>
                <tr><td><b>DeptNo:</b></td><td><input type="text" name="txtDeptNo" id="txtDeptNo" value="<%=vDeptno%>"/></td></tr>
                
                <tr><th><input type="submit" name="tsubmit" value="Submit"/></th>
                    <th><input type="reset" name="treset" value="Clear"/></th>
                </tr>
            </table>
           </form>
        </div>
    
    </body>
</html>
