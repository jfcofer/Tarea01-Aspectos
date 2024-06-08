/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ec.edu.espol.tarea01.aspectos;

/**
 *
 * @author spupi
 */   
public class CEO {

    // Attributes
    private String name;
    private int age;
    private String company;
    private int yearsInPosition;
    private double netWorth;

    // Constructor
    public CEO(String name, int age, String company, int yearsInPosition, double netWorth) {
        this.name = name;
        this.age = age;
        this.company = company;
        this.yearsInPosition = yearsInPosition;
        this.netWorth = netWorth;
    }

    // toString method to display CEO information
    @Override
    public String toString() {
        return "CEO{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", company='" + company + '\'' +
                ", yearsInPosition=" + yearsInPosition +
                ", netWorth=$" + netWorth +
                '}';
    }

}
