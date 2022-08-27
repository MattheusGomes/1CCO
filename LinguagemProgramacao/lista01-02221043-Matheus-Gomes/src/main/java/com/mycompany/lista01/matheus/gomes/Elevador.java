package com.mycompany.lista01.matheus.gomes;
import java.util.Scanner;
public class Elevador {
    public static void main(String[] args) {
           Scanner ler = new Scanner(System.in);
           
           Double limitePeso, peso1, peso2,peso3, pesoTotal;
           Integer limitePessoa;
           
           System.out.println("Qual é o limite de peso no elevador?");
           limitePeso = ler.nextDouble();
           System.out.println("Qual é o limite de pessoas no elevador?");
           limitePessoa = ler.nextInt();
           System.out.println("Qual é o peso da 1°  pessoa que entrou no elevador?");
           peso1 = ler.nextDouble();
           System.out.println("Qual é o peso da 2°  pessoa que entrou no elevador?");
           peso2 = ler.nextDouble();
           System.out.println("Qual é o peso da 3°  pessoa que entrou no elevador?");
           peso3 = ler.nextDouble();
           pesoTotal = peso1 + peso2 + peso3;
           
           System.out.println(String.format("Entraram 3 pessoas no elevador, no qual cabem %d pessoas."
                   + "\nO peso total no elevador é de %.1f, sendo que ele suporta %.1f", limitePessoa, pesoTotal, limitePeso));      
    }   
}
