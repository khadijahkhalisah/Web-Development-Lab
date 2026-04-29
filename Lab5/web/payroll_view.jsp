<%-- 
    Document   : payroll_view
    Created on : Apr 29, 2026, 4:12:17 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Import JSTL Core --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Payroll System</title>
    <style>
        table { width: 80%; border-collapse: collapse; margin: 20px auto; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #6f42c1; color: white; }
        .senior { color: blue; font-weight: bold; }
        .junior { color: gray; }
    </style>
</head>
<body>
    <h2 style="text-align:center;">Employee Payroll Display System</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Department</th>
                <th>Salary (RM)</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <%-- Gunakan c:forEach untuk loop data --%>
            <c:forEach items="${employeeList}" var="emp">
                <tr>
                    <td>${emp.empId}</td>
                    <td>${emp.name}</td>
                    <td>${emp.department}</td>
                    <td>${emp.basicSalary}</td>
                    <td>
                        <%-- Logic Challenge: c:choose --%>
                        <c:choose>
                            <c:when test="${emp.basicSalary >= 3000}">
                                <span class="senior">Senior</span>
                            </c:when>
                            <c:otherwise>
                                <span class="junior">Junior</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
