package com.mycompany.lista03.matheus.gomes;
import java.util.Scanner;
public class Media {
    public static void main(String[] args) {
        calcularMedia calculo = new calcularMedia();
        Scanner ler = new Scanner(System.in);
        Double nota1, nota2, resultado;
        
        System.out.println("Digite a primeira nota");
        nota1 = ler.nextDouble();
        System.out.println("Digite a segunda nota");
        nota2 = ler.nextDouble();
        
        resultado = calculo.calcularMedia(nota1, nota2);
        
        System.out.printf("O resultado da mendia entre %.2f e %.2f é de: %.2f"
                , nota1, nota2, resultado);
    }
}
