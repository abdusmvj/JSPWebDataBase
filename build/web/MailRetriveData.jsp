<%-- 
    Document   : MailRetriveData
    Created on : 23-Nov-2015, 16:07:59
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! 
        
        String to;  
        String cc;
        String bcc;
        String from;
        String subject;
        String body;
        %>
          <%
                if(request.getParameter("txtto")!=null)
                {
                    to=request.getParameter("txtto");
                    out.println("The sending to  is:"+to+"<br/>");   
                }
                 
               if(request.getParameter("txtcc")!=null)
                {
                    cc=request.getParameter("txtcc");
                    out.println("The sending to cc is:"+cc+"<br/>");   
                }
                  
                  
                if(request.getParameter("txtbcc")!=null)
                {
                    bcc=request.getParameter("txtbcc");
                    out.println("The sending to bcc is:"+bcc+"<br/>");   
                }
                   
                   
                if(request.getParameter("txtfrom")!=null)
                {
                    from=request.getParameter("txtfrom");
                    out.println("The accepted from  is:"+from+"<br/>");   
                }
                
                if(request.getParameter("txtsubject")!=null)
                {
                    subject=request.getParameter("txtsubject");
                    out.println("The subject of the mail  is:"+subject+"<br/>");   
                }
                
                if(request.getParameter("txtbody")!=null)
                {
                    body=request.getParameter("txtbody");
                    out.println("The body of the message is:"+body+"<br/>");   
                }
           %>
                
    </body>
</html>
