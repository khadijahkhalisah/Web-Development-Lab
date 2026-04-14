<%-- 
    Document   : memberDirectory
    Created on : Apr 14, 2026, 4:29:23 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %> [cite: 17]
<!DOCTYPE html>
<html>
<head><title>Lab 3 Exercise - Club Member Directory</title></head>
<body>
    <%@ include file="header.jsp" %> 

    <div style="padding: 20px; font-family: Arial;">
        <h2>Active Member Directory</h2>
        
        <table border="1" cellpadding="10" style="border-collapse: collapse; width: 60%;">
            <tr style="background-color: #f2f2f2;">
                <th>No.</th>
                <th>Member Name</th>
            </tr>
            <%
                // Ambil list dari application scope
                ArrayList<String> members = (ArrayList<String>) application.getAttribute("globalMembers");
                
                if (members == null || members.isEmpty()) {
            %>
                <tr>
                    <td colspan="2" style="text-align:center;">No members registered yet.</td>
                </tr>
            <%
                } else {
                    // Loop untuk paparkan semua nama yang dah register 
                    for (int i = 0; i < members.size(); i++) {
            %>
                <tr>
                    <td><%= i + 1 %></td>
                    <td><%= members.get(i) %></td>
                </tr>
            <% 
                    }
                }
            %>
        </table>
        <br>
        <a href="registerClub.jsp">+ Register New Member</a>
    </div>

    <%@ include file="footer.jsp" %> 
</body>
</html>
