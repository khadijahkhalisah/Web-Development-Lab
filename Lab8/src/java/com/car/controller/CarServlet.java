/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.car.controller;

import com.car.bean.CarBean;
import com.car.dao.CarDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CarServlet")
public class CarServlet extends HttpServlet {
    private CarDAO carDAO = new CarDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "view";

        try {
            if ("view".equals(action)) {
                List<CarBean> list = carDAO.getAllCars();
                request.setAttribute("carList", list);
                request.getRequestDispatcher("viewCars.jsp").forward(request, response);
                
            } else if ("add".equals(action)) {
                CarBean car = new CarBean();
                car.setBrand(request.getParameter("brand"));
                car.setModel(request.getParameter("model"));
                car.setCyclinder(Integer.parseInt(request.getParameter("cyclinder")));
                car.setPrice(Double.parseDouble(request.getParameter("price")));
                
                carDAO.addCar(car);
                response.sendRedirect("CarServlet?action=view");
                
            } else if ("edit".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                CarBean car = carDAO.getCarById(id);
                request.setAttribute("car", car);
                request.getRequestDispatcher("updateCar.jsp").forward(request, response);
                
            } else if ("update".equals(action)) {
                CarBean car = new CarBean();
                car.setCarId(Integer.parseInt(request.getParameter("id")));
                car.setBrand(request.getParameter("brand"));
                car.setModel(request.getParameter("model"));
                car.setCyclinder(Integer.parseInt(request.getParameter("cyclinder")));
                car.setPrice(Double.parseDouble(request.getParameter("price")));
                
                carDAO.updateCar(car);
                response.sendRedirect("CarServlet?action=view");
                
            } else if ("delete".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                carDAO.deleteCar(id);
                response.sendRedirect("CarServlet?action=view");
            }
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
