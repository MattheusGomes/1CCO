CREATE DATABASE gasto;

USE gasto;


CREATE TABLE Pessoa (
  idPessoa INT PRIMARY KEY AUTO_INCREMENT
  ,nome VARCHAR(100)
  ,dtNasc DATE
  ,profissao VARCHAR(100)
  ,idioma VARCHAR(100) 
  );
  
  CREATE TABLE gasto(
  idGasto INT PRIMARY KEY AUTO_INCREMENT
  ,dataG DATE
  ,valor DECIMAL(6,2) CHECK( valor > 0)
  ,descG VARCHAR(100)
  ,fkPessoa INT, FOREIGN KEY(fkPessoa) REFERENCES pessoa(idPessoa)
  
  );
  
--   Insira dados nas tabelas.

INSERT INTO pessoa(nome, dtNasc, profissao, idioma)
			VALUES('Pedro Gustavo','2000-04-24','Garçom','Portugues')
				,('Amanda Garcia','2001-03-13','Cantora','Espanhol')
				,('Fernando Gomez','2003-02-05','Entregador','Portugues')
				,('Barbara williams','2001-03-02', 'Escritora','Ingles')
				,('Pricilia Valeria','2002-11-11','Designer','Italiano');
                
INSERT INTO gasto(dataG, valor, descG, fkPessoa)
		VALUES('2022-01-13',16.50 , 'Balas de café',3)
			,('2022-02-07' ,3500 , 'Celular',4)
			,('2021-07-03' ,800 , 'Colar',2)
			,('2022-04-23' ,12 , 'Chocolates',4)
			,('2020-12-13' ,242 , 'Ingresso de Show',1)
			,('2022-04-01' ,210 , 'Mouse',5);
			




-- • Exiba os dados de cada tabela individualmente.

	SELECT * FROM pessoa;
    SELECT * FROM gasto;



-- • Exiba os dados da tabela Pessoa, mas filtrando por algum dado da tabela (por
-- exemplo, as pessoas de alguma profissão, etc).

	SELECT * FROM pessoa WHERE dtNasc LIKE '2000%';


-- • Exiba os dados da tabela Gasto, de forma que os gastos mais recentes apareçam
-- primeiro.

	SELECT * FROM gasto ORDER BY dataG DESC;




-- • Exiba os dados das pessoas e dos seus gastos correspondentes.

	SELECT Pessoa.*,  gasto.dataG, gasto.valor, gasto.descG	 FROM pessoa, gasto WHERE idPessoa = fkPessoa;


-- • Exiba os dados de uma determinada pessoa e dos seus gastos correspondentes.

	SELECT Pessoa.*,  gasto.dataG, gasto.valor, gasto.descG	 FROM pessoa, gasto WHERE idPessoa = fkPessoa AND idPessoa = 4;


-- • Exiba os dados das pessoas e dos seus gastos correspondentes, mas somente de uma determinada data.


	SELECT Pessoa.*,  gasto.dataG, gasto.valor, gasto.descG	 FROM pessoa, gasto WHERE idPessoa = fkPessoa AND dataG LIKE '2022-02-07';


-- • Atualize valores já inseridos na tabela.

	UPDATE gasto SET valor = 1500 WHERE idGasto = 3;
    
    SELECT * FROM gasto;



-- • Exclua um ou mais registros de alguma tabela.

	DELETE FROM gasto WHERE idGasto = 2;
    
    SELECT * FROM gasto;
    








