/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.dao;

import com.lab.bean.SubjectBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SubjectDAO {
    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/lab7_db", "root", "admin");
    }

    // CREATE: Tambah Subjek
    public boolean addSubject(SubjectBean subject) {
        String sql = "INSERT INTO registered_subjects (matric_no, subject_code, subject_name) VALUES (?, ?, ?)";
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, subject.getMatricNo());
            ps.setString(2, subject.getSubjectCode());
            ps.setString(3, subject.getSubjectName());
            return ps.executeUpdate() > 0;
        } catch (Exception e) { e.printStackTrace(); return false; }
    }

    // READ: Ambil subjek mengikut matrik pelajar yang login sahaja
    public List<SubjectBean> getSubjectsByMatric(String matricNo) {
        List<SubjectBean> list = new ArrayList<>();
        String sql = "SELECT * FROM registered_subjects WHERE matric_no = ?";
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, matricNo);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    SubjectBean sb = new SubjectBean();
                    sb.setId(rs.getInt("id"));
                    sb.setMatricNo(rs.getString("matric_no"));
                    sb.setSubjectCode(rs.getString("subject_code"));
                    sb.setSubjectName(rs.getString("subject_name"));
                    list.add(sb);
                }
            }
        } catch (Exception e) { e.printStackTrace(); }
        return list;
    }

    // Ambil subjek spesifik untuk proses hantar ke form update
    public SubjectBean getSubjectById(int id) {
        String sql = "SELECT * FROM registered_subjects WHERE id = ?";
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    SubjectBean sb = new SubjectBean();
                    sb.setId(rs.getInt("id"));
                    sb.setMatricNo(rs.getString("matric_no"));
                    sb.setSubjectCode(rs.getString("subject_code"));
                    sb.setSubjectName(rs.getString("subject_name"));
                    return sb;
                }
            }
        } catch (Exception e) { e.printStackTrace(); }
        return null;
    }

    // UPDATE: Kemaskini subjek
    public boolean updateSubject(SubjectBean subject) {
        String sql = "UPDATE registered_subjects SET subject_code = ?, subject_name = ? WHERE id = ?";
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, subject.getSubjectCode());
            ps.setString(2, subject.getSubjectName());
            ps.setInt(3, subject.getId());
            return ps.executeUpdate() > 0;
        } catch (Exception e) { e.printStackTrace(); return false; }
    }

    // DELETE: Padam subjek
    public boolean deleteSubject(int id) {
        String sql = "DELETE FROM registered_subjects WHERE id = ?";
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) { e.printStackTrace(); return false; }
    }
}
