package com.mycompany.lista03.matheus.gomes.classifica.idade;
public class ClassificaIdade {
    
    void classificaIdade(Integer idade){
        
        if(idade <= 2){
            System.out.println("Bebê");
        }else if(idade > 3 && idade < 12){
            System.out.println("Criança");
        }else if(idade >= 12  && idade < 20){
            System.out.println("Adolescente");
        }else if(idade >= 20  && idade <= 30){
            System.out.println("Jovem");
        }else if(idade > 30  && idade <= 60){
            System.out.println("Adulto");
        }else if(idade > 60){
            System.out.println("Idoso");
        }
        
    }
}
