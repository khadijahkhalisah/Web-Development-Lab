<%-- 
    Document   : updateSubject
    Created on : May 26, 2026, 3:26:26 PM
    Author     : USER
--%>

<%@page import="com.lab.bean.SubjectBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Update Subject</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="container mt-5">
        <%
            SubjectBean sb = (SubjectBean) request.getAttribute("subject");
        %>
        <div class="card shadow p-4 mx-auto" style="max-width: 500px;">
            <h2 class="mb-4">Update Subject</h2>
            <form action="SubjectServlet" method="POST">
                <input type="hidden" name="action" value="update">
                <input type="hidden" name="id" value="<%= sb.getId() %>">
                <div class="mb-3">
                    <label>Subject Code:</label>
                    <input type="text" name="subjectCode" class="form-control" value="<%= sb.getSubjectCode() %>" required>
                </div>
                <div class="mb-3">
                    <label>Subject Name:</label>
                    <input type="text" name="subjectName" class="form-control" value="<%= sb.getSubjectName() %>" required>
                </div>
                <button type="submit" class="btn btn-warning w-100">Save Changes</button>
                <a href="SubjectServlet?action=view" class="btn btn-secondary w-100 mt-2">Cancel</a>
            </form>
        </div>
    </body>
</html>
