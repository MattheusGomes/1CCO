package com.mycompany.lista01.matheus.gomes;
import java.util.Scanner;
public class Exercicio1 {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        
        String login;
        String senha;
        Integer vezesBloqueio;
        
        System.out.println("Entre com o seu login:");
        login = ler.nextLine();
        
        System.out.println("Entre com sua senha:");
        senha = ler.nextLine();
        
        System.out.println("Quantas vezes você aceita errar a senha "
                + "antes de ser bloqueado?");
        vezesBloqueio = ler.nextInt();
        
        
        
        System.out.println(String.format("Seu login é %s \nsua senha é %s."
                + "\nVocê tem %d tentativas antes de ser bloqueado", login, senha, vezesBloqueio));
    }
}
