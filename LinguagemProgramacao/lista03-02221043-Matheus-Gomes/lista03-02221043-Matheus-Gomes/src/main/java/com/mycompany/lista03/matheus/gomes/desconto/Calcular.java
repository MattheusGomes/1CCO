package com.mycompany.lista03.matheus.gomes.desconto;
public class Calcular {
    
    Double calcularDesconto(Double valor, Integer qtdProduto){
        Double valorTotal = valor * qtdProduto;
        Double valorDesconto = valor * ((valor * qtdProduto)/100);
        Double descProduto = valorTotal - valorDesconto;
        
        return descProduto;
        
    }
    String exibirNotaFiscal(Integer qtdProduto, Double valor, Double valorDesconto){
        
        String nota = "---".repeat(30)
                + "\nValor do produto: R$"+ valor + "\nQuantidade:"+ qtdProduto + 
                "\n"+"---".repeat(30) +
                "\nValor com desconto: R$"+valorDesconto;
        return nota;
        
        
    }
}
