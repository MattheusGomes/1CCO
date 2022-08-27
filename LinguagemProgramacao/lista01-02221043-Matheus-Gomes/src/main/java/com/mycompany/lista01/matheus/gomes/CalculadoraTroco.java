package com.mycompany.lista01.matheus.gomes;
import java.util.Scanner;
public class CalculadoraTroco {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        Double valorProduto, valorTotal, valorPago, valorTroco;
        Integer qtdVenda;
        
        System.out.println("Qual é o valor do produto vendido?");
        valorProduto = ler.nextDouble();
        System.out.println("Qual foi a quantidade vendida?");
        qtdVenda = ler.nextInt();
        System.out.println("Qual foi o valor pago pelo cliente?");
        valorPago = ler.nextDouble();
        
        valorTotal = valorProduto * qtdVenda;
        valorTroco = valorPago - valorTotal;
        System.out.println(String.format("Seu troco será de R$%.2f", valorTroco));
    }
}
