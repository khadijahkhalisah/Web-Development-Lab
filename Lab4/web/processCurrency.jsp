<%-- 
    Document   : processCurrency
    Created on : Apr 21, 2026, 2:33:42 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 4 | Process Currency</title>
        <<link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <%!
            // Define constant exchange rates
            final double USD = 0.25;
            final double EURO = 0.21;
            final double JPY = 40;
            final double SGD = 0.32;
            
            // Method to calculate conversion
            private double calculateRate(String currency, int amount) {
                double currencyChange = 0.0;

                if (currency != null) {
                    if (currency.equals("1")) {
                        currencyChange = amount * USD;
                    } else if (currency.equals("2")) {
                        currencyChange = amount * EURO;
                    } else if (currency.equals("3")) {
                        currencyChange = amount * JPY;
                    } else {
                        currencyChange = amount * SGD;
                    }
                }
            return currencyChange;
            }
        %>
        <%
            String currencyType = request.getParameter("currencyType");
            String amountRaw = request.getParameter("amount");

            int amount = 0;
            double total = 0;
            
            try {
                if (amountRaw != null) {
                    amount = Integer.parseInt(amountRaw);
                    total = calculateRate(currencyType, amount);
                }
            } catch (Exception e) {
                amount = 0;
            }
            
            // Determine currency name for display
            String currencyName = "N/A";
            if ("1".equals(currencyType)) currencyName = "USD";
            else if ("2".equals(currencyType)) currencyName = "EURO";
            else if ("3".equals(currencyType)) currencyName = "JPY";
            else if ("4".equals(currencyType)) currencyName = "SGD";
        %>
        <div class="container card">
            <h2 class="form-title">Conversion Result</h2>
           <label>Amount in Ringgit Malaysia (RM):</label>
           <p>RM <%= amount %></p>
           <label>Converted to (<%= currencyName %>):</label>
           <p><%= String.format("%.2f", total) %></p> 
           <a href="currencyConversion.html" class="btn btn-back">Back to Converter</a>
        </div>
    </body>
</html>
