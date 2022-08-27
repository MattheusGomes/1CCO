package com.mycompany.lista01.matheus.gomes;
import java.util.Scanner;
public class Idade {
        public static void main(String[] args) {
            Scanner ler = new Scanner(System.in)
                    
            String nome;
            Integer anoNasc, calculoAno;
            
            System.out.println("Digite o seu nome");
            nome = ler.nextLine();
            System.out.println(String.format("Olá, %s! Qual o ano de seu nascimento?", nome));
            anoNasc = ler.nextInt();
            calculoAno = 2030 - anoNasc;
            
            System.out.println(String.format("Em 2030 você terá %d anos", calculoAno));
            
    }
    
}
