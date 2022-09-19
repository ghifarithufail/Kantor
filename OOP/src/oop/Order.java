/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package oop;

import java.util.Scanner;

/**
 *
 * @author Asus
 */
public class Order {
    int menu ;
    Scanner scan = new Scanner(System.in);
    
    public void pesan(){
        System.out.println("Masukan angka untuk memilih Barang yang "
                + "anda inginkan");
        System.out.println("1. Toyota Avanza Harga 200 Juta");
        System.out.println("2. Hyundai Avega Harga 150 Juta");
        menu = scan.nextInt();
        
        switch(menu){
            case 1:
                System.out.println("yang anda pilih adalah Toyota Avanza dengan harga 200 Juta");
                break;
            case 2:
                System.out.println("Yang anda pilih adalah Hyundai Avega Dengan harga 150 Juta");
                break;
            default :
                System.out.println("Error");
        }
    }
}
