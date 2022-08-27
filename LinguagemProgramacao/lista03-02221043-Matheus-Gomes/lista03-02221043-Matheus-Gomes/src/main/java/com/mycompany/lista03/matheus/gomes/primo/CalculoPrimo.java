package com.mycompany.lista03.matheus.gomes.primo;
public class CalculoPrimo {
    
    void verificarPrimo(Integer numero){
        Integer i = 1, contador = 0;
        while(i <= numero){  
            if(numero % i == 0){
                contador++;
            }
            i++;
        }
        if(contador == 2){
            System.out.printf("O numero %d é primo", numero);
        }else{
            System.out.printf("O numero %d não é primo", numero);
        }
    }
}
