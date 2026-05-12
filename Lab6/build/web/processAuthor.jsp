<%-- 
    Document   : processAuthor
    Created on : May 12, 2026, 2:53:27 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%> <%-- Baris ni paling penting untuk hilangkan error --%>
<%@page import="lab6.com.Author"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 2: Form Action</title>
    </head>
    <body>
        <jsp:useBean id="auth" class="lab6.com.Author" scope="page" />
        <jsp:setProperty name="auth" property="*" />

        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSA3023", "root", "admin");

                String sql = "INSERT INTO author (authno, name, address, city, state, zip) VALUES (?, ?, ?, ?, ?, ?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, auth.getAuthno());
                ps.setString(2, auth.getName());
                ps.setString(3, auth.getAddress());
                ps.setString(4, auth.getCity());
                ps.setString(5, auth.getState());
                ps.setString(6, auth.getZip());

                int i = ps.executeUpdate();
                if(i > 0) {
                    out.println("<h3 style='color:green;'>Author " + auth.getName() + " berjaya didaftarkan!</h3>");
                }
                con.close();
            } catch (Exception e) { 
                out.println(e.getMessage()); 
            }
        %>
    </body>
</html>
