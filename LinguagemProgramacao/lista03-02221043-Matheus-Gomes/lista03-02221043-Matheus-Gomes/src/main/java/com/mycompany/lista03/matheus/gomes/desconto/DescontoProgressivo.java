package com.mycompany.lista03.matheus.gomes.desconto;
import java.util.Scanner;
public class DescontoProgressivo {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        Calcular calculo = new Calcular();
        Double valorProduto, produtoDesconto;
        Integer qtdProduto;
        String notaFiscal;
        
        System.out.println("Bem-vindo ao sistema de desconto progressivo!");
        System.out.println("\nDigite o valor do produto");
        valorProduto = ler.nextDouble();
        System.out.println("Digite a quantidade de produtos");
        qtdProduto = ler.nextInt();
        produtoDesconto = calculo.calcularDesconto(valorProduto, qtdProduto);
        notaFiscal = calculo.exibirNotaFiscal(qtdProduto, valorProduto, produtoDesconto);
        
        System.out.println(notaFiscal);
        
    }
  }
