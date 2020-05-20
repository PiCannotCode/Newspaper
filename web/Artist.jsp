<%-- 
    Document   : Artist
    Created on : Nov 13, 2019, 4:31:32 AM
    Author     : Jay
--%>

<%@page import="entity.Artist"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            ArrayList<Artist> artistList = (ArrayList<Artist>) request.getAttribute("artistList");

        %>
    </head>
    <body>
        <header>
            <jsp:include page="Header.jsp"/>
        </header>
        <form action="artist" method="post">
            <div>
                <b>TOP ARTIST OVER THE WORLD</b></br>
                <table style="text-align: left">
                    <% for (Artist a : artistList) {
                %>
                    <tr>
                        <td><b><%=a.getId()%> . <%=a.getStageName()%></b></td>
                    </tr>
                    <tr>
                        <td>Fullname:</br> <%=a.getFullName()%></td></br>
                    </tr>
                    <tr>
                        <td>DOB:</br> <%=a.getDate()%></td>
                    </tr>
                    <tr>
                        <td>Introduce:</br> <%=a.getIntroduce()%></td>
                    </tr>
                    <tr>
                        <td>Activity: </br><%=a.getActivity()%></td>
                    </tr>
                </table>
                    <br>
                    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    </br>
                    <%}%>
                
            </div>
        </form>
             <footer>
            <jsp:include page="Footer.jsp"/>
        </footer>
              
              "
    </body>
</html>
