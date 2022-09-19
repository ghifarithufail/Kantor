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
public class OOP  {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int user;
        Scanner akun = new Scanner(System.in);
        User member = new User();
        Login login = new Login();
        
        System.out.println("Selamat datang di toko kami");
        System.out.println("Apakah anda sudah memiliki akun");
        System.out.println("Jika belum silahkan klik angka 1 dan jika sudah "
                + "klik angka 2");
        user = akun.nextInt();
        
        switch (user){
            case 1 :
                member.user();
                break;
            
            case 2 :
                login.Account();
                break;
                
        }
        
    }
    
}
