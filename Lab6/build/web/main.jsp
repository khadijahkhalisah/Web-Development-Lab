<%-- 
    Document   : main
    Created on : May 12, 2026, 4:29:16 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Exercise: Main Page</title>
    </head>
    <body>
        <h2>Welcome to Main Page</h2>
        <div style="border: 1px solid #ccc; padding: 15px; width: 300px;">
            <p><strong>Username:</strong> <%= request.getParameter("user") %></p>
            <p><strong>First Name:</strong> <%= request.getParameter("fname") %></p>
            <p><strong>Last Name:</strong> <%= request.getParameter("lname") %></p>
        </div>
        <br><a href="login.jsp">Logout</a>
    </body>
</html>
