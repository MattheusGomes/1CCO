package com.mycompany.lista01.matheus.gomes;
import java.util.Scanner;
public class Exercicio2 {
     public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        
        Integer totalFilhos,filhos0a3,filhos4a16,filhos17a18;
        Double  valorFilho1,valorFilho2,valorFilho3, valorBolsa;
        
         System.out.println("Você possui quantos filhos de 0 a 3");
         filhos0a3 = ler.nextInt();
         
         System.out.println("Você possui quantos filhos de 4 a 16");
         filhos4a16 = ler.nextInt();
         
         System.out.println("Você possui quantos filhos de 17 a 18");
         filhos17a18 = ler.nextInt();
        
         valorFilho1 = filhos0a3 * 25.12;
         valorFilho2 = filhos4a16 * 15.88;
         valorFilho3 = filhos17a18 * 12.44;
         
         totalFilhos = filhos0a3 + filhos4a16 + filhos17a18;
         valorBolsa = valorFilho1 + valorFilho2 + valorFilho3;
         
         System.out.println(String.format("Você tem um total de %s filhos "
                 + "\ne vai receber R$%.2f de bolsa", 
                 totalFilhos, valorBolsa));
    }
}
