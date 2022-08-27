package com.mycompany.lista02;
public class NumerosPares {
    public static void main(String[] args) {
        
       Integer i = 0;
       
       while(i <= 40){
          if(i % 2 == 0){
                System.out.println("\n"+ i);
                i++;
            }else{
              i++;
          }
       }
    }
}
