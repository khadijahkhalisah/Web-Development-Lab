<%-- 
    Document   : SampleInsertionRecord
    Created on : May 12, 2026, 2:09:43 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 1: Sample Insertion Record</title>
    </head>
    <body>
        <h1>Lab 6 Task 1: Sample Insertion records into MySQL through JSP's page.</h1>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/CSA3023", "root", "admin");

                Statement stmt = con.createStatement();
                String sql = "INSERT INTO FirstTable VALUES ('Welcome to access MySQL database with JSP...!')";
                stmt.executeUpdate(sql);

                out.println("<p style='color:green;'>Rekod berjaya dimasukkan!</p>");
                con.close();
            } catch (Exception e) {
                out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
            }
        %>
    </body>
</html>
