<%-- 
    Document   : session_started
    Created on : 07 Aug 2025, 5:07:23 PM
    Author     : khuts
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session Started Page</title>
    </head>
    <body>
        <h1>Session Started</h1>
        <%
            String computerName = application.getInitParameter("computerName");
            String userName = (String)session.getAttribute("name");
        %>
        <p>
            Hi <b><%=userName%></b>. I'm <b><%=computerName%></b>
        </p> 
        <form action="GenderServlet" method="POST">
            <table>
                <tr>
                    <td>What's your gender?</td>
                    <td>
                        <select name="gender" required="">
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="SUBMIT" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
