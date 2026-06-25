<%-- 
    Document   : addCar
    Created on : Jun 25, 2026, 10:34:34 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Car</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
    <div class="card shadow p-4 mx-auto" style="max-width: 500px;">
        <h2 class="mb-4">Add New Car Price</h2>
        <form action="CarServlet" method="POST">
            <input type="hidden" name="action" value="add">
            <div class="mb-3">
                <label class="form-label">Brand:</label>
                <input type="text" name="brand" class="form-control" placeholder="e.g. Proton" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Model:</label>
                <input type="text" name="model" class="form-control" placeholder="e.g. Saga" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Cylinder:</label>
                <input type="number" name="cyclinder" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Price (RM):</label>
                <input type="number" step="0.01" name="price" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-success w-100">Save Car Data</button>
            <a href="CarServlet?action=view" class="btn btn-secondary w-100 mt-2">Cancel</a>
        </form>
    </div>
</body>
</html>
