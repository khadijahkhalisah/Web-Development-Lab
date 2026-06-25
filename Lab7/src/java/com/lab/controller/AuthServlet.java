/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.controller;

import com.lab.bean.StudentBean;
import com.lab.dao.AuthDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AuthServlet")
public class AuthServlet extends HttpServlet {
    private AuthDAO authDAO = new AuthDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("login".equals(action)) {
            String matricNo = request.getParameter("matricNo");
            String password = request.getParameter("password");

            StudentBean student = authDAO.validateLogin(matricNo, password);

            if (student != null) {
                HttpSession session = request.getSession(true);
                session.setAttribute("loggedUser", student);
                response.sendRedirect("dashboard.jsp");
            } else {
                response.sendRedirect("login.html?error=Invalid Credentials");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("logout".equals(action)) {
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate(); 
            }
            response.sendRedirect("login.html");
        }
    }
} 
