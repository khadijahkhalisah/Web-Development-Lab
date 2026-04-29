<%-- 
    Document   : insuranceQuotation
    Created on : Apr 21, 2026, 3:47:15 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 4 | Insurance Quotation</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="container card">
        <h2 class="form-title">Insurance Quotation</h2>
        <form action="processInsuranceQuo.jsp" method="POST">
            <div class="form-group">
                <label>IC No:</label>
                <input type="text" name="icno" placeholder="e.g. 020202113344" required> 
            </div>
            <div class="form-group">
                <label>Name:</label>
                <input type="text" name="name" required> 
            </div>
            <div class="form-group">
                <label>Market Price (RM):</label>
                <input type="number" name="price" required> 
            </div>
            <div class="form-group">
                <label>Coverage Type:</label>
                <select name="coverage">
                    <option value="comprehensive">Comprehensive</option>
                    <option value="third_party">Third Party</option>
                </select> 
            </div>
            <div class="form-group">
                <label>No Claims Discount (NCD):</label>
                <select name="ncd">
                    <option value="0.0">0%</option>
                    <option value="0.25">25%</option>
                    <option value="0.55">55%</option>
                </select> 
            </div>
            <div class="button-group">
                <button type="submit" class="btn btn-submit">Submit</button>
            </div>
        </form>
    </div>
    </body>
</html>
