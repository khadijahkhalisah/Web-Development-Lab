<%-- 
    Document   : jspParameter
    Created on : Apr 21, 2026, 3:02:34 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 4 | Using JSP Standard Action</title>
        <link rel="stylesheet" href="style.css"> 
    </head>
    <body>
        <div class="container card"> 
            <h1>Using jsp:include and jsp:param to display information</h1>

            <%
                String sCode = "CSE3023";
                String sSubject = "Web-based Application Development";
                String sCredit = "3(2+1)";
            %>
            <div class="result-box">
                <h3>Calling SubjectInfo.jsp Page</h3>
                
                <jsp:include page="subjectInfo.jsp" flush="true">
                    <jsp:param name="code" value="<%= sCode %>" /> 
                    <jsp:param name="subject" value="<%= sSubject %>" /> 
                    <jsp:param name="credit" value="<%= sCredit %>" /> 
                </jsp:include>
            </div>
        </div> 
    </body>
</html>
