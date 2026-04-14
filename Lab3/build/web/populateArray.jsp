<%-- 
    Document   : populateArray
    Created on : Apr 14, 2026, 2:30:53 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 3 - Populate Array</title>
        <style>
            table { 
                border-collapse: collapse; 
                width: 70%; 
                margin: 30px auto; 
                font-family: Arial, sans-serif;
                border: 1px solid #dcdcdc;
            }
            th, td { 
                border: 1px 
                solid black; 
                padding: 10px; 
                text-align: center; 
            }
            th { 
                background-color: #f2f2f2; 
            }
        </style>
    </head>
    <body>
        <h1>Read Java array and populate it into HTML table.</h1>
        
        <%
            // Row = Salesman, Column = Month (Jan, Feb, Mar)
            int[][] salesData = {
                {2500, 2100, 2200}, 
                {2000, 1900, 2400}, 
                {1800, 2200, 2450} 
            };

            // Array for names
            String[] salesmen = {"Salesman 1", "Salesman 2", "Salesman 3"};
            String[] months = {"Jan", "Feb", "Mar"};
        %>

        <table>
            <thead>
                <tr>
                    <th>Salesman</th>
                    <th>Jan</th>
                    <th>Feb</th>
                    <th>Mar</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    // Loop baca data dari array
                    for (int i = 0; i < salesData.length; i++) {
                %>
                <tr>
                    <td><strong><%= salesmen[i] %></strong></td>
                    <% for (int j = 0; j < salesData[i].length; j++) { %>
                        <td><%= salesData[i][j] %></td>
                    <% } %>
                </tr>
                <% 
                    } 
                %>
            </tbody>
        </table>
            
        &copy;2026-Yan
    </body>
</html>
