CREATE DATABASE grupoPI;	


USE grupoPI;

CREATE TABLE professor (
  idprofessor INT PRIMARY KEY AUTO_INCREMENT
  ,nomeProfessor VARCHAR(100)
  ,disciplina VARCHAR(100)
  )AUTO_INCREMENT = 1000;

CREATE TABLE grupo (
  idGrupo INT PRIMARY KEY AUTO_INCREMENT
  ,nomeGrupo VARCHAR(100)
  ,descr VARCHAR(100)
  );
  
  CREATE TABLE aluno (
  ra CHAR(9) PRIMARY KEY
  ,nome VARCHAR(100)
  ,email VARCHAR(100)
  ,fkGrupo INT, FOREIGN KEY(fkGrupo) REFERENCES grupo(idGrupo)
 );
 
 CREATE TABLE apresentacao(
 fkGrupo INT, FOREIGN KEY(fkGrupo) REFERENCES grupo(idGrupo)
 ,fkprofessor INT, FOREIGN KEY(fkprofessor) REFERENCES professor(idprofessor)
 , nota DECIMAL(4,2)
 ,dataApresentacao DATE
 ,horaApresentacao TIME
 ,PRIMARY KEY(fkGrupo, fkprofessor)
 );
 
 INSERT INTO professor(nomeProfessor, disciplina)
	VALUES('Frizza', 'Algoritimos')
		,('Brandão','PI')
		,('Celia','Banco de Dados')
		,('Petry','TI');
        
INSERT INTO grupo (nomeGrupo, descr) 
		VALUES ('Data Save', 'Controle de temperatura para datacenter')
			,('Ecomiter', 'Lixeiras inteligentes');

INSERT INTO aluno(ra, nome, email, fkGrupo)
	VALUES('02221092','Matheus Garcia', 'matheus.garcia@sptech.school', 1)
		,('02221083', 'João Miziara', 'joao.miziara@sptech.school', 2)
		,('02221099', 'Pedro Henrrique', 'pedro.henrrique@sptech.school', 1)
		,('02221093', 'Victor Camargo', 'victor.camargo@sptech.school', 2);
        
INSERT INTO apresentacao (dataApresentacao,horaApresentacao, fkgrupo, fkprofessor, nota) 
			VALUES ('2022-05-22','13:00', 1, 1000, 7.00)
				,('2022-05-22','15:00', 2, 1002, 8.00)
				,('2022-05-22','15:30', 2, 1003, 9.00)
				,('2022-05-22','15:30', 2, 1001, 8.50)
				,('2022-05-22','15:30', 1, 1001, 5.50)
				,('2022-05-22','13:45', 1, 1003, 6.70);


-- 3. Exibir todos os dados de cada tabela criada, separadamente.
        
 SELECT * FROM aluno;
 SELECT * FROM professor;
 SELECT * FROM grupo;
 SELECT * FROM apresentacao;
 

-- 5. Exibir os dados dos grupos e os dados de seus respectivos alunos.

		SELECT * FROM aluno, grupo WHERE fkgrupo = idGrupo;

-- 6. Exibir os dados de um determinado grupo e os dados de seus respectivos alunos.

SELECT * FROM aluno, grupo WHERE fkgrupo = idGrupo AND nomeGrupo = 'Data Save';

-- 7. Exibir a média das notas atribuídas aos grupos, no geral.

	SELECT ROUND(AVG(nota),2) AS 'Media' FROM apresentacao;

-- 8. Exibir a nota mínima e a nota máxima que foi atribuída aos grupos, no geral.

SELECT  MIN(nota) AS 'Menor nota', MAX(nota) AS 'Maior nota' FROM grupo, apresentacao
	WHERE idGrupo = fkGrupo;

-- 9. Exibir a soma das notas dadas aos grupos, no geral

	SELECT SUM(nota) AS 'Soma notas' FROM apresentacao;


-- 10. Exibir os dados dos professores que avaliaram cada grupo, os dados dos grupos, a data e
-- o horário da apresentação.

	SELECT professor.*, grupo.nomeGrupo, dataApresentacao, horaApresentacao FROM grupo, professor, apresentacao
    WHERE idProfessor = fkProfessor AND idGrupo = fkGrupo;

-- 11. Exibir os dados dos professores que avaliaram um determinado grupo, os dados do grupo,
-- a data e o horário da apresentação.

	SELECT professor.*, grupo.nomeGrupo, dataApresentacao, horaApresentacao FROM grupo, professor, apresentacao
    WHERE idProfessor = fkProfessor AND idGrupo = fkGrupo AND nomeGrupo = 'Data Save';


-- 12. Exibir os nomes dos grupos que foram avaliados por um determinado professor.

	SELECT professor.*, grupo.nomeGrupo FROM grupo, professor, apresentacao WHERE idProfessor = fkProfessor 
    AND idGrupo = fkGrupo AND nomeProfessor = 'Brandão';


-- 13. Exibir os dados dos grupos, os dados dos alunos correspondentes, os dados dos
-- professores que avaliaram, a data e o horário da apresentação

	SELECT * FROM grupo, aluno, apresentacao, professor WHERE idProfessor = fkProfessor 
    AND idGrupo = apresentacao.fkGrupo AND idGrupo = aluno.fkGrupo;

-- 14. Exibir a quantidade de notas distintas.

	SELECT DISTINCT(COUNT(nota)) FROM apresentacao;

-- 15. Exibir a identificação do professor (pode ser o fk ou o nome), a média das notas e a soma
-- das notas atribuídas, agrupadas por professor.

	SELECT nomeProfessor, ROUND(AVG(nota),2) AS 'Media notas', SUM(nota) AS 'Soma Notas' FROM apresentacao, professor
	WHERE idProfessor = fkProfessor GROUP BY nomeProfessor;

-- 16. Exibir a identificação do grupo (pode ser o fk ou o nome), a média das notas e a soma das
-- notas atribuídas, agrupadas por grupo.

	SELECT nomeGrupo, ROUND(AVG(nota),2) AS 'Media Notas', SUM(nota) AS 'Soma Notas' FROM grupo, apresentacao 
    WHERE idGrupo = fkGrupo GROUP BY nomeGrupo;


-- 17. Exibir a identificação do professor (pode ser o fk ou o nome), a menor nota e a maior nota
-- atribuída, agrupada por professor.

	SELECT nomeProfessor, MIN(nota) AS 'Menor nota', MAX(nota) as 'Maior nota' FROM apresentacao, professor 
    WHERE idProfessor = fkProfessor GROUP BY nomeProfessor;

-- 18. Exibir a identificação do grupo (pode ser o fk ou o nome), a menor nota e a maior nota
-- atribuída, agrupada por grupo.

	SELECT nomeGrupo, MIN(nota) AS 'Menor nota', MAX(nota) AS 'Maior nota' FROM grupo, apresentacao WHERE idGrupo = fkGrupo
		GROUP BY nomeGrupo;

 
 
 
 
 
 
 
 
 