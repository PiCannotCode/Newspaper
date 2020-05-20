<%-- 
    Document   : Information
    Created on : Nov 6, 2019, 11:57:14 PM
    Author     : Jay
--%>

<%@page import="entity.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            Account a = (Account) request.getAttribute("a");

        %>
    </head>
    <body>
        <header>
            <jsp:include page="Header.jsp"/>
        </header>
        <div>
            <% if (a != null) {
            %>    
            <p <%=a.getUsername()%></p>
            <%} else {%>
            <p>Nothing</p>
            <%}%>
        </div>
        <footer>
            <jsp:include page="Footer.jsp"/>
        </footer>
    </body>
</html>
