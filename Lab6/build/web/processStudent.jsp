<%-- 
    Document   : processStudent
    Created on : May 12, 2026, 3:33:49 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 3: Student Process</title>
    </head>
    <body>
        <jsp:useBean id="std" class="lab6.com.Student" scope="page" />
        <jsp:setProperty name="std" property="*" />

        <%
            if (std.getStuno().equals("INVALID")) {
        %>
                <jsp:forward page="errorStudent.jsp" />
        <%
            } else {
                try { 
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    Connection con = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/CSA3023", "root", "admin"); 
                    String sql = "INSERT INTO student (stuid, stuname, stuprogram) VALUES (?, ?, ?)";
                    PreparedStatement ps = con.prepareStatement(sql);
                    ps.setString(1, std.getStuno());
                    ps.setString(2, std.getName());
                    ps.setString(3, std.getProgram());

                    ps.executeUpdate();
        %>
                    <div style="color: green; font-weight: bold;">
                        Record with ID <%= std.getStuno() %> successfully created..!
                    </div>
                    <p>Details of record are;</p>
                    <ul>
                        <li>ID: <%= std.getStuno() %></li>
                        <li>Name: <%= std.getName() %></li>
                        <li>Program: <%= std.getProgram() %></li>
                    </ul>
                    <br><a href="insertStudent.jsp">Register Another Student</a>
        <%
                    con.close();
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage()); 
                }
            }
        %>
    </body>
</html>
