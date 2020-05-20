<%-- 
    Document   : Footer
    Created on : Nov 10, 2019, 4:30:36 PM
    Author     : Jay
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="entity.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            Account ac = (Account) request.getAttribute("ac");

        %>
        <link href="css/web.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="LogoutServlet" method="post">
        <div class="footer-area" style="background: #804000" align="center">
            <input style="background-color: #4CAF50" type="submit" value="Logout">
        </div>
        </form>
    </body>
</html>
