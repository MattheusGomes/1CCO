package com.mycompany.lista01.matheus.gomes;
import java.util.Scanner;
public class Calculadora {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        
        Double numero1, numero2;
        Double soma, subtracao, multiplicacao, divisao;
        
        System.out.println("Digite um número:");
        numero1 = ler.nextDouble();
        System.out.println("Digite outro número:");
        numero2 = ler.nextDouble();
        
        soma = numero1 + numero2;
        subtracao = numero1 - numero2;
        divisao = numero1 / numero2;
        multiplicacao = numero1 * numero2;
        
        System.out.println(String.format("Resultado da soma: %.1f \nResultado da subtração: %.1f "
                + "\nResultado da multiplicação: %.1f \nResultado da divisão: %.1f", soma, subtracao, multiplicacao, divisao));
    }   
}
