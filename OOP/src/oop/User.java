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
public class User {
   Scanner scan = new Scanner(System.in);
   String nama, umur, alamat, no_telpon, JK, user, pass; 
   Login login = new Login();

public void user(){
    System.out.println("=================================================================");
    System.out.println("============== Selamat datang di program kami ===================");
    System.out.println("=================================================================");
    System.out.println("Masukan nama anda");
    nama = scan.next();
    
    System.out.println("Masukan umur anda");
    umur = scan.next();
    
    System.out.println("Masukan Username");
    user = scan.next();
    
    System.out.println("Masukan password");
    pass = scan.next();
    
    System.out.println("Masukan Jenis Kelamin anda");
    JK = scan.next();
    
    System.out.println("Masukan No telpon anda");
    no_telpon = scan.next();
    
    login.Account();
    }
}
