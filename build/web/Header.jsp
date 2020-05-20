<%-- 
    Document   : Header
    Created on : Oct 20, 2019, 3:48:48 AM
    Author     : Jay
--%>

<%@page import="entity.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Hiphop Page</title>
        <link href="css/web.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <%
            //boolean flag = false;
            String username = "";
            Account acc = (Account) session.getAttribute("ac");
//            if(request.getParameter("us_edit")!=null){
//                username =  request.getParameter("us_edit");
//                flag=true;
//            }
        %>

        <!---->
        <div class="header-area">
            <div class="logo">
                <a href="Home.jsp" >
                    <img src="images/logo.jpg" alt="HomePage"  style="width:100px;height:100px; margin-left: 50px" />
                </a>
                <div align="right"><jsp:include page="Search.jsp"/></div>
            </div>
            <div class="categories" id="menu">
                <ul>
                    <li><a href="Home.jsp">HOMEPAGE<a></li>
                                <li><a href="Introduce.jsp">INTRODUCE<a></li>
                                            <li><a href="articleController?p=1">RAP<a></li>
                                                        <li><a href="articleController?p=2">DANCE<a></li>
                                                                    <li><a href="articleController?p=5">DJ<a></li>
                                                                                <li><a href="artist">ARTIST<a></li>
                                                                                            <li><a href="More.jsp">MORE<a>
                                                                                                        <ul class="submenu" style="text-align: left">
                                                                                                            <li><a href="LifeStyle.jsp">Life Style<a></li>
                                                                                                                        <%
                                                                                                                            if (acc.getRole().equalsIgnoreCase("admin")) {%>
                                                                                                                        <li><a href="ShowFBController">Feedback</a></li>
                                                                                                                            <%} else {%>
                                                                                                                        <li><a href="Feedback.jsp">Feedback</a></li>
                                                                                                                            <%}
                                                                                                                            %>
                                                                                                                        <li><a href="AccountProfile.jsp">Your Account</a></li>
                                                                                                                        </ul>
                                                                                                                        </li>
                                                                                              
                                                                                                                        </ul>
                                                                                                                        </div>
                                                                                                                        </div>

                                                                                                                        </body>
                                                                                                                        </html>

