<%-- 
    Document   : Function
    Created on : Mar 25, 2020, 6:32:17 AM
    Author     : Jay
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <table border="solid 1">
            <tr>
                <td>ID: </td>
                <td>Tittle: </td>
                <td>Detail</td>
                <td>catID</td>

            </tr>
            <c:forEach items="${listAr}" var="y">
                <tr>
                    <td><input type="text" value="${y.id}" /></td>
                    <td><input type="text" value="${y.tittle}" /></td>
                    <td><input type="text" value="${y.detail}" /></td>
                    <td><input type="text" value="${y.catID}" /></td>
                    <td><a href="UpdateDetailController?id=${y.id}">Update</a></td>
                    <td><a href="DeleteArticleController?id=${y.id}">Delete</a></td>
                </tr>
            </c:forEach>
            
        </table>
        <footer>
                <jsp:include page="Footer.jsp"/>
            </footer>
    </body>
</html>
