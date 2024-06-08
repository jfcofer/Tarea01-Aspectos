/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package ec.edu.espol.tarea01.aspectos;

/**
 *
 * @author spupi
 */
public class Tarea01Aspectos {

    public static void main(String[] args) {
        System.out.println("Hello World!");
        
        President p1 = new President("Macron", 40, "France", 2024, 2028);
        System.out.println(p1);
        President p2 = new President("Julia", 40, "Mexico", 2021, 2030);
        System.out.println(p2);
    }
}
