<%-- 
    Document   : errorStudent
    Created on : May 12, 2026, 3:51:46 PM
    Author     : USER
--%>

<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 3: Registration Error</title>
        <style>
            .error-box { 
                border: 2px solid red; 
                padding: 20px; 
                background-color: #fff0f0; 
                text-align: center;
                font-family: sans-serif;
            }
        </style>
    </head>
    <body>
        <form id="errorFrm" action="insertStudent.jsp" method="post">
            <h1>Lab 6 - Task 3 - Perform creating and retrieving records via JSP page</h1>
            <p>INVALID FORMAT! when inserting record...!</p>
        </form>
    </body>
</html>
