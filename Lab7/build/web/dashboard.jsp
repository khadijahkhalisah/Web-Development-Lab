<%-- 
    Document   : dashboard
    Created on : May 26, 2026, 4:10:18 PM
    Author     : USER
--%>

<%@page import="com.lab.bean.StudentBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sess = request.getSession(false);
    if (sess == null || sess.getAttribute("loggedUser") == null) {
        response.sendRedirect("login.html"); // Selamat daripada penceroboh!
        return;
    }
    
    StudentBean student = (StudentBean) sess.getAttribute("loggedUser");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Student Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">
        <div class="container mt-5">
            <div class="card shadow p-5">
                <div class="d-flex justify-content-between align-items-center border-bottom pb-3 mb-4">
                    <h2>Welcome, <%= student.getName() %>! 👋</h2>
                    <a href="AuthServlet?action=logout" class="btn btn-danger">Logout</a>
                </div>

                <div class="row mt-4">
                    <div class="col-md-6">
                        <div class="p-4 bg-white border rounded shadow-sm">
                            <h4>Profile Summary</h4>
                            <p class="mt-3"><strong>Matric No:</strong> <%= student.getMatricNo() %></p>
                            <p><strong>Status:</strong> Active Student</p>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="p-4 bg-white border rounded shadow-sm text-center">
                            <h4>Academic Management</h4>
                            <p class="text-muted">Uruskan subjek pendaftaran semester anda di sini.</p>
                            <a href="SubjectServlet?action=view" class="btn btn-primary px-4 py-2 mt-2 fw-semibold">
                                Manage Registered Subjects
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
