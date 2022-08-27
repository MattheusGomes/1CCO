import psutil
import os
import mysql.connector
from mysql.connector import Error
from datetime import datetime
import time


#disco
dadosDiscoTotal = psutil.disk_usage('C:\\')[0]
dadosDiscoUsado = psutil.disk_usage('C:\\')[1]
discoPorcentagem = psutil.disk_usage('C:\\')[3]
leituras = psutil.disk_io_counters()[0]
discoUsadoString = str(dadosDiscoUsado)[0:3]
discoTotalString = str(dadosDiscoTotal)[0:3]
    
#CPU
qtdNucleoFisico = psutil.cpu_count(logical=False)
porcentCpu = psutil.cpu_percent(interval= 10)
porcentCpuString = str(porcentCpu)

#Memoria
memoriaTotal = psutil.virtual_memory().total
dadosMemoriaUsada = psutil.virtual_memory()[1]
memoriaPorcent = psutil.virtual_memory().percent
memoriaSwapPercent = psutil.swap_memory()[3]

for i in range(3):
    memoriaTotal = memoriaTotal / 1024
    dadosMemoriaUsada = dadosMemoriaUsada / 1024

memoriaUsada = round(dadosMemoriaUsada,2)
memoriaTotal = round(memoriaTotal,2)
memoriaUsadaString = str(memoriaUsada)
memoriaTotalString = str(memoriaTotal)

#horario
horario = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
horarioString = str(horario)

def cpu():
    print('--=--'*20)
    print('Quantidade de cpus:', qtdNucleoFisico)
    print('Porcentagem usada:', porcentCpu,'%')
    print('--=--'*20)
def disco():
    print('--=--'*20)
    print('Disco usado: ', discoUsadoString, 'GB/',dadosDiscoTotal+' GB')
    print('Porcentagem usada: ',discoPorcentagem,'%')
    print('Leituras Feitas: ',str(leituras)[0:3]+'ms')
    print('--=--'*20)
def memoriaRam():
    print('--=--'*20)
    print('Memoria Ram usada: ', memoriaUsadaString, 'GB/', memoriaTotalString,'GB')
    print('Ram porcentagem: ',memoriaPorcent,'%')
    print('--=--'*20)


def salvar():
    os.system ('cls')
    
    insertDados = """ INSERT INTO Registros(consumoCPU, dataHorario, consumoDisco, consumoRAM)
            VALUES("""
    dados =  porcentCpuString+ ',\''+ horarioString + '\',' + discoUsadoString+ ',' + memoriaUsadaString + ')'
    sql = insertDados + dados
    print(sql)
    try:
        con = mysql.connector.connect(host='localhost',database='kash',user='root',password='matheus')
        insert = sql
        cursor = con.cursor()
        cursor.execute(insert)
        con.commit()
        print(cursor.rowcount, "Registros inseridos com sucesso!")
        cursor.close()

    except Error as erro:
        print("Falha ao conectar ao banco de dados".format(erro))
    finally:
        if(con.is_connected()):
            con.close()
            print("Conexao com o banco finalizada")    

    time.sleep(60)
salvar()