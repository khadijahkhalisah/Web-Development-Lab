<%-- 
    Document   : healthInfo
    Created on : Apr 21, 2026, 4:32:46 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %> 
<!DOCTYPE html>
<html>
<head><title>Lab 4 Exercise | Health Info</title><link rel="stylesheet" href="css/style.css"></head>
<body>
    <%@ include file="header.jsp" %>
    <div class="container card">
        <h2 class="form-title">BMI Categories Reference</h2>
        <%
            ArrayList<String> categories = new ArrayList<>(); 
            categories.add("Underweight (< 18.5)");
            categories.add("Normal (18.5 - 25.0)");
            categories.add("Overweight (> 25.0)");
        %>
        <table border="1" style="width:100%; border-collapse:collapse;">
            <% for(String c : categories) { %>
                <tr><td style="padding:10px;"><%= c %></td></tr>
            <% } %>
        </table>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
