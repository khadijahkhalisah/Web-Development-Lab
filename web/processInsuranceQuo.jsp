<%-- 
    Document   : processInsuranceQuo
    Created on : Apr 21, 2026, 3:56:52 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 4 | Process Insurance Quotation</title>
        <link rel="stylesheet" href="style.css"> 
    </head>
    <body>
        <%
            String icno = request.getParameter("icno");
            String name = request.getParameter("name");
            String coverage = request.getParameter("coverage");
            String ncdStr = request.getParameter("ncd");

            double price = 0;
            double ncd = 0;
            try {
                price = Double.parseDouble(request.getParameter("price"));
                ncd = Double.parseDouble(ncdStr);
            } catch (Exception e) {
                price = 0;
                ncd = 0;
            }
            
            double rate = 0;
            String coverageDisplay = "";
            if ("comprehensive".equals(coverage)) {
                rate = 0.05; // 5%
                coverageDisplay = "Comprehensive";
            } else {
                rate = 0.03; // 3%
                coverageDisplay = "Third Party";
            }

            double insurance = price * rate;
            
            // Apply NCD discount
            double discount = insurance * ncd;
            double afterNCD = insurance - discount;
            // Add 8% SST
            double sst = afterNCD * 0.08;
            double finalAmount = afterNCD + sst;
        %>

        <div class="container card">
            <h2 class="form-title">Insurance Quotation Result</h2>
            <div class="result-box">
                <p>IC No: <strong><%= icno %></strong></p>
                <p>Name: <strong><%= name %></strong></p>
                <p>Market Price: <strong>RM <%= String.format("%.2f", price) %></strong></p>
                <p>Coverage: <strong><%= coverageDisplay %></strong></p>
                <hr>
                <p>Base Insurance: <strong>RM <%= String.format("%.2f", insurance) %></strong></p>
                <p>NCD Discount: <strong>- RM <%= String.format("%.2f", discount) %></strong></p>
                <p>After NCD: <strong>RM <%= String.format("%.2f", afterNCD) %></strong></p>
                <p>SST (8%): <strong>RM <%= String.format("%.2f", sst) %></strong></p>
                <h3>Final Insurance Amount: RM <%= String.format("%.2f", finalAmount) %></h3>
            </div>
            <br>
            <a href="insuranceQuotation.jsp" class="btn btn-back">Back</a>
        </div>
    </body>
</html>
