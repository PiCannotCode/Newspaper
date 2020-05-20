<%-- 
    Document   : AccountProfile
    Created on : Mar 21, 2020, 10:09:53 PM
    Author     : Jay
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
        <form action="${pageContext.request.contextPath}\AccountProfileController" method="POST">
            <table Cellspacing='20' style="border:2px solid orange;margin:auto">
                <h2 >THÔNG TIN TÀI KHOẢN</h2>
                <tr>
                    <td>Username: </td>
                    <td><input type="text" value="<%=acc.getUsername()%>" name="username"/></td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><input type="text" value="<%=acc.getPassword()%>" name="password"/></td>
                </tr>
                <tr>
                    <td>FullName: </td>
                    <td><input type="text" value="<%=acc.getFullname()%>" name="fullname"/></td>
                </tr>
                <tr>
                    <td>Gender </td>
                    <td><input type="text" value="<%=acc.isGender()%>" name="gender"/></td>
                </tr>
                <tr>
                    <td>Account Role: </td>
                    <td><input type="text" value="<%=acc.getRole()%>" disabled="" name="role"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Update"/></td>
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
