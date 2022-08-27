package com.mycompany.lista02;
import java.util.Scanner;
public class Potencia {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        Integer base, expoente, valorPotencia;
        
        System.out.println("Digite o valor base");
        base = ler.nextInt();
        System.out.println("Digite o expoente");
        expoente = ler.nextInt();
        valorPotencia = base;
        
        for (int i = 1; i < expoente; i++) {
            valorPotencia *= base;
        }
        System.out.println(valorPotencia);
        
    }
}
