package com.mycompany.lista03.matheus.gomes.classe.social;
import java.util.Scanner;
public class ClassesSociais {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        Calculo cal = new Calculo();
        Double renda, qtdSalario;
        String classe;
        
        System.out.println("Digite a sua renda");
        renda = ler.nextDouble();
        
        qtdSalario = cal.calculoSalario(renda);
        classe = cal.classeSocial(qtdSalario);
        
        System.out.printf("Você recebe %.2f salarios minimos"
                + "\nSua classe social é %s", qtdSalario, classe);
        
    }
}
