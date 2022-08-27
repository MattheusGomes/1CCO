package com.mycompany.lista03.matheus.gomes.peso;
public class PesoIdeal {
    void calculaPesoIdeal(String sexo, Double altura){
        Double peso;
        
        if(sexo.equalsIgnoreCase("M")){
          peso = (72.7 * altura) - 58;
            System.out.printf("\nO peso ideal para homens com %.2fM de altura é de: %.2fkg", altura, peso);
        }else if(sexo.equalsIgnoreCase("F")){
          peso = (62.7 * altura) - 44.7;
            System.out.printf("\nO peso ideal para mulheres com %.2fM de altura é de: %.2fkg", altura, peso);
        }
    }
}
