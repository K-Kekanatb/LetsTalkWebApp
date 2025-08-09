<%-- 
    Document   : gender_outcome
    Created on : 07 Aug 2025, 6:24:01 PM
    Author     : khuts
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gender Outcome Page</title>
    </head>
    <body>
        <h1>Gender Outcome</h1>
        <%
            String name = (String)session.getAttribute("name");
            String title = (String)session.getAttribute("title");
        %>
        <p>
            Nice knowing you <b><%=title%> <%=name%></b>
        </p>
        <form action="TeamSupportedServlet" method="POST">
            <table>
                <tr>
                    <td>Which team do you support?</td>
                    <td>
                        <select name="ts" required="">
                            <option value="chiefs">Chiefs</option>
                            <option value="others">Others</option>
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
