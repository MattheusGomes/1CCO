import mysql.connector

con = mysql.connector.connect(host='localhost',database='kash',user='root',password='matheus')

if con.is_connected():
    db_info = con.get_server_info()
    print("conectado",db_info)
    cursor = con.cursor()
    cursor.execute("Select database();")
    linha = cursor.fetchone()
    print("conectado ao banco", linha)

if con.is_connected():
    cursor.close()
    con.close()
    print("conexao encerrada")