package com.mycompany.lista02;
import java.util.Scanner;
public class Voto {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);       
        Integer votoM = 0, votoC = 0, votoQ = 0, voto; 
        
        for (int i = 1; i <= 10; i++) {
            System.out.println("Digite a opção que deseja votar: \n5, Para votar no sabor mussarela"
                    + "\n25, Para votar no sabor calabresa"
                    + "\n50, Para votar no sabor quatro queijos");
            voto = ler.nextInt();
           if(voto == 5){
               votoM++;
           }else if(voto == 25){
               votoC++;
           }else if(voto == 50){
               votoQ++;
           }
        }
        System.out.println(String.format("Votos de cada sabor:\nMussarela: %d \nCalabresa: %d"
                + "\nQuatro queijos: %d", votoM, votoC, votoQ));
        if(votoM > votoC && votoM > votoQ){
            System.out.println("O sabor favorito segundo a pesquisa é: Mussarela");
        }else if(votoC > votoM && votoC > votoQ){
            System.out.println("O sabor favorito segundo a pesquisa é: Calabresa");
        }else if(votoQ > votoC && votoQ > votoM){
            System.out.println("O sabor favorito segundo a pesquisa é: Quatro queijos");
        }
    }
}