
DROP DATABASE bdfaculdade;

CREATE DATABASE bdfaculdade;

USE bdfaculdade;


-- a) Criar as tabelas equivalentes à modelagem.

CREATE TABLE projeto(
	idProjeto INT PRIMARY KEY AUTO_INCREMENT
	,nome VARCHAR(100)
	,descr VARCHAR(100)
);

CREATE TABLE aluno(

raAluno INT PRIMARY KEY AUTO_INCREMENT
,nome VARCHAR(100)
,telefone CHAR(11) UNIQUE
,fkProjeto INT, FOREIGN KEY(fkProjeto) REFERENCES projeto(idProjeto) 
,fkRepresentante INT
,FOREIGN KEY(fkRepresentante) REFERENCES aluno(raAluno)
);


CREATE TABLE acompanhante(
idAcompanhante INT PRIMARY KEY AUTO_INCREMENT
,nome VARCHAR(100)
,relacao VARCHAR(100)
,fkdAluno INT, FOREIGN KEY (fkdAluno) REFERENCES aluno(raAluno)
);

-- b) Inserir dados nas tabelas.

INSERT INTO projeto(nome,descr)
		VALUES('biblioteca Digital','Digitalização de livros')
			,('aplicativo de streaming','um aplicativo que fazr streaming de musicas');

INSERT INTO aluno(nome, telefone, fkProjeto, fkRepresentante)
		VALUE('Barbara Freitas','11123456789',1,null)
			,('Gabriela Julia','11234567891',2,1)
			,('João gabriel','11345678912',1,1)
			,('Victor Araujo','11456789123',2,1);
		

INSERT INTO acompanhante(nome, relacao, fkdAluno)
		VALUES('Maria victoria','Mãe',1)
			,('Victoria hamilton','Irmã',2);


	
-- c) Exibir todos os dados de cada tabela criada, separadamente.

	SELECT * FROM aluno;
    SELECT * FROM projeto;
    SELECT * FROM acompanhante;


-- d) Fazer os acertos da chave estrangeira, caso não tenha feito no momento da criação.

	

-- e) Exibir os dados dos alunos e dos projetos correspondentes.

	SELECT * FROM aluno, projeto WHERE idProjeto = fkProjeto;

-- f) Exibir os dados dos alunos e dos seus acompanhantes.

		
	SELECT * FROM aluno, acompanhante WHERE idAluno = fkdAluno;


-- g) Exibir os dados dos alunos e dos seus representantes.

SELECT * FROM aluno AS aluno, aluno AS representante WHERE aluno.fkRepresentante = representante.raAluno;
    

-- h) Exibir os dados dos alunos e dos projetos correspondentes, mas somente de um
-- determinado projeto (indicar o nome do projeto na consulta).

	SELECT * FROM aluno, projeto WHERE fkProjeto = idProjeto AND projeto.nome = "biblioteca Digital";


-- i) Exibir os dados dos alunos, dos projetos correspondentes e dos seus acompanhantes

	SELECT * FROM aluno, projeto, acompanhante WHERE fkProjeto = idProjeto AND idAluno = fkdAluno;

