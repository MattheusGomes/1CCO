package com.mycompany.lista02;
import java.util.Scanner;
public class Tabuada {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        
        Integer digNumero, resultado;
        
        System.out.println("Digite um numero");
        digNumero = ler.nextInt();
        
        
        for (int i = 0; i <= 10; i++) {
            
            resultado = digNumero * i;
            System.out.printf(String.format("\n %d X %d = %d", digNumero, i, resultado ));
        }
    }
}

