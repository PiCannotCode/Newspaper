<%-- 
    Document   : Add_Article
    Created on : Mar 23, 2020, 7:16:30 PM
    Author     : Pi Pi
--%>

<%@page import="entity.Account"%>
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
        <%
            //boolean flag = false;
            String username = "";
            Account acc = (Account) session.getAttribute("ac");
//            if(request.getParameter("us_edit")!=null){
//                username =  request.getParameter("us_edit");
//                flag=true;
//            }
        %>
        <form action="${pageContext.request.contextPath}\AddArticleController" method="POST" enctype="multipart/form-data">
            <table Cellspacing='20' style="border:2px solid orange;margin:auto">
                <h2>Update</h2>
                <tr>
                    <td>ID: </td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td>Title: </td>
                    <td><input type="text" name="title"/></td>
                </tr>
                <tr>
                    <td>Detail: </td>
                    <td><input type="textarea" name="detail"/></td>
                </tr>
                <tr>
                    <td>Img: </td>
                    <td><input type="file" name="img"/></td>
                </tr>
                <tr>
                    <td>CatID: </td>
                    <td><input type="text"name="catID"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Add"/></td>
                    <td><input type="button" onclick="location.href = 'Home.jsp'" value="Cancel"/></td>
                </tr>
                <tr>
                    <td>
                        <%
                        if (acc.getRole().equalsIgnoreCase("admin")) {%>
                <tr>    
                    <td><input type="button" onclick="location.href = 'Add_Article.jsp'" value="Thêm bài viết"/></td>
                </tr>
                <tr>
                    <td><input type="button" onclick="location.href = 'FunctionServlet'" value="Sửa/Xóa bài viết"/></td>
                </tr> 
                <%}
                %>
                </tr>
            </table>
        </form>
        <footer>
            <jsp:include page="Footer.jsp"/>
        </footer>
    </body>
</html>

