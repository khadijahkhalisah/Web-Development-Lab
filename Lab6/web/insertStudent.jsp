<%-- 
    Document   : insertStudent
    Created on : May 12, 2026, 3:11:59 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 3: Register Student</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="container card">
            <h2 class="form-title">Student Registration</h2>
            <form action="processStudent.jsp" method="POST">
                ID (Exp: UK12345): <input type="text" name="stuno" required><br><br>
                Name: <input type="text" name="stuname" required><br><br>
                Program: 
                <select name="stuprogram">
                    <option value="BSc Soft. Eng.">BSc Soft. Eng.</option>
                    <option value="BSc with IM">BSc with IM</option>
                    <option value="BSc in Networking">BSc in Networking</option>
                    <option value="BSc in Robotics">BSc in Robotics</option>
                </select><br><br>
                <button type="submit" class="btn btn-submit">Submit</button>
            </form>
        </div>
    </body>
</html>
