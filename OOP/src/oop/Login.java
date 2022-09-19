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
public class Login {
    Scanner input = new Scanner(System.in);
    Item item = new Item();
    Order order = new Order();
   
    String user, pass;
    int pilih;
    
    public void Account(){
        System.out.println("============================");
        System.out.println("=========== LOGIN ==========");
        System.out.println("============================");
        System.out.println("Masukan Username Anda");
        user = input.nextLine();
        System.out.println("Masukan Password anda");
        pass = input.nextLine();
        
        if(user.equals("admin") && pass.equals("123"))
            item.barang();
        else if(user.equals("ghifari") && pass.equals("123"))
            order.pesan();
        else
            System.out.println("Username atau password salah.");
        }
        
    }
