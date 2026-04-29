<%-- 
    Document   : forwardInfo
    Created on : Apr 21, 2026, 3:42:00 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 4 | Forward Information</title>
        <link rel="stylesheet" href="style.css"> 
    </head>
    <body>
        <div class="container card">
            <h2 class="form-title">Forwarded Info</h2>
            <div class="result-box">
                <%
                    String name = request.getParameter("uname");
                    String email = request.getParameter("email");
                    String nationality = request.getParameter("nationality");
                    String background = request.getParameter("background");
                %>

                <p><strong>Name:</strong> <%= name %></p>
                <p><strong>Email:</strong> <%= email %></p>
                <p><strong>Nationality:</strong> <%= nationality %></p>
                <p><strong>Background:</strong> <%= background %></p>
            </div>
        </div>
    </body>
</html>
