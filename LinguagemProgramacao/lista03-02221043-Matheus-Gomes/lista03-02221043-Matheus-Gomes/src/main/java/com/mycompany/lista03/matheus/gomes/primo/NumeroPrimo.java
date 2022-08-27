package com.mycompany.lista03.matheus.gomes.primo;
import java.util.Scanner;
public class NumeroPrimo {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        CalculoPrimo primo = new CalculoPrimo();
        Integer i = 1, numeroPrimo;
        String verificar;
        
        
        
        while(i >= 1){
            System.out.println("\nDeseja Verificar se um numero é primo?\nDigite S para sim e N para não");
            verificar = ler.nextLine();
            
            if(verificar.equalsIgnoreCase("s")){
                System.out.println("Digite o numero que deseja verificar se é primo:");
                numeroPrimo = ler.nextInt();
                
                if(numeroPrimo > 0){
                    primo.verificarPrimo(numeroPrimo);
                    i++;
                }else{
                    System.out.println("O numero digitado é negativo!! \nPrograma encerrado.");
                    i = 0;
                }
            }else if(verificar.equalsIgnoreCase("n")){
                i = 0;
                System.out.println("Programa Encerrado!!");     
            }
        }
    }
}
