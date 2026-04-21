<%-- 
    Document   : processCustomer
    Created on : Apr 21, 2026, 2:03:35 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 4 | Process Customer</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <%
            // Fixed price
            final double price = 10.0;
            
            // Retrieve form data
            String cust_no = request.getParameter("customerCode");
            String cust_type = request.getParameter("customerType");
            
            int quantity = 0;
            try {
                quantity = Integer.parseInt(request.getParameter("quantity"));
            } catch (Exception e) {
                quantity = 0;
            }
            
            // Business logic
            double total = 0;
            String message = "";
            
            if (cust_type.equals("1") && quantity > 100) {
                message = "You're entitled to 10% discount";
                total = quantity * price * 0.9;
            } else if (cust_type.equals("2") && quantity > 100) {
                message = "You're entitled to 25% discount";
                total = quantity * price * 0.75;
            } else {
                message = "You're not entitled to any discount";
                total = quantity * price;
            }
            
            // Display customer type
            String custTypeDisplay = cust_type.equals("1") ?
                "Normal Customer" : "Privilege Customer";
        %>
        
        <div class="container">
            <div class="card">
                <h2 class="form-title">Transaction Summary</h2>
                <p>Customer Code: <%= cust_no %></p>
                <p>Quantity: <%= quantity %></p>
                <p>Customer Type: <%= custTypeDisplay %></p>
                <p>Status: <strong><%= message %></strong></p>
                <p>Total Amount: <strong>RM <%= String.format("%.2f", total) %></strong></p>
                <br>
                <a href="customer.html">Back</a>
            </div>
        </div>
    </body>
</html>
