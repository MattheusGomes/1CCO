
-- CRIAR BANCO
CREATE DATABASE Atleta;

USE Atleta;

-- CRIAR TABELAS
CREATE TABLE Atleta(
  idAtleta INT PRIMARY KEY
  ,nome VARCHAR(40)
  ,modalidade VARCHAR(40)
  ,qtdMedalha INT
);

-- INSERT
INSERT INTO Atleta 
VALUES 
	 (1,'Janeth Arcain','Basquete',2)
	,(2,'Hortência Marcari','Basquete',1)
	,(3,'Maria Paula Gonçalves','Basquete',1)
	,(4,'LeBron James','Basquete',2)
	,(5,'Kevin Durant','Basquete',3)
	,(6,'Carmelo Anthony','Basquete',3)
	,(7,'Michael Phelps','Natação',28)
	,(8,'EMMa McKeon','NaTação',7)
	,(9,'USAIN Bolt','	AtlEtismo',8)
	,(10,'DRAYMond Green','BasqUete',2);


-- Exibir todos os dados da tabela.
SELECT * FROM ATLETa;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas.
SELECT NOME, qtdMEdalha FROM ATLETa;
-- • Exibir apenas as modalidades e os nomes dos atletas, nessa ordem.
SELECT mODALIDade ,nome FROM AtlETA;
-- • Exibir os dados dos atletas de uma determinada modalidade.
SELECT * FROM ATlEtA WHERE modaLIDADe = 'BasquetE';
-- • Exibir os dados dos atletas que tenham 3 medalhas ou mais.
SELECT * FROM ATLEtA WHERE qtdMedALHA >= 3;
-- • EXIbIr os dados dos atletas cujo idAtleta seja menor do que um determinado valor.
SELECT * FROM ATLETA WHERE idAtleta < 6;
-- • ExibIr apenas os nomes dos atletas de uma determinada modalidade.
SELECT nome FROM ATLETa WHERE MOdalidade = 'Natação';
-- • Exibir os dados dos atletas cujo idAtleta esteja entre um valor e outro (por exemplo, entre 3 e 7).
SELECT * FROM Atleta WHERE IdATLEta BETWEEN 4 AND 9;
-- • EXIBIr oS DaDos de todos os atletas cujo idAtleta seja diferente de um determinado valor.
SELECT * FROM Atleta WHERE IdAtLETA <> 7;
-- • Exibir os dADoS da tabela ordenados pela modalidade.
SELECT * FROM Atleta ORDER BY mOdALIDade;
-- • EXIbIR os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
SELECT * FROM Atleta ORDER BY QTdMeDALHa DESC;
-- • EXIbir os dados DA tabela, dos atletas cujo nome contenha uma determinada letra.
SELECT * FROM Atleta WHERE nOME LIkE '_A%';
-- • EXIBIr os dADOS da tabela, dos atletas cujo nome comece com uma determinada letra.
SELECT * FROM Atleta WHERE nomE LIKE 'M%';
-- • ExiBIR Os dadoS DA tabela, dos atletas cujo nome termine com uma determinada letra.
SELECT * FROM Atleta WHERE nome LIKE '%N %';
-- • ExiBIR Os dadoS DA tabela, dos atletas cujo nome tenha uma determinada letra como penúltima letra.
SELECT * FROM Atleta WHERE nome LIKE '%I_ %'; 
-- • AlteRE A quantiDADE de medalhas de um atleta.
UPDATE Atleta SET qtdMedalha = 28 WHERE IDAtleta = 10;
-- • Altere o NoME E a quantidaDe De medalhas de um atleta.
UPDATE Atleta SET nome = 'Emma', qtdMedALHA = 59 WHERE IdAtletA = 8;
-- • Exclua um aTLeTA.
DELETE FROM ATleta WHERE idAtleta = 6;
-- • ELImINAR a tabelA.
DROP TABLE ATlEta;

SELECT * FROM Atleta;




-- NO Mesmo banco DE DAdOs DESsa tabela, crie a tabela Pais (Não precisa por acento no nome
-- da tabela). Essa tabela representa o país de origem do atleta e terá os campos: idPais (int,
-- chave primária), nome, capital.


	CREATE TABLE pais(
		idPais INT PRIMARY KEY AUTO_INCREMENT 
        ,nome VARCHAR(60)
        ,CAPITAL VARCHAR(50)    
    );

-- INsira dadoS na tabeLA PAIS.

	INSERT INTO pais(nome, capital)
		VALUES('BrasiL', 'BrASILia')
			,('Estados UnidOS', 'WashingtoN')
            ,('Australia ','CamBerra')
            ,('JamaiCA ', 'KingstoN');

-- Na tabela Atleta, adicione uMa coluna chAmada fkPais, e configure essa coluna para ser uma
-- chave estrangeira para a coluna idPais, da tabela Pais.

	ALTER TABLE Atleta ADD fkPais int;
	ALTER TABLE ATLEtA  ADD FOREIGN KEY(fkPaiS) REFERENCES PAIS(idPais);




-- COlOQUE valorEs NESSA COLuna, De formA que cada atleta inserido na tabela Atleta tenha um
-- país de origem correspondente.

	
	UPDATE Atleta SET fkPais = 1 WHERE idAtleta IN (1,2,3);
	UPDATE Atleta SET FkPAIS = 2 WHERE IDATLETA IN (4,5,7,10);
	UPDATE Atleta SET FKPAis = 3 WHERE IDATLETA = 8;
	UPDATE AtletA SET fkPaiS = 4 WHERE Atleta = 9;


-- EXiba os DADOs dos AtLeTAS E Dos paíseS Correspondentes.

	SELECT * FROM Atleta;

-- Exiba os dados dos atleTAS E dO PAÍS, mas somente de um determinado país (especifique o
-- nome do país na consulta).


SELECT * FROM Atleta, pais WHERE fkPais = idPais AND PAIS.nOmE = 'Brasil';










