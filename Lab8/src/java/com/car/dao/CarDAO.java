/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.car.dao;

import com.car.bean.CarBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CarDAO {
    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        // Sesuaikan password root mysql Yan jika ada
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/carshop", "root", "");
    }

    // CREATE: Tambah kereta baru
    public boolean addCar(CarBean car) {
        String sql = "INSERT INTO CarPricelist (Brand, Model, Cyclinder, Price) VALUES (?, ?, ?, ?)";
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, car.getBrand());
            ps.setString(2, car.getModel());
            ps.setInt(3, car.getCyclinder());
            ps.setDouble(4, car.getPrice());
            return ps.executeUpdate() > 0;
        } catch (Exception e) { e.printStackTrace(); return false; }
    }

    // READ: Ambil semua data kereta
    public List<CarBean> getAllCars() {
        List<CarBean> list = new ArrayList<>();
        String sql = "SELECT * FROM CarPricelist";
        try (Connection conn = getConnection(); 
             PreparedStatement ps = conn.prepareStatement(sql); 
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                CarBean car = new CarBean();
                car.setCarId(rs.getInt("Car_id"));
                car.setBrand(rs.getString("Brand"));
                car.setModel(rs.getString("Model"));
                car.setCyclinder(rs.getInt("Cyclinder"));
                car.setPrice(rs.getDouble("Price"));
                list.add(car);
            }
        } catch (Exception e) { e.printStackTrace(); }
        return list;
    }

    // Ambil data kereta spesifik mengikut ID (untuk Form Edit)
    public CarBean getCarById(int carId) {
        String sql = "SELECT * FROM CarPricelist WHERE Car_id = ?";
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, carId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    CarBean car = new CarBean();
                    car.setCarId(rs.getInt("Car_id"));
                    car.setBrand(rs.getString("Brand"));
                    car.setModel(rs.getString("Model"));
                    car.setCyclinder(rs.getInt("Cyclinder"));
                    car.setPrice(rs.getDouble("Price"));
                    return car;
                }
            }
        } catch (Exception e) { e.printStackTrace(); }
        return null;
    }

    // UPDATE: Kemaskini data kereta
    public boolean updateCar(CarBean car) {
        String sql = "UPDATE CarPricelist SET Brand = ?, Model = ?, Cyclinder = ?, Price = ? WHERE Car_id = ?";
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, car.getBrand());
            ps.setString(2, car.getModel());
            ps.setInt(3, car.getCyclinder());
            ps.setDouble(4, car.getPrice());
            ps.setInt(5, car.getCarId());
            return ps.executeUpdate() > 0;
        } catch (Exception e) { e.printStackTrace(); return false; }
    }

    // DELETE: Padam data kereta
    public boolean deleteCar(int carId) {
        String sql = "DELETE FROM CarPricelist WHERE Car_id = ?";
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, carId);
            return ps.executeUpdate() > 0;
        } catch (Exception e) { e.printStackTrace(); return false; }
    }
}