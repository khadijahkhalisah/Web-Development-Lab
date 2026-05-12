<%-- 
    Document   : processUser
    Created on : May 12, 2026, 4:17:40 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Exercise: User Process</title>
    </head>
    <body>
        <%
            String user = request.getParameter("username");
            String pass = request.getParameter("password");
            String fname = request.getParameter("firstname");
            String lname = request.getParameter("lastname");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSA3023", "root", "admin");

                String sql = "INSERT INTO userprofile VALUES (?, ?, ?, ?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, user);
                ps.setString(2, pass);
                ps.setString(3, fname);
                ps.setString(4, lname);

                ps.executeUpdate();
                out.println("<h3 style='color:green;'>Registration successful!</h3>");
                out.println("<a href='login.jsp'>Go to Login</a>");
                con.close();
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            }
        %>
    </body>
</html>
