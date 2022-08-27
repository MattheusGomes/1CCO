package com.mycompany.lista01.matheus.gomes;
import java.util.Scanner;
public class Exercicio6 {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        

        Double salarioBruto, descInss, descIr, custoIda, descVt, salarioLiquido, somaDesc;
        
        System.out.println("Qual é o seu salário bruto");
        salarioBruto = ler.nextDouble();
        System.out.println("Quanto custa a condução diária só de ida da casa para o trabalho?");
        custoIda = ler.nextDouble();
        
        descInss = (salarioBruto * 10)/100; 
        descIr = (salarioBruto * 20)/100; 
        descVt = (custoIda * 2) * 22; 
        somaDesc = descInss + descIr + descVt; 
        salarioLiquido = salarioBruto - somaDesc;
        
        System.out.println(String.format("Seu salário bruto é R$%.2f, tem um total de R$%.2f em descontos"
                + " e receberá um líquido de R$%.2f", salarioBruto, somaDesc, salarioLiquido));
        
    }
}
