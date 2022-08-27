
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

-- Essa tabela tinha os campos: idMusica, titulo (tamanho 40), artista (tamanho 40), genero
-- (tamanho 40), sendo que idMusica é a chave primária da tabela.


-- No mesmo banco de dados dessa tabela, crie a tabela Album, com os campos: idAlbum
-- (chave primária), nome, gravadora.

		CREATE TABLE Album(
        
        idAlbum INT PRIMARY KEY AUTO_INCREMENT
        ,nome VARCHAR(60)
        ,gravadora VARCHAR(60)
        );



-- Insira dados na tabela Album.

		INSERT INTO album(nome, gravadora)
			VALUES('Good Kid, M.A.A.D City','Top Dawg')
				,('The N.W.A Legacy','Death Row')
                ,('2001','Aftermath Entertainment')
				,('Reputation','Big Machine')
                ,('Red','Universal Republic Records')
                ,('Pray for the Wicked','Fueled by Ramen')
                ,('Happier Than Ever','Darkroom');

-- Na tabela Musica, adicione uma coluna chamada fkAlbum, e configure essa coluna para que
-- ela seja uma chave estrangeira para a coluna idAlbum, da tabela Album.

	ALTER TABLE Musica ADD fkAlbum int;
	ALTER TABLE Musica ADD FOREIGN KEY(fkAlbum) REFERENCES album(idAlbum);



-- Coloque valores nessa coluna, de forma que cada música inserida na tabela Musica tenha um
-- álbum correspondente.


		
	UPDATE Musica SET fkAlbum = 1 WHERE idMusica = 1;
	UPDATE Musica SET fkAlbum = 2 WHERE idMusica = 2;
	UPDATE Musica SET fkAlbum = 3 WHERE idMusica = 3;
	UPDATE Musica SET fkAlbum = 4 WHERE idMusica = 4;
	UPDATE Musica SET fkAlbum = 4 WHERE idMusica = 5;
	UPDATE Musica SET fkAlbum = 5 WHERE idMusica = 6;
	UPDATE Musica SET fkAlbum = 6 WHERE idMusica = 7;
	UPDATE Musica SET fkAlbum = 7 WHERE idMusica = 8;
	UPDATE Musica SET fkAlbum = 7 WHERE idMusica = 9;

	select * from musica;
	select * from album;

-- Exiba os dados das músicas e dos álbuns correspondentes.

		select * from musica, album where fkAlbum = idAlbum;
        
        
-- Exiba os dados das músicas e dos álbuns, mas somente de um determinado álbum
-- (especifique o nome do álbum na consulta).


	SELECT * FROM musica, album WHERE fkAlbum = idAlbum AND Album.nome = 'Reputation';

-- Exiba os dados das músicas e dos álbuns, mas somente de uma determinada gravadora.


	SELECT * FROM musica, album WHERE fkAlbum = idAlbum AND gravadora = 'Darkroom';



