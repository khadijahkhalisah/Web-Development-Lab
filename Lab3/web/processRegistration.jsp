<%-- 
    Document   : processRegistration
    Created on : Apr 14, 2026, 4:24:02 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head><title>Lab 3 Exercise - Registration Success</title></head>
<body>
    <%@ include file="header.jsp" %> 

    <div style="padding: 20px; font-family: Arial;">
        <% //Gemini tolong;)
            
            //Ambil nama dari form 
            String newName = request.getParameter("stdName");
            
            //Ambil list sedia ada dari Application Scope
            ArrayList<String> memberList = (ArrayList<String>) application.getAttribute("globalMembers");
            
            //Kalau list belum wujud (pendaftaran pertama), kita create baru
            if (memberList == null) {
                memberList = new ArrayList<String>();
            }
            
            //Tambah nama baru ke dalam list kalau nama tak kosong
            if (newName != null && !newName.trim().isEmpty()) {
                memberList.add(newName);
            }
            
            //Simpan balik list ke dalam Application Scope
            application.setAttribute("globalMembers", memberList);
        %>

        <h2 style="color: green;">Registration Successful! ✅</h2>
        <p>Thank you <strong><%= newName %></strong> for joining us.</p>
        <p>Your name has been added to the <strong>Club Member Directory</strong>.</p>
        
        <br>
        <a href="memberDirectory.jsp" style="color: #3498db;">View Directory &rarr;</a>
    </div>

    <%@ include file="footer.jsp" %> 
</html>
