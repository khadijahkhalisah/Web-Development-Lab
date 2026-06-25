/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.bean;
import java.io.Serializable;

public class StudentBean implements Serializable {
    private String matricNo;
    private String password;
    private String name;

    public StudentBean() {}

    public String getMatricNo() { 
        return matricNo; 
    }
    public void setMatricNo(String matricNo) { 
        this.matricNo = matricNo; 
    }

    public String getPassword() { 
        return password; 
    }
    public void setPassword(String password) { 
        this.password = password; 
    }

    public String getName() { 
        return name; 
    }
    public void setName(String name) { 
        this.name = name; 
    }
}