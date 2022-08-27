CREATE DATABASE escola;

USE escola;

CREATE TABLE empresa(
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT
    ,nomeEmpresa VARCHAR(70)
    ,representante VARCHAR(50)
);

CREATE TABLE instEnsino(
	idEnsino INT PRIMARY KEY AUTO_INCREMENT
    ,nomeInsti VARCHAR(60)
    ,bairro VARCHAR(60)
	);


CREATE TABLE Aluno(
	ra INT PRIMARY KEY AUTO_INCREMENT
    ,nome VARCHAR(60)
    ,hobby VARCHAR(50)
    ,fkEnsino INT
    ,fkEmpresa INT
	,FOREIGN KEY (fkEnsino) references instEnsino(idEnsino)
    ,FOREIGN KEY (fkEmpresa) REFERENCES empresa(idEmpresa)
);


INSERT INTO empresa(nomeEmpresa, representante)
			VALUES('C6','Fabio')
				,('Safra','Gabriel')
				,('Accenture','Barbara')
				,('Stefanini','Alberto');
                
                
INSERT INTO instEnsino(nomeInsti, bairro)
			VALUES('Etec de Guaianazes','Guaianazes')
				,('Colegio joaquim','Vila madalena')
				,('Etec de Itaquera','Itaquera')		
                ,('Colegio objetivo','Tatuapé ')
				,('Colegio colegio santa cruz','Pinheiros');
                      
                
INSERT INTO aluno(nome, hobby,fkEnsino,fkEmpresa)
			VALUES('Matheus Gomes','Ser feliz com o GSW',1,1)
				,('Rafael raposo','Falar de linux',2,1)
				,('Gustavo antonio','Ler',4,1)
				,('Gabriel','Comprar tenis',3,4)
				,('Pedro','Jogar CS',3,2)
				,('Gustavo','Fazer Caminhadas',1,2)
				,('Fernando','Desenhar',4,2);
				
-- Exiba os dados dos alunos e das instituições correspondentes.
SELECT aluno.ra, aluno.nome, aluno.hobby, instEnsino.*  FROM aluno, instEnsino WHERE fkEnsino = idEnsino;
-- Exiba os dados dos alunos e das empresas correspondentes.

SELECT aluno.ra, aluno.nome, aluno.hobby, empresa.*  FROM aluno, empresa WHERE fkEmpresa = idEmpresa;
-- Exiba os dados dos alunos, das instituições e das empresas correspondentes.
SELECT aluno.ra, aluno.nome, aluno.hobby, empresa.*, instEnsino.* FROM aluno, empresa, instEnsino WHERE fkEnsino = idEnsino AND fkEmpresa = idEmpresa;
                
                








