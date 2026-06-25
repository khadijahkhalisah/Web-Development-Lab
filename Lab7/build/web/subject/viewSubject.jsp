<%-- 
    Document   : viewSubject
    Created on : May 26, 2026, 3:24:41 PM
    Author     : USER
--%>

<%@page import="com.lab.bean.SubjectBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registered Subjects</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="container mt-5">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2>My Registered Subjects</h2>
            <div>
                <a href="subject/registerSubject.jsp" class="btn btn-primary">Add New Subject</a>
                <a href="dashboard.jsp" class="btn btn-outline-secondary">Dashboard</a>
            </div>
        </div>

        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>No</th>
                    <th>Subject Code</th>
                    <th>Subject Name</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Ambil data senarai subjek dari request attribute 
                    List<SubjectBean> list = (List<SubjectBean>) request.getAttribute("subjectList");
                    if (list == null || list.isEmpty()) {
                %>
                    <tr><td colspan="4" class="text-center text-muted">No subjects registered yet.</td></tr>
                <%
                    } else {
                        int count = 1;
                        for (SubjectBean sb : list) {  
                %>
                    <tr>
                        <td><%= count++ %></td>
                        <td><%= sb.getSubjectCode() %></td>
                        <td><%= sb.getSubjectName() %></td>
                        <td>
                            <a href="SubjectServlet?action=edit&id=<%= sb.getId() %>" class="btn btn-sm btn-warning">Edit</a>
                            <a href="SubjectServlet?action=delete&id=<%= sb.getId() %>" 
                               class="btn btn-sm btn-danger" 
                               onclick="return confirm('Padam subjek ini?');">Delete</a>
                        </td>
                    </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
