<%-- 
    Document   : Home
    Created on : Nov 4, 2019, 6:08:32 PM
    Author     : Jay
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hiphop</title>
        <link href="css/web.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <jsp:include page="Header.jsp"/>
        </header>
        <div class="imgcat">
            <a href="articleController?p=1"><img src="images/rap.jpg" alt=""/></a>
            <a href="articleController?p=2" ><img  src="images/dance.jpg" alt="" align="right"/></a>
            <a href="articleController?p=5"><img src="images/DJ.jpg" alt=""/></a>
            <a href="LifeStyle.jsp"><img src="images/lifestyle.jpg" alt="" align="right"/></a>
            
        </div>
        <footer>
            <jsp:include page="Footer.jsp"/>
        </footer>
    </body>
</html>
