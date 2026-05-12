/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;

import java.io.Serializable;

public class Author implements Serializable{
    private String authno, name, address, city, state, zip;
    
    public Author() {} 
    public String getAuthno() { 
        return authno; 
    }
    public void setAuthno(String authno) { 
        this.authno = authno; 
    }
    public String getName() { 
        return name; 
    }
    public void setName(String name) { 
        this.name = name; 
    }
    public String getAddress() { 
        return address; 
    }
    public void setAddress(String address) { 
        this.address = address; 
    }
    public String getCity() { 
        return city; 
    }
    public void setCity(String city) { 
        this.city = city; 
    }
    public String getState() { 
        return state; 
    }
    public void setState(String state) { 
        this.state = state; 
    }
    public String getZip() { 
        return zip; 
    }
    public void setZip(String zip) { 
        this.zip = zip; 
    }
}
