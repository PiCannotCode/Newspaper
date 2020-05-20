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
        <script>
            function validate(){
                var x = document.forms["update"]["img"].value;
                if (x.endsWith(".jpg") || x.endsWith(".png") || x.endsWith(".jpeg"))
                {
                    return true;
                }
                alert("Img field must be end with .jpg or .png or .jpeg");
                return false;
            }            
        </script>
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
        <form name="update" action="UpdateArticleController" method="POST" onsubmit="return validate()">
            <table Cellspacing='20' style="border:2px solid orange;margin:auto">
                <h2>Update</h2>
                <tr>
                    <td>ID: </td>
                    <td><input type="text" name="id" value="${a.id}" readonly/></td>
                </tr>
                <tr>
                    <td>Title: </td>
                    <td><input type="text" name="title" value="${a.tittle}"/></td>
                </tr>
                <tr>
                    <td>Detail: </td>
                    <td><input type="textarea" name="detail" value="${a.detail}"/></td>
                </tr>
                <tr>
                    <td>Img: </td>
                    <td><input type="text" name="img"  value="${a.img}"/></td>
                </tr>
                <tr>
                    <td>CatID: </td>
                    <td><input type="text" name="catID"  value="${a.catID}"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Update"/></td>
                    <td><input type="button" onclick="location.href = 'Home.jsp'" value="Cancel"/></td>
                </tr>
                <tr>
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

