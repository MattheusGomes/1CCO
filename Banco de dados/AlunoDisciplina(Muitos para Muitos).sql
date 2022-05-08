CREATE DATABASE AlunoDisciplina;

USE AlunoDisciplina;

CREATE TABLE aluno(
ra INT PRIMARY KEY AUTO_INCREMENT
,nomeAluno VARCHAR(100)
,bairro VARCHAR(100)
);

CREATE TABLE disciplina(
idDisciplina INT PRIMARY KEY AUTO_INCREMENT
,nomeDisciplina VARCHAR(100)
);

CREATE TABLE disciplinaAluno(
fkRa INT, FOREIGN KEY(fkRa) REFERENCES aluno(ra)
,fkDisciplina INT, FOREIGN KEY(fkDisciplina) REFERENCES disciplina(idDisciplina)
,media DECIMAL(7,2) CHECK(media >= 0 AND media <11)
,qtdFaltas INT
);

INSERT INTO aluno(nomeAluno, bairro)
		VALUES('Gabriel ','Guarulhos')
			,('Victor João','Liberdade')
			,('Bruno','Mocca');
            
INSERT INTO disciplina(nomeDisciplina)
		VALUES('Tecnologia da Informação')
			,('Algoritimos')
			,('Banco de dados');

INSERT INTO disciplinaAluno(fkra, fkDisciplina, media, qtdFaltas)
		VALUES(1,1,7, 2)
			,(1,2,9.24, 9)
			,(2,3,8.60, 31)		
            ,(2,1,9.60, 29)
			,(3,2,7, 19)
			,(3,3,6.30, 4);

-- a) Exibir os dados de cada tabela separadamente.

	SELECT * FROM aluno;
	SELECT * FROM disciplina;
	SELECT * FROM disciplinaAluno;


-- b) Exibir os dados dos alunos e das disciplinas correspondentes.

	SELECT * FROM aluno, disciplina,disciplinaAluno  WHERE ra = fkra AND idDisciplina = fkDisciplina;


-- c) Exibir os dados dos alunos e das suas disciplinas, mas somente de uma disciplina.

	SELECT * FROM aluno,disciplina, disciplinaAluno WHERE ra = fkra AND idDisciplina = fkDisciplina 
    AND nomeDisciplina = 'Tecnologia da Informação';
    
-- d) Exibir os dados de um aluno e os dados das disciplinas desse aluno.

	SELECT * FROM aluno,disciplina, disciplinaAluno WHERE ra = fkra AND idDisciplina = fkDisciplina AND nomeAluno = 'Bruno';
    

-- e) Exibir a soma das médias e a soma das quantidades de faltas.

	SELECT SUM(media) AS 'Soma Media',  SUM(qtdFaltas) AS 'Soma Faltas' FROM disciplinaAluno;

-- f) Exibir a média das médias e a média das quantidades de faltas.

	SELECT AVG(media) AS 'Media', AVG(qtdFaltas) AS 'Faltas' FROM disciplinaAluno; 

-- g) Exibir a maior e a menor média.

	SELECT MAX(media) AS 'Maior M', MIN(media) AS 'Menor M'FROM disciplinaAluno;

-- h) Exibir a maior e a menor quantidade de faltas.

	SELECT MAX(qtdFaltas) AS 'Maior', MIN(qtdFaltas) AS 'Menor' FROM disciplinaAluno;

-- i) Exibir a contagem de quantidades de faltas acima de 20.

	SELECT COUNT(qtdFaltas) AS 'Faltas acima de 20' FROM disciplinaAluno WHERE qtdFaltas > 20;  

-- j) Exibir a maior e a menor média agrupado por disciplina.

		SELECT fkDisciplina, nomeDisciplina, MAX(media) AS 'Maior Media', MIN(media) AS 'Menor M' FROM disciplina, disciplinaAluno 
        WHERE idDisciplina = fkDisciplina GROUP BY nomeDisciplina;

-- k) Exibir a maior e a menor média agrupado por aluno.

		SELECT Ra, nomeAluno, MAX(media) AS 'Maior Media', MIN(media) AS 'Menor Media'
        FROM aluno, disciplinaAluno WHERE ra = fkRa GROUP BY nomeAluno;

-- l) Exibir a maior e a menor quantidade de faltas agrupado por disciplina.

		SELECT fkDisciplina,nomeDisciplina, MAX(qtdFaltas) AS 'Falta Max', MIN(qtdFaltas) AS 'Faltas Min'
        FROM disciplina, disciplinaAluno 
        WHERE idDisciplina = fkDisciplina GROUP BY nomeDisciplina;

-- m) Exibir a maior e a menor quantidade de faltas agrupado por aluno.

	SELECT Ra, nomeAluno, MAX(qtdFaltas) AS 'MAX Faltas', MIN(qtdFaltas) AS 'Faltas Min'
    FROM aluno, disciplinaAluno WHERE ra = fkRa GROUP BY nomeAluno;


-- n) Exibir apenas as médias da tabela AlunoDisciplina.

	SELECT media FROM disciplinaAluno;

-- o) Exibir as médias distintas da tabela AlunoDisciplina.

	SELECT DISTINCT(media) FROM disciplinaAluno;

-- p) Exibir a quantidade de médias da tabela AlunoDisciplina.

	SELECT COUNT(media) FROM disciplinaAluno;


-- q) Exibir a quantidade de médias distintas da tabela AlunoDisciplina.

		SELECT COUNT(DISTINCT(media)) FROM disciplinaAluno;
        

