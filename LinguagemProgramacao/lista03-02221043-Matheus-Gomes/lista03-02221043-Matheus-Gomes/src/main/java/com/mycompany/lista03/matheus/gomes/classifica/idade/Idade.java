package com.mycompany.lista03.matheus.gomes.classifica.idade;
import java.util.Scanner;
public class Idade {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        ClassificaIdade classificar = new ClassificaIdade();
        Integer idade;
        
        System.out.println("Digite a sua idade:");
        idade = ler.nextInt();
        
        classificar.classificaIdade(idade);
    }
}
