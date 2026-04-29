<%-- 
    Document   : processBMI
    Created on : Apr 21, 2026, 4:28:20 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 4 Exercise | Process BMI</title>
    </head>
    <body>
        <%
            double weight = Double.parseDouble(request.getParameter("weight")); 
            double height = Double.parseDouble(request.getParameter("height"));

            double bmi = weight / (height * height);

            String category = "";
            if (bmi < 18.5) category = "Underweight"; 
            else if (bmi <= 25) category = "Normal"; 
            else category = "Overweight"; 
        %>

        <jsp:forward page="resultBMI.jsp">
            <jsp:param name="finalBMI" value="<%= String.valueOf(bmi) %>" />
            <jsp:param name="category" value="<%= category %>" />
        </jsp:forward>
    </body>
</html>
