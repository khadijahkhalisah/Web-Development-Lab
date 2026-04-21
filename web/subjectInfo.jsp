<%-- 
    Document   : subjectInfo
    Created on : Apr 21, 2026, 3:29:42 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>lab 4 | Subject Information</title>
    </head>
    <body>
        <h1>Subject Information</h1>
        
        <div style="padding: 10px; border-left: 3px solid #6f42c1; background-color: #f9f9fb;">
            <p><strong>Code:</strong> <%= request.getParameter("code") %></p> 
            <p><strong>Subject:</strong> <%= request.getParameter("subject") %></p> 
            <p><strong>Credit:</strong> <%= request.getParameter("credit") %></p>
        </div>
    </body>
</html>
