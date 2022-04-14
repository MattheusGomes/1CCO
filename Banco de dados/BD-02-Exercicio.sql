
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
	,(8,'Emma McKeon','Natação',7)
	,(9,'Usain Bolt','	Atletismo',8)
	,(10,'Draymond Green','Basquete',2);


-- Exibir todos os dados da tabela.
SELECT * FROM Atleta;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas.
SELECT nome, qtdMedalha FROM Atleta;
-- • Exibir apenas as modalidades e os nomes dos atletas, nessa ordem.
SELECT modalidade ,nome FROM Atleta;
-- • Exibir os dados dos atletas de uma determinada modalidade.
SELECT * FROM Atleta WHERE modalidade = 'Basquete';
-- • Exibir os dados dos atletas que tenham 3 medalhas ou mais.
SELECT * FROM Atleta WHERE qtdMedalha >= 3;
-- • Exibir os dados dos atletas cujo idAtleta seja menor do que um determinado valor.
SELECT * FROM Atleta WHERE idAtleta < 6;
-- • Exibir apenas os nomes dos atletas de uma determinada modalidade.
SELECT nome FROM Atleta WHERE modalidade = 'Natação';
-- • Exibir os dados dos atletas cujo idAtleta esteja entre um valor e outro (por exemplo, entre 3 e 7).
SELECT * FROM Atleta WHERE idAtleta BETWEEN 4 AND 9;
-- • Exibir os dados de todos os atletas cujo idAtleta seja diferente de um determinado valor.
SELECT * FROM Atleta WHERE idAtleta <> 7;
-- • Exibir os dados da tabela ordenados pela modalidade.
SELECT * FROM Atleta ORDER BY modalidade;
-- • Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
SELECT * FROM Atleta ORDER BY qtdMedalha DESC;
-- • Exibir os dados da tabela, dos atletas cujo nome contenha uma determinada letra.
SELECT * FROM Atleta WHERE nome Like '_A%';
-- • Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
SELECT * FROM Atleta WHERE nome LIKE 'M%';
-- • Exibir os dados da tabela, dos atletas cujo nome termine com uma determinada letra.
SELECT * FROM Atleta WHERE nome LIKE '%n %';
-- • Exibir os dados da tabela, dos atletas cujo nome tenha uma determinada letra como penúltima letra.
SELECT * FROM Atleta WHERE nome LIKE '%i_ %'; 
-- • Altere a quantidade de medalhas de um atleta.
UPDATE Atleta SET qtdMedalha = 28 WHERE idAtleta = 10;
-- • Altere o nome e a quantidade de medalhas de um atleta.
UPDATE Atleta SET nome = 'Emma', qtdMedalha = 59 WHERE idAtleta = 8;
-- • Exclua um atleta.
DELETE FROM Atleta WHERE idAtleta = 6;
-- • Eliminar a tabela.
DROP TABLE Atleta;

SELECT * FROM Atleta;











-- CRIAR BANCO
CREATE DATABASE Musica;

USE Musica;

-- CRIAR TABELAS
CREATE TABLE Musica(
	idMusica INT PRIMARY KEY
    ,titulo VARCHAR(40)
    ,artista VARCHAR(40)
    ,genero VARCHAR(40)

);


-- INSERT
INSERT INTO Musica 
VALUES 
	 (1,'m.A.A.d city','kendrick lamar','Rap')
	,(2,'California Love','Tupac','Rap')
    ,(3,'whats the difference','Dr. Dre','Rap')
    ,(4,'dont blame me','Taylor Swift','Pop')
    ,(5,'look what you made me do','Taylor Swift','Pop')
    ,(6,'I Knew You Were Trouble','Taylor Swift','Pop')
    ,(7,'High Hopes','Panic at the Disco','Pop rock')
	,(8,'Happier Than Ever','Billie Eilish',' Rock')
	,(9,'Billie Bossa Nova','Billie Eilish',' Alternativa');
    
-- a) Exibir todos os dados da tabela.
SELECT * FROM Musica;
-- b) Exibir apenas os títulos e os artistas das músicas.
SELECT titulo, artista FROM Musica;
-- c) Exibir apenas os gêneros e os artistas, nessa ordem.
SELECT genero, artista FROM musica;
-- d) Exibir os dados das músicas de um determinado gênero.
SELECT * FROM Musica WHERE genero = 'Rap';
-- e) Exibir os dados das músicas de um determinado artista.
SELECT * FROM Musica WHERE artista = 'Billie Eilish';
-- f) Exibir apenas os títulos das músicas de um determinado gênero.
SELECT titulo FROM Musica WHERE genero = 'Pop';
-- g) Exibir apenas os títulos e o gênero das músicas de um determinado artista.
SELECT titulo, genero FROM Musica WHERE artista = 'Taylor Swift';
-- h) Exibir os dados das músicas cujo idMusica esteja entre um valor e outro (por exemplo, entre 2 e 5).
SELECT * FROM Musica WHERE idMusica BETWEEN 4 AND 10;
-- i) Exibir os dados das músicas cujo idMusica seja menor ou igual a um valor.
SELECT * FROM Musica WHERE idMusica <= 5;
-- j) Exibir os dados das músicas cujo idMusica seja maior do que um valor.
SELECT * FROM Musica WHERE idMusica >= 8;
-- k) Exibir os dados das músicas cujo idMusica seja diferente de 2 valores, como 2 e 5, por exemplo.
SELECT * FROM Musica WHERE idMusica <> 3 AND idMusica <> 7;
-- l) Exibir os dados da tabela ordenados pelo título da música.
SELECT * FROM Musica ORDER BY titulo;
-- m) Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
SELECT * FROM Musica ORDER BY artista DESC;
-- n) Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
SELECT * FROM Musica WHERE titulo LIKE 'H%';
-- o) Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
SELECT * FROM Musica WHERE artista LIKE '%c %';
-- p) Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.
SELECT * FROM Musica WHERE genero LIKE '_o%';
-- q) Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.
SELECT * FROM Musica WHERE titulo LIKE '%t_';
-- r) Altere o gênero de uma música
UPDATE Musica SET genero = 'contry' WHERE idMusica = 6;
-- s) Altere o nome do artista e o gênero de uma música.
UPDATE Musica SET  artista = 'Adele', genero = 'Dance' WHERE idMusica = 7;
-- t) Exclua uma música da tabela.
DELETE FROM Musica WHERE idMusica = 5;
-- u) Elimine a tabela.
DROP TABLE Musica;


