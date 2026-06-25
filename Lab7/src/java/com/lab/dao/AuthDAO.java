/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.dao;
import com.lab.bean.StudentBean;
import java.sql.*;

public class AuthDAO {
    public StudentBean validateLogin(String matricNo, String password) {
        String sql = "SELECT * FROM students WHERE matric_no = ? AND password = ?";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lab7_db", "root", "admin");
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, matricNo);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                StudentBean student = new StudentBean();
                student.setMatricNo(rs.getString("matric_no"));
                student.setName(rs.getString("name"));
                return student; //return kalo student exist
            }
            conn.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
