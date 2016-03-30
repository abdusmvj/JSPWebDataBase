<%-- 
    Document   : EmployeesDBAccesing
    Created on : 04-Oct-2015, 13:59:11
    Author     : Administrator
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>

<%@ page import="java.util.*" %>
<%@ page import="javax.sql.*;" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <% 

        java.sql.Connection conn;
        conn=null;
        
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
                   out.println("Connetion ESTABLISED SUCESSFULLY");
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
        
        
 //cnfex.printStackTrace();
            %>
    </body>
</html>
