package com.mycompany.lista01.matheus.gomes;
import java.util.Scanner;

public class Exercicio3 {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        Integer minutosAquecimento, minutosAerobico, minutoMusculacao, minTotal;
        Integer caloriaAquecimento, caloriaAerobico, caloriaMusculacao,totalCaloria;
 
        System.out.println("Vocẽ fez quantos minutos de aquecimento");
        minutosAquecimento = ler.nextInt();
        System.out.println("Vocẽ fez quantos minutos de exercícios aeróbicos");
        minutosAerobico = ler.nextInt();
        System.out.println("Vocẽ fez quantos minutos de exercícios de musculação");
        minutoMusculacao = ler.nextInt();
        
        caloriaAquecimento = minutosAquecimento * 12;
        caloriaAerobico = minutosAerobico * 20;
        caloriaMusculacao = minutoMusculacao * 25;
        
        minTotal = minutoMusculacao + minutosAerobico + minutosAquecimento;
        totalCaloria = caloriaAerobico + caloriaAquecimento + caloriaMusculacao;
        
        System.out.println(String.format("Olá, Jorge. "
                + "\nVocê fez um total de %d minutos de exercícios"
                + "\ne perdeu cerca de %d calorias", minTotal, totalCaloria));
    }
}