<%-- 
    Document   : feeCalculator
    Created on : Apr 14, 2026, 4:26:21 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Lab 3 Exercise - Fee Calculator</title></head>
<body>
    <%@ include file="header.jsp" %> 

    <div style="padding: 20px; font-family: Arial;">
        <h2>Membership Fee Calculator</h2> 
        <form method="POST">
            Number of activities joined: 
            <input type="number" name="activityCount" required> 
            <button type="submit">Calculate</button>
        </form>

        <%
            String countStr = request.getParameter("activityCount");
            if(countStr != null) {
                int count = Integer.parseInt(countStr);
                double totalFee = count * 10.00; // Each activity costs RM10 
        %>
            <h3>Total Fee: RM <%= String.format("%.2f", totalFee) %></h3> 
        <% } %>
    </div>

    <%@ include file="footer.jsp" %> 
</body>
</html>
