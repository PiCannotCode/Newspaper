<%-- 
    Document   : rap
    Created on : Nov 10, 2019, 5:18:58 PM
    Author     : Jay
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.Account"%>
<%@page import="entity.Comment"%>
<%@page import="entity.Article"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/web.css" rel="stylesheet" type="text/css"/>
        <%
            ArrayList<Article> arcdetail = (ArrayList<Article>) request.getAttribute("arcdetail");
            ArrayList<Comment> cmt = (ArrayList<Comment>) request.getAttribute("cmtLs");
            Account acc = (Account) session.getAttribute("ac");
            String act = "CmtController?id=";
        %>
    </head>
    <body>

        <header>
            <jsp:include page="Header.jsp"/>
        </header>
        <div>
            <form action="DetailController" method="post">
                <% for (Article a : arcdetail) {
                %>
                <div class="tittle">
                    <% act = act + a.getId(); %>
                    <b><%=a.getTittle()%></a></b>
                    </br>
                    </br>
                </div>
                <div>
                    <image src="<%=a.getImg()%>" width="500" height="500">
                    </br>
                </div>
                <div class="content">
                    <p><%= a.getDetail()%></p>
                </div>
                ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                <%}%>
                <h3>Comment</h3>
                <% for (Comment c : cmt) {
                %>
                <table>
                    <tr>
                        <th><%=c.getAccount_username()%></th>
                        <td><%= c.getCmt()%></td>
                    </tr>
                </table>
                --------------------------------------------------------
                <%}%>
                <br><br>
            </form>
            <form action="<%=act%>" method="post">
                <tr>
                    <td><input type="text" name="cmt"></td>
                    <td><input type="submit" value="Gửi"/></td>
                </tr>
            </form>
            <br><br>
        </div>
        <footer>
            <jsp:include page="Footer.jsp"/>
        </footer>
    </body>
</html>
