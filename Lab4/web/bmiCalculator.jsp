<%-- 
    Document   : bmiCalculator
    Created on : Apr 21, 2026, 4:26:14 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Lab 4 Exercise | BMI Calculator</title></head>
<body>
    <%@ include file="header.jsp" %>
    <div style="max-width: 400px; margin: 20px auto; font-family: sans-serif;">
        <h2>Calculate Your BMI</h2>
        <form action="processBMI.jsp" method="POST">
            <p>Weight (kg): <input type="number" step="0.01" name="weight" required></p>
            <p>Height (m): <input type="number" step="0.01" name="height" required></p>
            <button type="submit">Calculate BMI</button>
        </form>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
