<%-- 
    Document   : login
    Created on : Jun 25, 2026, 8:41:51 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Student</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">
        <div class="container mt-5">
            <div class="card shadow p-4 mx-auto" style="max-width: 400px; margin-top: 100px;">
                <h3 class="text-center mb-4">Student Login</h3>
                
                <% if(request.getParameter("error") != null) { %>
                    <div class="alert alert-danger text-center py-2">
                        <%= request.getParameter("error").replace("_", " ") %>
                    </div>
                <% } %>
                <form action="AuthServlet" method="POST">
                    <input type="hidden" name="action" value="login">

                    <div class="mb-3">
                        <label class="form-label">Matric No:</label>
                        <input type="text" name="matricNo" class="form-control" placeholder="e.g. UK12345" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Password:</label>
                        <input type="password" name="password" class="form-control" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Login</button>
                </form>
            </div>
        </div>
    </body>
</html>
