<%-- 
    Document   : advice
    Created on : 07 Aug 2025, 7:02:58 PM
    Author     : khuts
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Advice Page</title>
    </head>
    <body>
        <h1>Advice</h1>
        <%
            String name = (String)session.getAttribute("name");
            String title = (String)session.getAttribute("title");
            String comment = (String)session.getAttribute("com");
            String computerName = application.getInitParameter("computerName");
        %>
        <p>
            <b><%=title%></b> <b><%=name%></b>, <b><%=computerName%></b> says <b><%=comment%></b>
            
        </p>
        <p>
            Click <a href="EndSessionServlet">here</a> to end the session
        </p>
    </body>
</html>
