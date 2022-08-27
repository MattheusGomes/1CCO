import os
import json

def func_dados():
  os.system("clear")
  lista_imc = []
  soma_imc = 0
  soma_idade = 0
  soma_altura = 0
  soma_peso = 0
  registro = 0
  with open('dados.txt') as dados_txt:
    for contador in dados_txt:
        dados_json = json.loads(contador)
        lista_imc.append(dados_json)

  for contador_lista in lista_imc:
    registro += 1
    soma_peso += float(contador_lista["peso"])    
    soma_idade += int(contador_lista["idade"])    
    soma_imc += float(contador_lista["imc"])    
    soma_altura += float(contador_lista["altura"])   

  media_peso = soma_peso / registro
  media_idade = soma_idade / registro
  media_imc = soma_imc / registro
  media_altura = soma_altura / registro
  media_altura = '{:.2f}'.format(media_altura)
  media_peso = '{:.2f}'.format(media_peso)
  media_imc = '{:.2f}'.format(media_imc)
  print("-----"*10)
  print("Atualmente o total de registros é de: ",registro)
  print("A altura media é de: ",media_altura)
  print("O peso medio é de: ",media_peso)
  print("A idade media é de: ",media_idade)
  print("O IMC medio é de: ",media_imc)
  while True:
        print('------------'*10)
        select_menu= input('\n Deseja filtrar alguma informação? (s/n)')
        select_menu.lower
        if(select_menu == 's'):
          soma_imc = 0
          soma_peso = 0
          soma_altura = 0
          soma_idade = 0
          registro = 0
          print(' 1. Filtro por faixa de idade.')
          print(' 2. Filtro por faixa de IMC. ')
          print(' 0. Sair')
          select_filtro= input('\n Escolha uma opção: ')

          if (select_filtro == '1'):
              min_idade = int(input('Digite a idade minima'))
              max_idade = int(input('Digite a idade maxima'))
              for contador_lista in lista_imc:
                  idade = int(contador_lista["idade"])    
                  if idade >= min_idade and idade <= max_idade:
                    registro += 1
                    soma_peso += float(contador_lista["peso"])    
                    soma_imc += float(contador_lista["imc"])    
                    soma_altura += float(contador_lista["altura"])  
                    soma_idade += int(contador_lista["idade"])      
              media_peso = soma_peso / registro
              media_idade = soma_idade / registro
              media_imc = soma_imc / registro
              media_altura = soma_altura / registro
              media_altura = '{:.2f}'.format(media_altura)
              media_peso = '{:.2f}'.format(media_peso)
              media_imc = '{:.2f}'.format(media_imc)
              print("-----"*10)
              print("Entre ",min_idade, "anos e ",max_idade,"anos \n")
              print("O total de registros foi de: ",registro)
              print("A altura media foi de: ",media_altura)
              print("O peso medio é de: ",media_peso)
              print("O IMC medio é de: ",media_imc)

          elif (select_filtro == '2'):
            print("-----"*10)
            print(' 1. Abaixo do peso normal.\n 2. Peso normal. ')
            print(' 3. Sobrepeso. \n 4. Obeso.')
            print(' 5. Obesidade mórbida. \n 0. Sair ')
            peso = input('\nSelecione a faixa de peso que deseja ver')

            if peso == '1':
                for contador_lista in lista_imc:
                  imc = float(contador_lista["imc"])    
                  if imc < 18.5:
                    registro += 1
                    soma_imc += float(contador_lista["imc"])   
                    soma_idade += int(contador_lista["idade"])   
                media_imc = soma_imc / registro
                media_idade = soma_idade / registro
                media_imc = '{:.2f}'.format(media_imc)   
                print('Foram registrados', registro, ' pessoas abaixo do peso normal.')
                print('A idade media é:', media_idade)
                print("O IMC medio é de: ",media_imc)
            elif peso == '2':
                for contador_lista in lista_imc:
                  imc = float(contador_lista["imc"])    
                  if imc > 18.5 and imc < 25:
                    registro += 1
                    soma_imc += float(contador_lista["imc"])   
                    soma_idade += int(contador_lista["idade"])   
                media_imc = soma_imc / registro
                media_idade = soma_idade / registro
                media_imc = '{:.2f}'.format(media_imc)   
                print('Foram registrados', registro, ' pessoas abaixo do peso normal.')
                print('A idade media é:', media_idade)
                print("O IMC medio é de: ",media_imc)
            elif peso == '3':
                for contador_lista in lista_imc:
                  imc = float(contador_lista["imc"])    
                  if imc > 25 and imc < 30:
                    registro += 1
                    soma_imc += float(contador_lista["imc"])   
                    soma_idade += int(contador_lista["idade"])   
                media_imc = soma_imc / registro
                media_idade = soma_idade / registro
                media_imc = '{:.2f}'.format(media_imc)   
                print('Foram registradas', registro, ' pessoas com sobrepeso.')
                print('A idade media é:', media_idade)
                print("O IMC medio é de: ",media_imc)
            elif peso == '4':
                for contador_lista in lista_imc:
                  imc = float(contador_lista["imc"])    
                  if imc >= 30 and imc < 40:
                    registro += 1
                    soma_imc += float(contador_lista["imc"])   
                    soma_idade += int(contador_lista["idade"])   
                media_imc = soma_imc / registro
                media_idade = soma_idade / registro
                media_imc = '{:.2f}'.format(media_imc)   
                print('Foram registradas', registro, ' pessoas com obesidade.')
                print('A idade media é:', media_idade)
                print("O IMC medio é de: ",media_imc)
            elif peso == '5':
                for contador_lista in lista_imc:
                  imc = float(contador_lista["imc"])    
                  if imc > 40:
                    registro += 1
                    soma_imc += float(contador_lista["imc"])   
                    soma_idade += int(contador_lista["idade"])   
                media_imc = soma_imc / registro
                media_idade = soma_idade / registro
                media_imc = '{:.2f}'.format(media_imc)   
                print('Foram registradas', registro, ' pessoas com obesidade mórbida.')
                print('A idade media é:', media_idade)
                print("O IMC medio é de: ",media_imc)
            elif peso == '0':
                break
          else:
              break
        elif(select_menu == 'n'):
            break
        else:
            print('\n  Opção Invalida.')
      
def fuc_calcular():
    contador = 1
    while (contador >= 1):
        nome = input('Qual é o seu nome?')
        idade = int(input('Qual é a sua idade'))
        peso = float(input('Qual é o seu peso em kg?'))
        altura = float(input('Quanto você mede em m?'))

        imc = peso/(altura ** 2)
        if(imc) < 18.5:
            diagnostico = ('Abaixo do peso normal')
        elif(imc >= 18.5 and imc < 25):
            diagnostico = ('Peso normal')
        elif(imc >= 25 and imc < 30):
            diagnostico = ('Sobrepeso')
        elif(imc >= 30 and imc < 40):
            diagnostico = ('Obeso')
        elif(imc >= 40):
            diagnostico = ('Obesidade mórbida')
            
        imc = '{:.2f}'.format(imc)
        print('=========+====='*8)
        print('Nome: ',nome,'\nIdade: ',idade,'\nPeso: ', peso, '\naltura: ',altura, 
        '\nIMC: ',imc, '\nDiagnostico:', diagnostico)
        print('=========+====='*8)

        escreve_idade = str(idade)
        escreve_peso = str(peso)
        escreve_altura = str(altura)
        escreve_imc = str(imc)
        linhas = ['{','"peso":',escreve_peso,',','"altura":',escreve_altura,',','"idade":',escreve_idade,',','"imc":',imc,'}\n']
        with open('dados.txt', 'a') as f:
            f.writelines(linhas)

        continuar = input("Deseja adicionar um novo IMC? (s/n)")
        continuar.lower
        if(continuar == 's'):
            contador = contador + 1
        elif(continuar == 'n'):
            break
        else:
            print('Comando Invalido')
            break

def menu_principal():
    os.system('clear')
    while True:
        os.system("clear")
        print('------------'*10)
        print('\n ===========[Calculadora de IMC]=============')
        print('------------'*10)
        print(' 1. Calcular IMC.')
        print(' 2. Ver dados. ')
        print(' 0. Sair')
        select_menu= input('\n Escolha uma opção: ')

        if select_menu == '1':
            fuc_calcular()
        elif select_menu == '2':
            func_dados()
        elif select_menu =='0':
            print('Calculadora Encerrada.')
            break
        else:
            print('\n  Opção Invalida.')
menu_principal()