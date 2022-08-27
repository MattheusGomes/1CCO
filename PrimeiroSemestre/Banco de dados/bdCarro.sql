CREATE DATABASE Carro;

USE carro;

CREATE TABLE dono(
	idDono INT PRIMARY KEY AUTO_INCREMENT
    ,nomeDono VARCHAR(100)
    ,dataNasc DATE 
	,salarioDono VARCHAR(10) 
);

CREATE TABLE carro(
	idCarro INT PRIMARY KEY AUTO_INCREMENT
    ,modeloCarro VARCHAR(100)
	,marcaCarro VARCHAR(100)
    ,placaCarro CHAR(8)
    ,anoFabri DATE
    ,fkDono int , FOREIGN KEY(fkDono) REFERENCES dono(idDono)
)AUTO_INCREMENT = 101;



INSERT INTO dono(nomeDono, dataNasc, salarioDono)
			VALUES('Alberto Almeida','1973-12-23','13500' )
				,('Julia Soares','1987-01-13','15800')
				,('Pamela Garcia','1990-07-03','19500' );
		
INSERT INTO carro(modeloCarro, marcaCarro,placaCarro,anoFabri,fkDono)
			VALUES('Cabriolet Turbo S','Porsche','abc 1233','2021-04-14',1)
				,('Sián Roadster','lamborghini','bca 2345','2022-08-11',2)
				,('Mercedes-Benz CLA','Mercedes-Benz','cda 5445','2020-11-10',2)
				,('Mercedes-Benz GLE Coupe','Mercedes-Benz','acd 2615','2021-12-14',3)
				,('BMW 320i GP','BMW','dab 3013','2022-01-17',2);
                
                
			
                
-- 	 Exibir todos os dados de cada tabela criada, separadamente.
         
          SELECT * FROM dono;
          SELECT * FROM carro;
-- - Exibir os dados dos donos ordenados pela data de nascimento.

		SELECT * FROM dono ORDER BY dataNasc;

-- - Exibir os dados dos carros ordenados pelo ano de fabricação, em ordem decrescente.

		SELECT * FROM carro ORDER BY anoFabri DESC;

-- - Exibir os dados dos carros cuja placa termine com um determinado dígito numérico.

		SELECT * FROM carro WHERE placaCarro LIKE '%5';

-- - Exibir os carros que são de uma determinada marca.

	SELECT * FROM carro WHERE marcaCarro = 'Mercedes-Benz';

-- - Exibir a descrição da tabela carro.

		DESC carro;
    
    
-- - Aumentar a coluna modelo da tabela carro.

	ALTER TABLE carro MODIFY modeloCarro VARCHAR(160);

-- - Exibir novamente a descrição da tabela carro para ver se alterou.
	
	DESC carro;

-- - Alterar o salário de algum dono. Exibir novamente a tabela de dono.

	UPDATE dono SET salarioDono = '15000' WHERE idDono = 2;


-- - Exibir os dados dos carros e dos seus respectivos donos.

	SELECT * FROM carro, dono WHERE  fkDono = idDono;


-- - Exibir os dados dos carros e dos seus respectivos donos, mas somente de um determinado
-- dono (informando o nome do dono).

	
	SELECT * FROM carro, dono WHERE  fkDono = idDono AND nomeDono = 'Pamela Garcia';
		

-- - Exibir os dados dos carros e dos seus respectivos donos, mas somente de uma
-- determinada marca de carro.

		SELECT * FROM carro, dono WHERE  fkDono = idDono AND marcaCarro = 'lamborghini';
		

-- - Exibir os dados dos carros e dos seus respectivos dono, mas somente dos carros cuja
-- placa comece uma determinada letra.

	SELECT * FROM carro, dono WHERE  fkDono = idDono AND placaCarro LIKE 'b%';
			

-- - Excluir as tabelas.

	DROP TABLE carro;
	DROP TABLE dono;
    



				






