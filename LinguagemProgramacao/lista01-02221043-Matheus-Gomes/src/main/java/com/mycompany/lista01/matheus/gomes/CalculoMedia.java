package com.mycompany.lista01.matheus.gomes;
import java.util.Scanner;
public class CalculoMedia {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        
        Double nota1, nota2, media;
        String nome;
        
        System.out.println("Entre com o seu nome");
        nome = ler.nextLine();
        System.out.println("Digite a 1° nota");
        nota1 = ler.nextDouble();
        System.out.println("Digite a 2° nota");
        nota2 = ler.nextDouble();
        media = (nota1 + nota2)/ 2;
       
        System.out.println(String.format("Olá, %s. Sua média foi de %.1f", nome, media));
        
    }   
}
