<%-- 
    Document   : EmmNoSelect
    Created on : 17-Oct-2015, 13:58:37
    Author     : Administrator
    3rd page
 <tr><td><b>Select Employee Name:</b></td><td><select id="ddEmpName" name="ddEmpName">
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div>
            <form action="http://localhost:8080/JSPWebDataBase/SercherRecordForm.jsp" method="POST" >
        <table border="1">
         <tr><td><b>Select Employee No:</b></td><td><select id="ddEmpNo" name="ddEmpNo">
                     
      
       
                    
        <%
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
                    out.println("Viewing the data from Emplyees table record database ....."+"<br>");
                    while(rs.next())
                        {
                           // out.println(rs.getString(1)+"<br>");
                           %> 
                              <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                             
                              <%
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
                                               
                                           
                                    </select></td></tr>
          <tr><th><input type="submit" name="tsubmit" value="Submit"/></td>
                    <td><input type="reset" name="treset" value="Clear"/></td>
                    <td><input type="button" name="tbutton" value="Close"/></td>
                </tr>
        </table>
      </form>
      </div>      
    </body>
</html>
