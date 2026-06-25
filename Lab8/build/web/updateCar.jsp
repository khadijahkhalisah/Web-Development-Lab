<%-- 
    Document   : updateCar
    Created on : Jun 25, 2026, 10:36:23 PM
    Author     : USER
--%>

<%@page import="com.car.bean.CarBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Car Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
    <%
        CarBean car = (CarBean) request.getAttribute("car");
    %>
    <div class="card shadow p-4 mx-auto" style="max-width: 500px;">
        <h2 class="mb-4">Update Car Details</h2>
        <form action="CarServlet" method="POST">
            <input type="hidden" name="action" value="update">
            <input type="hidden" name="id" value="<%= car.getCarId() %>">
            
            <div class="mb-3">
                <label class="form-label">Brand:</label>
                <input type="text" name="brand" class="form-control" value="<%= car.getBrand() %>" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Model:</label>
                <input type="text" name="model" class="form-control" value="<%= car.getModel() %>" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Cylinder:</label>
                <input type="number" name="cyclinder" class="form-control" value="<%= car.getCyclinder() %>" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Price (RM):</label>
                <input type="number" step="0.01" name="price" class="form-control" value="<%= car.getPrice() %>" required>
            </div>
            <button type="submit" class="btn btn-warning w-100">Save Changes</button>
            <a href="CarServlet?action=view" class="btn btn-secondary w-100 mt-2">Cancel</a>
        </form>
    </div>
</body>
</html>
