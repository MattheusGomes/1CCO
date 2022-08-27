package com.mycompany.lista03.matheus.gomes.peso;
import java.util.Scanner;

public class VerificarPeso {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        PesoIdeal peso = new PesoIdeal();
        Double altura;
        String sexo, verificar;
        Integer i = 1;
        
        while(i >= 1){
            System.out.println("\nDeseja Verificar um peso?\nPara escolher digite S para sim ou N para não");
            verificar = ler.nextLine();
            
            if(verificar.equalsIgnoreCase("s")){
                System.out.println(" Digite o sexo da pessoa: \nDigite M para Masculino\nDigite F para feminino");
                sexo = ler.nextLine();
                System.out.println("Digite a altura:");
                altura = ler.nextDouble();
                peso.calculaPesoIdeal(sexo, altura);
                i++;
            }else if(verificar.equalsIgnoreCase("n")){
                i = 0;
                System.out.println("Programa Encerrado!!");     
            }
        }
    }
}
