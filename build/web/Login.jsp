<%-- 
    Document   : Login
    Created on : Nov 6, 2019, 9:11:46 PM
    Author     : Jay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/logincss.css" rel="stylesheet" type="text/css"/>
        <title>HIPHOP LOGIN</title>
    </head>
    <body style="background: #804000">
        <form align="center" style="font-size: 25px" action="login" method="post">
            <div class="Avatar"> 
                <img src="images/hiphop-man-white-512.jpg" alt="" height="400" width="400"/>
            </div>
            <div class="container">
                <label ><b>LET'S HIPHOP</b></label> <br> <br>
                <label><b>Username</b></label><br> 
                <input type="text" placeholder="Enter Username" name="username" > <br>
                <label><b>Password</b></label> <br>
                <input type="password" placeholder="Enter Password" name="password" > <br>
                <button type="submit">Login</button> <br>
            </div>
            <div class="container">
                <button><a href="Register.jsp" style="text-decoration: none; color: #ffffff" > Register<a></button>
            </div>
        </form>
    </body>
</html>
