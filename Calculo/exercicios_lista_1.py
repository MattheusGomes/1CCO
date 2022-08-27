# Calcule o valor das expressões
perguntas = []

# 1 
valor = 2 ** 3
valor = round(valor,2)
perguntas.append(valor)

# 2
valor = (-2)**3
valor = round(valor,2)
perguntas.append(valor)

#3
valor = 1 ** 0
valor = round(valor,2)
perguntas.append(valor)

#4 
valor =(-1) ** 0
valor = round(valor,2)
perguntas.append(valor)

#5
valor = 2  ** 0
valor = round(valor,2)
perguntas.append(valor)

#6 
valor = (2/5) ** 3
valor = round(valor,2)
perguntas.append(valor)

#7
valor = 3 ** -2
valor = round(valor,2)
perguntas.append(valor)

#8
valor = (1/2) ** -3
valor = round(valor,2)
perguntas.append(valor)

# 9
valor = ((-1) ** 3) ** 4
valor = round(valor,2)
perguntas.append(valor)

#10 
valor = (0.5) ** 3
valor = round(valor,2)
perguntas.append(valor)

#11
valor = (0.25) ** 4
valor = round(valor,2)
perguntas.append(valor)

#12
valor = 0  ** 4
valor = round(valor,2)
perguntas.append(valor)

#13
valor = 1 + (0.41) ** 2
valor = round(valor,2)
perguntas.append(valor)

#14
valor = 1/4 + 5  ** 2 - 2 ** -4
valor = round(valor,2)
perguntas.append(valor)

#15
valor = 2  ** -3 + (-4) ** -5
valor = round(valor,2)
perguntas.append(valor)

#16
valor = (4/5 - 1/2 + 1) ** -2 + (1/ (1 + 3 ** 2 - (4-5) ** -2))
valor = round(valor,2)
perguntas.append(valor)


qtdExer = int(input("Digite quantos exercicios você deseja ver o resultado\n "))

if(qtdExer <= 16):
        
    for numero in range(qtdExer):

        verPergunta = int(input("\nDigite o numero da questão que você deseja ver? "))
        verPergunta -= 1

        if(verPergunta + 1 == 0):
            print("Pergunta invalida")
        else:
            if(verPergunta < 16):
                print("\nO resultado é:",perguntas[verPergunta])
            if(verPergunta >= 16):
                print(perguntas)
                print("\n Para ver a resposta de um exercicio especifico digite um numero entre 1 e 16")
        
else:
    print("Valor invalido, entre com um numero entre 1 e 16")
