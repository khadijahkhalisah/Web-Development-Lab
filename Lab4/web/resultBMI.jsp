<%-- 
    Document   : resultBMI
    Created on : Apr 21, 2026, 4:30:59 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Lab 4 Exercise | BMI Result</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <div class="container card">
            <h2 class="form-title">Your Health Result</h2>
            <div class="result-box">
                <p>Your BMI: <strong><%= String.format("%.2f", Double.parseDouble(request.getParameter("finalBMI"))) %></strong></p>
                <p>Category: <strong><%= request.getParameter("category") %></strong></p>
            </div>
            <br><a href="bmiCalculator.jsp" class="btn btn-back">Back</a>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>
