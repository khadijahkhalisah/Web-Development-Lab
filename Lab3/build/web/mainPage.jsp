<%-- 
    Document   : mainPage
    Created on : Apr 14, 2026, 3:59:57 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 3 - Using JSP Include directive</title>
        <style>
            .content-text {
                color: red;
                font-family: Arial;
                line-height: 1.5;
            }
        </style>
    </head>
    <body>
        <%@ include file="headerPage.jsp" %>
        <h1>Using JSP Include directive</h1>

        <p class="content-text">
            Java Server Page (JSP) is a technology for controlling the content <br>
            or appearance of Web pages through the use of servlets, small <br>
            programs that are specified in the Web page and run on the Web server <br>
            to modify the Web page before it is sent to the user who requested it.<br>
        </p>
        
        <%@ include file="footerPage.jsp" %>
    </body>
</html>
