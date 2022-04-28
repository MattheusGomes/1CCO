	DROP DATABASE PraticaFuncionario;
    
    CREATE DATABASE PraticaFuncionario;
    USE PraticaFuncionario;
    
CREATE TABLE Setor (
  idSetor INT PRIMARY KEY AUTO_INCREMENT
  ,nomeSetor VARCHAR(100) 
  ,andarSetor INT 
  );
  
  
CREATE TABLE funcionario(
idFuncionario INT PRIMARY KEY AUTO_INCREMENT
,nomeFuncionario VARCHAR(100)
,telefoneFuncionario VARCHAR(11)
,salario DECIMAL(9,2) CHECK( salario > 0)
,fkSetor INT, FOREIGN KEY(fkSetor) REFERENCES Setor(idSetor)
,fkCordenador INT, FOREIGN KEY(fkCordenador) REFERENCES funcionario(idFuncionario)
);

CREATE TABLE acompanhante(
fkFuncionario INT, FOREIGN KEY(fkFuncionario) REFERENCES funcionario(idFuncionario)
,idAcompanhante INT
,nomeAcompanhante VARCHAR(100)
,relacaoAcompanhante VARCHAR(100)
,dataNasc DATE
,PRIMARY KEY(fkFuncionario,idAcompanhante)
);


INSERT INTO Setor(nomeSetor, andarSetor)
	VALUES('ADM', 9)
		,('Recepção', 12);

INSERT INTO funcionario(nomeFuncionario,telefoneFuncionario,salario,fkSetor,fkCordenador)
		VALUES('Matheus','12345678912',1500,1, null)	
			,('Pedro','52345678412',9500,1, 1)
			,('Gabriel','72344671412',7500,2, null)
			,('João','72245171714',9900,2, 2);
            

INSERT INTO acompanhante(fkFuncionario, idAcompanhante, nomeAcompanhante, relacaoAcompanhante, dataNasc)
			VALUES(1,1, 'Lia', 'Filha', '1990-08-23')
				,(4,1, 'Julia', 'esposa', '1990-03-13');
                
                
-- Exibir todos os dados de cada tabela criada, separadamente.

	SELECT * FROM Setor;
	SELECT * FROM funcionario;
 	SELECT * FROM acompanhante;

-- f) Fazer os acertos da chave estrangeira, caso não tenha feito no momento da criação.

	

-- g) Exibir os dados dos setores e dos seus respectivos funcionários.

	SELECT * FROM setor, funcionario WHERE idSetor = fkSetor;

-- h) Exibir os dados de um determinado setor(informar o nome do setor na consulta) e dos seus
-- respectivos funcionários.

	SELECT * FROM setor, funcionario WHERE idSetor = fkSetor AND nomeSetor = 'ADM';

-- i) Exibir os dados dos funcionários e de seus acompanhantes.
	
	SELECT * FROM funcionario, acompanhante WHERE fkFuncionario = idFuncionario;

-- j) Exibir os dados de apenas um funcionário (informar o nome do funcionário) e os dados de
-- seus acompanhantes.

	
    SELECT * FROM funcionario, acompanhante WHERE fkFuncionario = idFuncionario AND nomeFuncionario = "Matheus";


-- k) Exibir os dados dos funcionários, dos setores em que trabalham e dos seus
-- acompanhantes.

	   SELECT * FROM setor, funcionario, acompanhante WHERE fkFuncionario = idFuncionario AND idSetor = fkSetor;

-- l) Exibir os dados dos funcionários e dos seus coordenadores.
	
    SELECT * FROM funcionario AS funcionario, funcionario AS cordenador WHERE funcionario.fkCordenador = cordenador.idFuncionario;

-- m) Exibir os dados dos funcionários e dos seus coordenadores, mas somente de um
-- coordenador.

 SELECT * FROM funcionario AS funcionario, funcionario AS cordenador WHERE funcionario.fkCordenador = cordenador.idFuncionario AND funcionario.fkCordenador = 1;

-- n) Exibir os dados dos setores, dos funcionários e dos seus coordenadores.

 SELECT * FROM setor, funcionario AS funcionario, funcionario AS cordenador WHERE funcionario.fkCordenador = cordenador.idFuncionario AND idSetor = funcionario.fkSetor;

-- o) Exibir os dados dos funcionários, dos seus coordenadores e dos acompanhantes dos
-- funcionários.


 SELECT * FROM acompanhante, funcionario AS funcionario, funcionario AS cordenador WHERE funcionario.fkCordenador = cordenador.idFuncionario AND acompanhante.fkFuncionario = funcionario.idFuncionario;



-- p) Exibir os dados dos funcionários, dos seus coordenadores e dos acompanhantes dos
-- coordenadores.







