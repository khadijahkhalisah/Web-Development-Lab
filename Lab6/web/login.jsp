<%-- 
    Document   : login
    Created on : May 12, 2026, 4:21:55 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Exercise: Login</title>
    </head>
    <body>
        <h2>Login to System</h2>
        <p style="color:red;"><%= (request.getParameter("msg") != null) ? request.getParameter("msg") : "" %></p>

        <form action="doLogin.jsp" method="POST">
            Username: <input type="text" name="username" required><br><br>
            Password: <input type="password" name="password" required><br><br>
            <button type="submit">Login</button>
        </form>
        <br><a href="insertUser.html">Don't have an account? Register here.</a>
    </body>
</html>
