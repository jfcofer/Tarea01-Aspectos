/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ec.edu.espol.tarea01.aspectos;

/**
 *
 * @author spupi
 */
public class President {

        // Attributes
    private String name;
    private int age;
    private String country;
    private int termStartYear;
    private int termEndYear;


    // Constructor
    public President(String name, int age, String country, int termStartYear, int termEndYear) {
        this.name = name;
        this.age = age;
        this.country = country;
        this.termStartYear = termStartYear;
        this.termEndYear = termEndYear;
    }


    @Override
    public String toString() {
            return "President [name=" + name + ", age=" + age + ", country=" + country + ", termStartYear=" + termStartYear
                            + ", termEndYear=" + termEndYear + "]";
    }
    
}
