/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.controller;

import com.lab.dao.ProductDAO;
import com.lab.model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    private ProductDAO productDAO = new ProductDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product p = productDAO.selectProductById(id);
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        out.println("<h2>Update Product</h2>");
        out.println("<form action='UpdateProductServlet' method='POST'>");
        out.println("<input type='hidden' name='id' value='" + p.getId() + "'>");
        out.println("Name: <input type='text' name='name' value='" + p.getName() + "' required><br><br>");
        out.println("Category: <input type='text' name='category' value='" + p.getCategory() + "' required><br><br>");
        out.println("Price (RM): <input type='number' step='0.01' name='price' value='" + p.getPrice() + "' required><br><br>");
        out.println("Quantity: <input type='number' name='quantity' value='" + p.getQuantity() + "' required><br><br>");
        out.println("<input type='submit' value='Update Product'>");
        out.println("</form>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Product updatedProduct = new Product(id, name, category, price, quantity);
        productDAO.updateProduct(updatedProduct);
        response.sendRedirect("ViewServlet");
    }
}
