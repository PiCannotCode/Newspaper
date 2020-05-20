<%-- 
    Document   : Feedback
    Created on : Mar 22, 2020, 10:51:12 PM
    Author     : Jay
--%>

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
        <form action="SendFBController" method="post" style="text-align: center">
            <table align="center" >
                <h1>FEEDBACK</h1>
                <tr>
                    <td>Nhập tên của bạn: </td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Feedback của bạn: </td>
                    <td><input type="text" name="des"></td>
                </tr>
                <h3 style="font-style: italic">**Feedback của bạn sẽ được gửi ẩn danh</h3>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Gửi"></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>
        </form>
        <footer>
            <jsp:include page="Footer.jsp"/>
        </footer>
    </body>
</html>
