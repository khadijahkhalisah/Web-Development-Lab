<%-- 
    Document   : registerSubject
    Created on : May 26, 2026, 3:22:37 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register Subject</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="container mt-5">
        <div class="card shadow p-4 mx-auto" style="max-width: 500px;">
            <h2 class="mb-4">Register New Subject</h2>
            <form action="../SubjectServlet" method="POST">
                <input type="hidden" name="action" value="add">
                <div class="mb-3">
                    <label>Subject Code:</label>
                    <input type="text" name="subjectCode" class="form-control" placeholder="e.g., CSM3023" required>
                </div>
                <div class="mb-3">
                    <label>Subject Name:</label>
                    <input type="text" name="subjectName" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-success w-100">Add Subject</button>
                <a href="../SubjectServlet?action=view" class="btn btn-secondary w-100 mt-2">Back to List</a>
            </form>
        </div>
    </body>
</html>
