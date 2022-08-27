package com.mycompany.lista02;
import java.util.Scanner;
public class Login {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        
        String nome, senha;
        String login = "admin";
        String password = "#SPtech2022";
      
       
        do {
            
            System.out.println("Digite o login");
            nome = ler.nextLine();
            System.out.println("Digite a sua Senha");
            senha = ler.nextLine();
            System.out.println("Login e/ou senha inválidos");
        }
        while (!nome.equals(login) && !senha.equals(password));
            System.out.println("Login realizado com sucesso");
    }
}
