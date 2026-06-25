/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.controller;

import com.lab.bean.StudentBean;
import com.lab.bean.SubjectBean;
import com.lab.dao.SubjectDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SubjectServlet")
public class SubjectServlet extends HttpServlet {
    private SubjectDAO subjectDAO = new SubjectDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession(false);
 
        if (session == null || session.getAttribute("loggedUser") == null) {
            response.sendRedirect("login.html");
            return;
        }
        
        // Ambil No Matrik student yang tengah login 
        StudentBean student = (StudentBean) session.getAttribute("loggedUser");
        String matricNo = student.getMatricNo();

        try {
            if ("view".equals(action)) {
                // Ambil list data subjek milik student tersebut
                List<SubjectBean> list = subjectDAO.getSubjectsByMatric(matricNo);
                request.setAttribute("subjectList", list);
                request.getRequestDispatcher("subject/viewSubjects.jsp").forward(request, response);
                
            } else if ("add".equals(action)) {
                // Tangkap data form tambah
                SubjectBean sb = new SubjectBean();
                sb.setMatricNo(matricNo);
                sb.setSubjectCode(request.getParameter("subjectCode"));
                sb.setSubjectName(request.getParameter("subjectName"));
                
                subjectDAO.addSubject(sb);
                response.sendRedirect("SubjectServlet?action=view");
                
            } else if ("edit".equals(action)) {
                // Tarik data asal
                int id = Integer.parseInt(request.getParameter("id"));
                SubjectBean sb = subjectDAO.getSubjectById(id);
                request.setAttribute("subject", sb);
                request.getRequestDispatcher("subject/updateSubject.jsp").forward(request, response);
                
            } else if ("update".equals(action)) {
                // Proses simpan data baru
                SubjectBean sb = new SubjectBean();
                sb.setId(Integer.parseInt(request.getParameter("id")));
                sb.setSubjectCode(request.getParameter("subjectCode"));
                sb.setSubjectName(request.getParameter("subjectName"));
                
                subjectDAO.updateSubject(sb);
                response.sendRedirect("SubjectServlet?action=view");
                
            } else if ("delete".equals(action)) {
                // Proses padam subjek
                int id = Integer.parseInt(request.getParameter("id"));
                subjectDAO.deleteSubject(id);
                response.sendRedirect("SubjectServlet?action=view");
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
