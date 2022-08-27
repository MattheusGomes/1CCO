package com.mycompany.lista02;
import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;

public class Sorteio {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        Integer numeroDigito, numeroSorteio;
        Integer primeiroSorteio = 0, par = 0, impar = 0;
        
        System.out.println("Digite um numero ente 0 e 100");
        numeroDigito = ler.nextInt();
        
        for(int i = 1; i <= 200; i++){
            numeroSorteio = ThreadLocalRandom.current().nextInt(0,100);
            
            if(numeroSorteio == numeroDigito && primeiroSorteio == 0){
                primeiroSorteio = i;
            }
            if(numeroSorteio %2 == 0){
                par++;
            }else{
                impar++;
            }    
        }
        if(primeiroSorteio != 0){
            System.out.println("O número foi sorteado pela 1° vez na posição:"+ primeiroSorteio);
        }else{
            System.out.println("O número não foi sorteado!!");
        }
        System.out.println(String.format("Foram números %d numeros pares "
                + "\n Foram sorteados %d números ímpares", par, impar));
    }
}
