<%-- 
    Document   : FeedbackAdmin
    Created on : Mar 25, 2020, 2:22:14 PM
    Author     : Jay
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.FB"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <header>
            <jsp:include page="Header.jsp"/>
        </header>
        <form action="ShowFBController" method="POST">
            <table align="center" border="1 solid">
                <h1 style="text-align: center">FEEDBACK</h1>
                <tr>
                    <th>Tên: </th>
                    <th>Feedback: </th>

                </tr>
                <c:forEach items="${f}" var="x">
                
                <tr>
                    <td><input type="text" name="name" value="${x.name}"></td>
                    <td><input type="text" name="des" value="${x.description}"></td>
                </tr>
                </c:forEach>
            </table>
        </form>
        <footer>
            <jsp:include page="Footer.jsp"/>
        </footer>
    </body>
</html>
