<%-- 
    Document   : processCalculateCarLoan
    Created on : Apr 14, 2026, 3:45:04 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perform Car Loan Calculation</title>
    </head>
    <body>
        <h2>Perform Car Loan Calculation</h2>
        <hr/>
        
        <fieldset>
            <% 
                // 1. Ambil data dari form dan tukar kepada nombor (double/int)
                String strAmount = request.getParameter("my_loanAmount");
                String strPeriod = request.getParameter("period");
                
                double loanAmount = Double.parseDouble(strAmount);
                int period = Integer.parseInt(strPeriod);
                
                // 2. Formula Pengiraan (Kadar faedah 4.5% @ 0.045)
                double interestRate = 0.045;
                double totalInterest = loanAmount * interestRate * period;
                double totalLoan = loanAmount + totalInterest;
            %>
            
            <h3 style="color: blue;">Details of car loan:</h3>
            
            <p>Loan Request : <%= loanAmount %></p>
            <p>Period of payment : <%= period %></p>
            <p><b>Total Loan (+ interest) : <%= totalLoan %></b></p>
            
        </fieldset>
        
        <p>&copy;2026-Yan</p>
    </body>
</html>
