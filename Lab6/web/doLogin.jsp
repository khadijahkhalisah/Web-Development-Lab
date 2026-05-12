<%-- 
    Document   : doLogin
    Created on : May 12, 2026, 4:25:10 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Exercise: Login Confirmation</title>
    </head>
    <body>
        <% // gemini tolong 
            String user = request.getParameter("username");
            String pass = request.getParameter("password");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSA3023", "root", "admin");

                String sql = "SELECT * FROM userprofile WHERE username=? AND password=?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, user);
                ps.setString(2, pass);

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    String url = "main.jsp?user=" + rs.getString("username") + 
                                 "&fname=" + rs.getString("firstname") + 
                                 "&lname=" + rs.getString("lastname");
                    response.sendRedirect(url);
                } else {
                    response.sendRedirect("login.jsp?msg=Invalid username or password..!");
                }
                con.close();
            } catch (Exception e) {
                out.println(e.getMessage());
            }
        %>
    </body>
</html>
