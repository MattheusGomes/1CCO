package com.mycompany.lista02;
public class ContadorVariado {
    public static void main(String[] args) {
       for(Double numero = 0.15; numero < 5; numero+= 0.15){ 
           System.out.println(String.format("%.2f", numero));
           numero += 0.15;
       }
    }
}