CREATE DATABASE escolaIdioma;


USE escolaIdioma;

CREATE TABLE aluno(
	ra INT PRIMARY KEY AUTO_INCREMENT
   ,nome VARCHAR(100)
	,bairro VARCHAR(100)
)AUTO_INCREMENT = 1000;


CREATE TABLE curso(
	idCurso INT PRIMARY KEY AUTO_INCREMENT
    ,nome VARCHAR(100)
    ,cordenador VARCHAR(100)
);

CREATE TABLE alunoCurso(
    fkRa INT, FOREIGN KEY(fkRa) REFERENCES aluno(ra)
    ,fkCurso INT, FOREIGN KEY(fkCurso) REFERENCES curso(idCurso)
    ,dataInicio DATE 
    ,nivel CHAR(2)
    ,media DECIMAL(7,2) CHECK(media >= 0 AND media <=10)
	,PRIMARY KEY(fkRa, fkCurso, dataInicio)
);

INSERT INTO aluno(nome, bairro)
		VALUES('Maria','Saude')
			,('João','Consolaçaõ');
            
INSERT INTO curso(nome, cordenador)
		VALUES('Ingles','Beth')
			,('Espanhol','Juan');
            
INSERT INTO alunoCurso(fkRa, fkCurso, dataInicio, nivel, media)
            VALUES(1000, 1, '2015-02-01', 'A1', 9.0)
				,(1000, 2, '2018-02-01', 'A3', 7.0)
				,(1001, 1, '2019-02-01', 'B1', 7.5)
				,(1001, 2, '2020-02-01', 'I2', 8.0);
            
-- - Exibir os dados de cada tabela separadamente.

            SELECT * FROM aluno;
            SELECT * FROM curso;
            SELECT * FROM alunoCurso;

-- - Exibir os dados dos alunos e dos cursos correspondentes.

	SELECT * FROM aluno,curso, alunoCurso WHERE ra = fkRa AND idCurso = fkCurso;


-- - Exibir os dados dos alunos, mas somente de um curso.

	SELECT * FROM aluno,curso, alunoCurso WHERE ra = fkRa AND idCurso = fkCurso AND curso.nome = 'Ingles';


-- - Exibir os dados de um aluno e os dados dos cursos desse aluno.

	
	SELECT * FROM aluno,curso, alunoCurso WHERE ra = fkRa AND idCurso = fkCurso AND aluno.nome = 'Maria';


-- - Exibir a soma das médias e a média das médias.

	SELECT ROUND(avg(media),2) AS Media ,sum(media) AS SomaMedia FROM alunoCurso;


-- - Exibir a maior e a menor média.

	SELECT MAX(media) AS 'Maior Media' FROM alunoCurso;
	SELECT MIN(media) AS 'Menor Media'FROM alunoCurso;


-- - Exibir a quantidade de médias acima de 6,0.
	SELECT COUNT(media) AS qtdMedia FROM alunoCurso WHERE media > 8;

-- - Exibir a maior e a menor média agrupado por curso.

	SELECT curso.nome, MAX(media) AS 'Maior Media', MIN(media) AS 'Menor Media' FROM curso, alunoCurso 
    WHERE idCurso = fkCurso GROUP BY fkCurso;
	
	
-- - Exibir a maior e a menor média agrupado por aluno.


	SELECT nome, MAX(media) AS 'Maior Media', MIN(media) AS 'Menor Media' FROM aluno, alunoCurso 
    WHERE ra = fkRa GROUP BY fkRa;
	

-- - Exibir apenas as médias da tabela AlunoCurso.

	SELECT media FROM alunoCurso;

-- - Exibir as médias distintas da tabela AlunoCurso.

	SELECT DISTINCT media AS 'Medias diferentes'FROM alunoCurso;

-- - Exibir a quantidade de médias da tabela AlunoCurso.
	
	SELECT COUNT(media) AS 'QTD Medias' FROM alunoCurso;
    
-- - Exibir a quantidade de médias distintas da tabela AlunoCurso.
            
	SELECT COUNT(DISTINCT(media)) AS 'Numero de Medias Diferentes' FROM alunoCurso;

