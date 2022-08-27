package com.mycompany.lista02;
import java.util.Scanner;
public class Acumulador {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        
        Integer lerNumero;
        Integer soma = 0;
        
         do{
            System.out.println("Digite um numero");
            lerNumero = ler.nextInt();
            soma += lerNumero;
        } 
        while(lerNumero != 0);
        System.out.println("A soma dos numeros é:"+ soma);
    }
}
