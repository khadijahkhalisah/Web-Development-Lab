<%-- 
    Document   : viewCars
    Created on : Jun 25, 2026, 10:35:33 PM
    Author     : USER
--%>

<%@page import="com.car.bean.CarBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Pricelist</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>Car Shop Pricelist</h2>
        <a href="addCar.jsp" class="btn btn-primary">Add New Car</a>
    </div>

    <table class="table table-bordered table-striped shadow-sm">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Brand</th>
                <th>Model</th>
                <th>Cylinder</th>
                <th>Price (RM)</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<CarBean> list = (List<CarBean>) request.getAttribute("carList");
                if (list == null || list.isEmpty()) {
            %>
                <tr><td colspan="6" class="text-center text-muted">No car records found.</td></tr>
            <%
                } else {
                    for (CarBean car : list) {
            %>
                <tr>
                    <td><%= car.getCarId() %></td>
                    <td><%= car.getBrand() %></td>
                    <td><%= car.getModel() %></td>
                    <td><%= car.getCyclinder() %></td>
                    <td><%= String.format("%.2Fi", car.getPrice()) %></td>
                    <td>
                        <a href="CarServlet?action=edit&id=<%= car.getCarId() %>" class="btn btn-sm btn-warning">Edit</a>
                        <a href="CarServlet?action=delete&id=<%= car.getCarId() %>" 
                           class="btn btn-sm btn-danger" 
                           onclick="return confirm('Padam data kereta ini?');">Delete</a>
                    </td>
                </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>
</body>
</html>
