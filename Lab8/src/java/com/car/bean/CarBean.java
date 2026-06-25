/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.car.bean;
import java.io.Serializable;

public class CarBean implements Serializable {
    private int carId;
    private String brand;
    private String model;
    private int cyclinder;
    private double price;

    public CarBean() {}

    public int getCarId() { 
        return carId; 
    }
    public void setCarId(int carId) { 
        this.carId = carId; 
    }

    public String getBrand() { 
        return brand; 
    }
    public void setBrand(String brand) { 
        this.brand = brand; 
    }

    public String getModel() { 
        return model; 
    }
    public void setModel(String model) { 
        this.model = model; 
    }

    public int getCyclinder() { 
        return cyclinder; 
    }
    public void setCyclinder(int cyclinder) { 
        this.cyclinder = cyclinder; 
    }

    public double getPrice() { 
        return price; 
    }
    public void setPrice(double price) { 
        this.price = price; 
    }
}
