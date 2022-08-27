package com.mycompany.lista03.matheus.gomes.classe.social;
public class Calculo {
    Double calculoSalario(Double renda){
        Double qtSalario = renda / 1045.00;
        return qtSalario;    
    }
    
    String classeSocial(Double qtdSalario){
        String classe = "";
       
        if(qtdSalario > 20){
            classe = "A";
        }else if(qtdSalario >10 && qtdSalario <=20){
            classe = "B";
        }else if(qtdSalario > 4 && qtdSalario <=10){
            classe = "C";
        }else if(qtdSalario > 2 && qtdSalario <= 4){
            classe = "D";
        }else if(qtdSalario <= 2){
            classe = "E";
        }
        return classe;
    }
}
