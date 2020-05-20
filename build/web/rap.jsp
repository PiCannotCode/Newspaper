<%-- 
    Document   : rap
    Created on : Nov 10, 2019, 5:18:58 PM
    Author     : Jay
--%>

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
            ArrayList<Article> ars = (ArrayList<Article>) request.getAttribute("ars");

        %>
    </head>
    <body>
        <header>
            <jsp:include page="Header.jsp"/>
        </header>
        <div>
            <form action="articleController" method="post">
                <% for (Article a : ars) {
                %>
                <div class="tittle">
                    <b><a href="DetailController?id=<%=a.getId()%>"><%=a.getTittle()%></a></b>
                    </br>
                    </br>
                </div>
                    <div>
                    <image src="<%=a.getImg()%>" width="500" height="500">
                    </br>
                </div>
<!--                <div class="content">
                    <p><%= a.getDetail()%></p>
                </div>-->
                ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                <%}%>
            </form>
        </div>
        <footer>
            <jsp:include page="Footer.jsp"/>
        </footer>
    </body>
</html>
