package com.mycompany.lista02;
import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;
public class Loteria {  
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        Integer numero, numeroSorteio, contador = 0;
        
        System.out.println("Digite um numero");
        numero = ler.nextInt();
        
        do {
        numeroSorteio = ThreadLocalRandom.current().nextInt(0,10);
        System.out.println("Numero sortiado: "+numeroSorteio);
        contador++;
        } while (numeroSorteio != numero);
        
        if(contador <= 3){
            System.out.println("Numero de sorteios: "+contador);
            System.out.println("Você é MUITO sortudo");
        }else if(contador > 3 && contador <= 10){
            System.out.println("Numero de sorteios: "+contador);
            System.out.println("Você é sortudo");
        }else{
            System.out.println("Numero de sorteios: "+contador);
            System.out.println("É melhor você parar de apostar e ir trabalhar");
        }   
    }
    
}
