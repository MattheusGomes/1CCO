-- a) Criar um banco de dados chamado PraticaJogador.

CREATE DATABASE PraticaJogador;

-- b) Selecionar esse banco de dados.
USE PraticaJogador;


-- c) Criar as tabelas correspondentes à sua modelagem.
CREATE TABLE timeF(
	idTimeF INT PRIMARY KEY AUTO_INCREMENT
    ,nomeTime VARCHAR(100)
	,tecnico VARCHAR(100)
    ,dataF DATE
);

CREATE TABLE jogador(
	idJogador INT PRIMARY KEY AUTO_INCREMENT
    ,nome VARCHAR(100)
    ,posicao VARCHAR(100)
    ,salario DECIMAL(7,2) CHECK (salario > 0)
    ,fkTimeF INT, FOREIGN KEY(fkTimeF) REFERENCES timeF(idTimeF)
	,fkConselheiro INT , FOREIGN KEY(fkConselheiro) REFERENCES jogador(idJogador)
);

CREATE TABLE seguidor(
	fkJogador INT, FOREIGN KEY(fkJogador) REFERENCES jogador(idJogador)
    ,idSeguidor INT 
    ,PRIMARY KEY(fkJogador,idSeguidor)
    ,nomeS VARCHAR(100)
    ,sexo CHAR(1) CHECK (sexo = 'm' OR sexo = 'f' OR sexo = 'n')
);


-- d) Inserir dados nas tabelas, de forma que exista mais de uma posição de atuação diferente,
-- e que exista algum time com mais de um jogador cadastrado.

	INSERT INTO timeF(nomeTime,tecnico,dataF)
			VALUES('São Paulo FC', 'Abel Joaquim','1930-04-20')
				,('Palmeiras FC', 'Joaquim Nogueira','1910-09-26')
				,('Corinthians FC', 'João Braga','1956-08-13');
                
                
	INSERT INTO jogador(nome,posicao, salario,fkTimeF,fkConselheiro)
			VALUES('Gabriel Victor','Goleiro',61700 ,1,null)
				,('João Victor','Atacante',11700 ,1,1)
				,('Carlos Junior','Ala direita',61700 ,3,null)
				,('João Victor','Ala esquerda',91700 ,2,null)
				,('Paulo Souza','Meio campo',12700 ,3,3);
                
                
	INSERT INTO seguidor(fkJogador, idSeguidor,nomeS, sexo)
			VALUES(2,1, 'Paulo', 'm' )
				,(2,2, 'Enzo', 'm')
                ,(3,1, 'Lizza', 'f');


-- e) Exibir todos os dados de cada tabela criada, separadamente.

	SELECT * FROM timeF;
    SELECT * FROM jogador;
    SELECT * FROM seguidor;
	
-- f) Fazer os acertos da chave estrangeira, caso não tenha feito no momento da criação.


-- g) Exibir apenas os nomes dos times e dos técnicos de todos os times cujo nome começa com
-- uma determinada letra.

SELECT * FROM timeF WHERE tecnico LIKE 'J%';

-- h) Exibir todos os dados dos jogadores em ordem decrescente pela posição.

		SELECT * FROM jogador ORDER BY posicao;

-- i) Exibir os dados dos jogadores que jogam em uma determinada posição.

		SELECT * FROM jogador WHERE posicao = 'atacante';


-- j) Exibir os dados dos times em que o técnico tenha a 2a letra de trás para frente igual a uma
-- determinada letra.

	SELECT * FROM timeF WHERE tecnico LIKE '%i_';


-- k) Exibir os dados dos times em ordem crescente pelo nome do técnico.

	SELECT * FROM timeF ORDER BY tecnico DESC;

-- l) Exibir os dados dos times em ordem decrescente pela data de fundação do time.

		SELECT * FROM timeF ORDER BY dataF DESC;

-- m) Alterar a posição de algum jogador
		UPDATE jogador SET posicao = 'Goleiro' WHERE idJogador = 2;
		SELECT * FROM jogador;

-- n) Exibir os dados dos times e dos seus respectivos jogadores.
		SELECT * FROM timeF, jogador WHERE idTimeF = fkTimeF;

-- o) Exibir os dados de um determinado time (informar o nome do time na consulta) e dos seus
-- respectivos jogadores.

		SELECT * FROM timeF, jogador WHERE nomeTime = 'São Paulo FC' AND idTimeF = fkTImeF;


-- p) Exibir os dados dos jogadores e os dados dos seus respectivos conselheiros.

		
		SELECT * FROM jogador AS jogador, jogador AS conselheiro WHERE jogador.fkConselheiro = conselheiro.idJogador;



-- q) Exibir os dados dos jogadores, os dados dos seus respectivos conselheiros e os dados dos
-- seus times.

	SELECT * FROM jogador AS jogador, jogador AS conselheiro, timeF WHERE jogador.fkConselheiro = conselheiro.idJogador 
    AND  timeF.idTimeF = jogador.fkTimeF;



-- r) Exibir os dados de um jogador (informar o nome do jogador), os dados do seu conselheiro
-- e do seu time.

	SELECT * FROM jogador AS jogador, jogador AS conselheiro, timeF WHERE jogador.fkConselheiro = conselheiro.idJogador 
    AND  timeF.idTimeF = jogador.fkTimeF AND jogador.nome = 'Paulo Souza';


-- s) Exibir os dados dos jogadores e de seus seguidores.

		SELECT * FROM jogador, seguidor WHERE idJogador = fkJogador;

-- t) Exibir os dados de apenas um jogador (informar o nome do jogador) e os dados de seus
-- seguidores.


		SELECT * FROM jogador, seguidor WHERE idJogador = fkJogador AND nome = 'Carlos Junior';
	
-- u) Excluir algum jogador.

		DELETE FROM jogador WHERE idJogador = 5;
		
		SELECT * FROM jogador;


-- v) Excluir as tabelas.

		DROP TABLE seguidor;
        DROP TABLE jogador;
        DROP TABLE timeF;







