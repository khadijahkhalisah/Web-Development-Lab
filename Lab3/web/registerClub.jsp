<%-- 
    Document   : registerClub
    Created on : Apr 14, 2026, 4:22:30 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Lab 3 Exercise - Club Registration</title></head>
<body>
    <%@ include file="header.jsp" %> 
    
    <div style="padding: 20px; font-family: Arial;">
        <h2>Club Registration Form</h2> 
        <form action="processRegistration.jsp" method="POST"> 
            <p>Student Name: <input type="text" name="stdName" required></p> 
            <p>Matric Number: <input type="text" name="stdMatric" required></p> 
            <p>Selected Club: 
                <select name="club"> [cite: 10]
                    <option value="Comtech Club">Software Engineering Club</option>
                    <option value="Cyber Club">Cyber Security Club</option>
                </select>
            </p>
            <button type="submit">Submit Registration</button>
        </form>
    </div>

    <%@ include file="footer.jsp" %> 
</body>
</html>
