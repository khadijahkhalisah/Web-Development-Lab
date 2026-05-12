<%-- 
    Document   : insertAuthor
    Created on : May 12, 2026, 2:51:12 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 2: Form Insertion</title>
    </head>
    <body>
        <h1>Form Insertion</h1>
        <form action="processAuthor.jsp" method="POST">
            Author No: <input type="text" name="authno"><br>
            Name: <input type="text" name="name"><br>
            <%-- Tambah input untuk address, city, state --%>
            Zip: <select name="zip">
                    <option value="21030">21030 (UMT)</option>
                    <option value="41200">41200 (Klang)</option>
                 </select><br>
            <button type="submit">Submit</button>
        </form>
    </body>
</html>
