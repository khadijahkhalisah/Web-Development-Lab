/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.controller;

import com.lab.bean.Employee;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PayrollServlet")
public class PayrollServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // 1. Cipta ArrayList dan isi dengan 5 objek Employee [cite: 1474]
        List<Employee> list = new ArrayList<>();
        
        Employee e1 = new Employee(); e1.setEmpId("E001"); e1.setName("Aiman"); e1.setDepartment("IT"); e1.setBasicSalary(4500.0);
        Employee e2 = new Employee(); e2.setEmpId("E002"); e2.setName("Yan"); e2.setDepartment("HR"); e2.setBasicSalary(2800.0);
        Employee e3 = new Employee(); e3.setEmpId("E003"); e3.setName("Pavi"); e3.setDepartment("Finance"); e3.setBasicSalary(3500.0);
        Employee e4 = new Employee(); e4.setEmpId("E004"); e4.setName("Flora"); e4.setDepartment("Marketing"); e4.setBasicSalary(2500.0);
        Employee e5 = new Employee(); e5.setEmpId("E005"); e5.setName("Jenny"); e5.setDepartment("IT"); e5.setBasicSalary(5000.0);
        
        list.add(e1); list.add(e2); list.add(e3); list.add(e4); list.add(e5);

        // 2. Share data ke JSP 
        request.setAttribute("employeeList", list);

        // 3. Forward ke view 
        request.getRequestDispatcher("payroll_view.jsp").forward(request, response);
    }
}