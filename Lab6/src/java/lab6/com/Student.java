/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;
import java.io.Serializable;

public class Student implements Serializable {
    private String stuno, name, program;

    public Student() {}

    public String getStuno() { return stuno; }
 
    public void setStuno(String stuno) {
        if (stuno.matches("^[A-Z]{2}\\d+$")) {
            this.stuno = stuno;
        } else {
            this.stuno = "INVALID";
        }
    }
    
    public String getName() { 
        return name; 
    }
    public void setName(String name) { 
        this.name = name; 
    }

    public String getProgram() { 
        return program; 
    }
    public void setProgram(String program) { 
        this.program = program; 
    }
    
}
