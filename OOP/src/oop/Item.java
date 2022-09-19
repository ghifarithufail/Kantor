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
public class Item {
    
    public void barang(){
        System.out.println("================================");
        System.out.println("=========== ADD ITEM ===========");
        System.out.println("================================");
        String[] items = {"Hyundai","BMW"};
        
        System.out.println("ITEM : ");
        printitems(items);
        
        items=addWords(items);
        System.out.println("NEW ITEM: ");
        printitems(items);
    }
    
    // prints out words
    public static void printitems(String[]words){
        for(int i=0; i<words.length; i++){
            System.out.println((i+1)+ ") "+words[i]);
        }
    }
    
    // print item
    public static String[] addWords(String[]words){
        String[]moreWords = new String[words.length+1];
        
        for(int i = 0; i<words.length; i++){
            moreWords[i]=words[i];
        }
        Scanner in = new Scanner(System.in);
        
        System.out.println("ADD ITEM: ");
        moreWords[moreWords.length-1]=in.nextLine();
        
        return moreWords;
    }
}
