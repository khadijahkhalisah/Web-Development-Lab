/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.controller;

import com.lab.dao.ProductDAO;
import com.lab.model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
    private ProductDAO productDAO = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        List<Product> list = productDAO.selectAllProducts();

        out.println("<html><head><title>Product List</title></head><body>");
        out.println("<h2>Product Inventory List</h2>");
        out.println("<table border='1' cellpadding='5'><tr><th>ID</th><th>Name</th><th>Category</th><th>Price (RM)</th><th>Quantity</th><th>Actions</th></tr>");
        
        for (Product p : list) {
            out.println("<tr>");
            out.println("<td>" + p.getId() + "</td>");
            out.println("<td>" + p.getName() + "</td>");
            out.println("<td>" + p.getCategory() + "</td>");
            out.println("<td>" + String.format("%.2f", p.getPrice()) + "</td>");
            out.println("<td>" + p.getQuantity() + "</td>");
            out.println("<td><a href='UpdateServlet?id=" + p.getId() + "'>Edit</a> | ");
            out.println("<a href='DeleteServlet?id=" + p.getId() + "' onclick='return confirm(\"Confirm delete?\")'>Delete</a></td>");
            out.println("</tr>");
        }
        out.println("</table>");
        out.println("<br><a href='add_product.html'>Add New Product</a>");
        out.println("</body></html>");
    }
}
