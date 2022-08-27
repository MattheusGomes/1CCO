CREATE DATABASE Exercicio13;

USE Exercicio13;

CREATE TABLE Departamento(
-- falta fkGerente
	idDepto INT PRIMARY KEY
    ,nomeDepto VARCHAR(100)
    ,fkGerente INT
    ,dataInicioGer DATE
);

-- falta configurar o fkSupervisor
CREATE TABLE Funcionario(
	idFunc INT PRIMARY KEY
    ,nomeFunc VARCHAR(30)
    ,salario DECIMAL(7,2)
    ,sexo CHAR(1)
    ,fkSupervisor INT
    ,dataNasc DATE
    ,fkDepto INT, FOREIGN KEY(fkDepto) REFERENCES Departamento(idDepto)
);

CREATE TABLE Projeto(
	idProj INT PRIMARY KEY
    ,nomeProj VARCHAR(100)
    ,localProj VARCHAR(100)
    ,fkDepto INT, FOREIGN KEY(fkDepto) REFERENCES Departamento(idDepto)

);

CREATE TABLE FuncProj(
	fkFunc INT, FOREIGN KEY(fkFunc) REFERENCES Funcionario(idFunc)
    ,fkProj INT, FOREIGN KEY(fkProj) REFERENCES Projeto(idProj)
    ,horas DECIMAL(3,1)
    ,PRIMARY KEY(fkFunc, fkProj)
);

INSERT INTO Departamento(idDepto, nomeDepto, fkGerente, dataInicioGer)
	VALUES(105, 'Pesquisa', 2, '2008-05-22')
		,(104, 'Administração', 7, '2015-01-01')
		,(101, 'Matriz', 8, '2001-06-19');
        
        
INSERT INTO Funcionario(idFunc,nomeFunc, salario, sexo,fkSupervisor,dataNasc,fkDepto)
	VALUES(1,'Joao Silva',3500,	'm',2,'1985-01-09',105)
		,(2,'Fernando Wong',4500,'m',8,'1975-12-08',105)
		,(3,'Alice Sousa',2500,'f',7,'1988-01-19',104)
		,(4,'Janice Morais',4300,'f',8,'1970-06-20',104)
		,(5,'Ronaldo Lima',3800,'m',1,'1982-09-15',105)
		,(6,'Joice Leite',2500,'f',1,'1992-07-31',105)
		,(7,'Antonio Pereira',2500,'m',4,'1989-03-29',104)
		,(8,'Juliano Brito',5500,'m',NULL,'1957-11-10',101);

INSERT INTO Projeto(idProj,nomeProj,localProj,fkDepto)
		VALUES(1,'Produto X','Santo André',105)
			 ,(2,'Produto Y','Itu',105)
			 ,(3,'Produto Z','São Paulo',105)
			 ,(10,'Informatização','Mauá ',104)
			 ,(20,'Reorganização','São Paulo',101)
			 ,(30,'Benefícios','Mauá ',104);
             

INSERT INTO FuncProj(fkFunc, fkProj, horas)
		VALUES(1,1,32.5)
			,(1,2,7.5)
			,(5,3,40.0)
			,(6,1,20.0)
			,(6,2,20.0)
			,(2,2,10.0)
			,(2,3,10.0)
			,(2,10,10.0)
			,(2,20,10.0)
			,(3,30,30.0)
			,(3,10,10.0)
			,(7,10,35.0)
			,(7,30,5.0)
			,(4,30,20.0)
			,(4,20,15.0)
			,(8,20,NULL);
            
		ALTER TABLE Departamento ADD FOREIGN KEY(fkGerente) REFERENCES Funcionario(idFunc);
		ALTER TABLE Funcionario ADD FOREIGN KEY(fkSupervisor) REFERENCES Funcionario(idFunc);


	-- 	1. Exibir os dados de cada tabela separadamente (confira se os dados foram inseridos
	-- corretamente).
    
			SELECT * FROM Funcionario;
			SELECT * FROM Departamento;
			SELECT * FROM Projeto;
			SELECT * FROM funcProj;
		
    
    
	-- 2. Inserir mais o seguinte funcionário na tabela Funcionario:
	-- idFunc: null, nomeFunc: Cecília Ribeiro, salario: 2800, sexo: f, fkSupervisor: null,
	-- dataNasc: 1980-04-05, fkDepto: 104
	-- Conseguiu inserir? Por que?
		
        INSERT INTO Funcionario(idFunc,nomeFunc, salario, sexo,fkSupervisor,dataNasc,fkDepto)
			VALUES(null,'Cecília Ribeiro', 2800,'f',NULL,'1980-04-05',104);
            
		-- Não é possivel realizar o insert porque o valor da chave primaria não pode ser NULL.
            
		
	-- 3. Inserir mais o seguinte funcionário na tabela Funcionario:
	-- idFunc: 3, nomeFunc: Alice Sousa, salario: 2800, sexo: f, fkSupervisor: 4, dataNasc:
	-- 1980-04-05, fkDepto: 104
	-- Conseguiu inserir? Por que?

        INSERT INTO Funcionario(idFunc,nomeFunc, salario, sexo,fkSupervisor,dataNasc,fkDepto)
			VALUES(3,'Alice Sousa', 2800,'f', 4,'1980-04-05',104);
		-- Não é possivel inserir dois dados com a chave primaria igual em um tabela.
        
        
        
--         4. Inserir mais o seguinte funcionário na tabela Funcionario:
			-- idFunc:9, nomeFunc: Cecília Ribeiro, salario: 2800, sexo: f, fkSupervisor: 4, dataNasc:
			-- 1980-04-05, fkDepto: 107
			-- Conseguiu inserir? Por que?
            
            
        INSERT INTO Funcionario(idFunc,nomeFunc, salario, sexo,fkSupervisor,dataNasc,fkDepto)
			VALUES(9,'Cecília Ribeiro', 2800,'f', 4,'1980-04-05', 107);
            
            -- Não é possivel realizar o insert porque o fkDepto esta com um valor inexistente. 
            
            
			-- 5. Inserir mais o seguinte funcionário na tabela Funcionario:
			-- idFunc:9, nomeFunc: Cecília Ribeiro, salario: 2800, sexo: f, fkSupervisor: 4, dataNasc:
			-- 1980-04-05, fkDepto: 104
			-- Conseguiu inserir? Por que?
            
                   
        INSERT INTO Funcionario(idFunc,nomeFunc, salario, sexo,fkSupervisor,dataNasc,fkDepto)
			VALUES(9,'Cecília Ribeiro', 2800,'f', 4,'1980-04-05', 104);
            
		-- Sim foi possivel realizar o insert porque a o valor da chave primaria ainda não estava sendo utilizada
        -- e o fkDepto esta referenciando um id existente da tabela de departamento.
        
		-- 6. Excluir a tupla (registro) da tabela FuncProj, em que fkFunc=3 e fkProj = 10. Conseguiu
		-- excluir? Por que?
        
			DELETE FROM FuncProj WHERE fkFunc = 3 AND fkProj = 10;
            
            -- Sim foi possivel excluir, porque nenhuma tabela estava recebendo os dados dessa tabela.
        
		-- 7. Excluir a tupla da tabela Funcionario, em que idFunc=4. Conseguiu excluir? Por que?
        
				DELETE FROM Funcionario WHERE idFunc = 4;
                
			-- Não é possivel excluir os dados desse funcionario porque ha outras tabelas que estão 
            -- referenciando o seu id.
        
        
			-- 8. Excluir a tupla da tabela Funcionário, em que idFunc=2. Conseguiu excluir? Por que?
            
            	DELETE FROM Funcionario WHERE idFunc=2;
                
			-- Não é possivel apagar os dados do funcionario de id 2 porque seu id esta sendo referenciado por outras tabelas.
            
			-- 9. Alterar o salário do Funcionário com idFunc=3 para 2800. Conseguiu alterar? Por que?
            
				UPDATE Funcionario SET salario = 2800 WHERE idFunc=3;
                
                -- Sim foi possivel alterar o salario do funcionario de id 3, ja que o campo salario existia e o id estava certo.
            
			-- 10. Alterar o fkDepto do Funcionário com idFunc=3 para 101. Conseguiu alterar? Por que?
            
				UPDATE Funcionario SET fkDepto = 101 WHERE idFunc=3;
                
                -- Sim foi possivel fazer a alteração porque o idDepto = 101 existe na tabela de departamento.
            
			-- 11. Alterar o fkDepto do Funcionário com idFunc=3 para 107. Conseguiu alterar? Por que?
            
            UPDATE Funcionario SET fkDepto = 107 WHERE idFunc=3;
            
            -- Não foi possivel realizar a alteração porque o fkDepto = 107 não existe como idDepto na tabela de departamento
            
			-- 12. Exibir a data de nascimento e o salário do funcionário João Silva.
            
                SELECT dataNasc, salario FROM Funcionario WHERE nomeFunc = 'Joao Silva';
                
            
			-- 13. Exibir uma lista apenas dos salários de todos os funcionários.
            
                SELECT salario FROM Funcionario;
            
			-- 14. Exibir uma lista apenas dos salários distintos de todos os funcionários.
            
				SELECT DISTINCT(salario) FROM Funcionario;
            
			-- 15. Exibir os dados dos funcionários ordenados pelo nome.
            
				SELECT * FROM Funcionario ORDER BY nomeFunc;
            
			-- 16. Exibir os dados dos funcionários ordenados pelo salário, de forma decrescente.
            
				SELECT * FROM Funcionario ORDER BY salario DESC;
            
			-- 17. Exibir os dados dos funcionários que tenham salário entre 2000 e 4000.
            
				SELECT * FROM Funcionario WHERE salario >= 2000 AND salario <= 4000;
            
			-- 18. Exibir os nomes e os salários dos funcionários cujos nomes começam com a letra ‘J’.
				
				SELECT nomeFunc, salario FROM Funcionario WHERE nomeFunc LIKE 'J%';
            
			-- 19. Exibir os nomes e os salários dos funcionários cujos nomes terminam com a letra ‘a’.
            
					SELECT nomeFunc, salario FROM Funcionario WHERE nomeFunc LIKE '%a';
            
			-- 20.Exibir os nomes dos funcionários que tem a letra ‘n’ como terceira letra do nome.
            
            	SELECT nomeFunc FROM Funcionario WHERE nomeFunc LIKE '__n%';
            
			-- 21. Exibir os nomes e as datas de nascimento dos funcionários cujos nomes tenham a letra
			-- ‘S’ como 5ª letra de trás para frente.
            
            	SELECT nomeFunc, dataNAsc FROM Funcionario WHERE nomeFunc LIKE '%S____';
            
            
			-- 22. Exibir os dados dos funcionários que trabalham no departamento Pesquisa.
            
				SELECT Funcionario.* FROM Funcionario JOIN Departamento ON idDepto = fkDepto WHERE nomeDepto = 'Pesquisa'; 
            
			-- 23. Exibir os dados dos funcionários que trabalham no departamento Pesquisa e que
			-- tenham salário acima de 3500.
            
            SELECT Funcionario.* FROM Funcionario JOIN Departamento ON idDepto = fkDepto WHERE nomeDepto = 'Pesquisa' 
            AND salario >3500; 
  --           
--             24.Exibir os dados dos funcionários que trabalham no departamento Pesquisa e que
			-- tenham o nome com inicial ‘J’.
            
             SELECT Funcionario.* FROM Funcionario JOIN Departamento ON idDepto = fkDepto WHERE nomeDepto = 'Pesquisa' 
            AND nomeFunc LIKE 'J%'; 
            
			-- 25. Exibir o idFunc e o nome de cada funcionário, juntamente com o idFunc e o nome do seu
			-- supervisor. Faça com que o título da coluna seja “idFuncionario” para funcionário e
			-- “idSupervisor” para o id do supervisor.
            
			
				SELECT idFuncionario.idFunc AS 'ID Funcionario', idFuncionario.nomeFunc AS 'Nome Funcionario'
                ,idSupervisor.idFunc AS 'ID Supervisor' ,idSupervisor.nomeFunc AS 'Nome Supervisor'
                FROM FUNCIONARIO AS idFuncionario, FUNCIONARIO AS idSupervisor
				WHERE idFuncionario.fkSupervisor = idSupervisor.idFunc;
            
			-- 26. Exibir para cada projeto localizado em São Paulo, o idProj do projeto, o número do
			-- departamento que o controla, o nome e a data de nascimento do gerente do
			-- departamento.
            
            SELECT * FROM departamento;
            SELECT * FROM funcionario;
            SELECT * FROM projeto;
            SELECT * FROM funcProj;
            
            SELECT idProj, idDepto, nomeFunc, dataNasc  FROM Projeto, funcionario, departamento WHERE idFunc = fkGerente 
				AND projeto.fkDepto = idDepto AND localProj = 'São Paulo';
            
			-- 27. Exibir o idFunc e o nome do funcionário, o projeto e o nome do projeto em que trabalha,
			-- e a quantidade de horas que trabalha nesse projeto.
            
            SELECT idProj, nomeFunc, horas FROM Projeto, funcionario, funcProj WHERE idFunc = fkFunc 
            AND idProj = FkProj; 
            
			-- 28. Exibir os nomes dos funcionários que nasceram antes de 1980.
            -- VERIFICAR SE TA CERTO
            desc Funcionario;
            SELECT nomeFunc FROM Funcionario WHERE dataNasc < '1980-01-01';
            
			-- 29. Exibir a quantidade de salários diferentes que existem na empresa.
            
            SELECT DISTINCT(COUNT(salario)) AS 'Salarios Diferentes' FROM Funcionario;
            
			-- 30.Exibir a quantidade de locais diferentes de projeto.
            
            SELECT DISTINCT(COUNT(localProj)) AS 'Locais diferentes' FROM projeto;
            
			-- 31. Exibir o salário médio da empresa e a soma dos salários.
            
            SELECT ROUND(AVG(salario),2), SUM(salario) FROM Funcionario;
            
			-- 32. Exibir o menor e o maior salário da empresa.
            
            SELECT MAX(salario) AS 'Maior Salario', MIN(salario) AS 'Menor Salario' FROM funcionario;
            
			-- 33. Exibir o idDepto, o salário médio e a soma do salário de cada departamento (agrupado
			-- por departamento)
            
            SELECT idDepto, ROUND(AVG(salario),2) as 'Salario Medio', SUM(salario) AS 'Soma' FROM funcionario, departamento
            WHERE idDepto = fkDepto GROUP BY idDepto;
            
			-- 34. Exibir o idDepto, o menor e o maior salário de cada departamento (agrupado por
			-- departamento).
            
            SELECT idDepto, MAX(salario) as 'Maior Salario', MIN(salario) AS 'Menor Salario' FROM funcionario, departamento
            WHERE idDepto = fkDepto GROUP BY idDepto;
            
		-- 35. Inserir mais os seguintes funcionários na tabela Funcionário:
		-- idFunc nomeFunc salario sexo idSupervisor dataNasc fkDepto
		-- 10 José da Silva 1800 m 3 2000-10-12 null
		-- 11 Benedito Almeida 1200 m 5 2001-09-01 null
        
                    
        INSERT INTO Funcionario(idFunc,nomeFunc, salario, sexo,fkSupervisor,dataNasc,fkDepto)
			VALUES(10,'José da Silva', 1800	,'m', 3,'2000-10-12', null)
				,(11, 'Benedito Almeida', 1200	,'m', 5,'2001-09-01', null);
        
        
        
		-- 36. Inserir mais o seguinte departamento na tabela Departamento:
		-- idDepto nomeDepto idGerente dataInicioGer
		-- 110 RH 3 2018-11-10
        
			 INSERT INTO Departamento(idDepto, nomeDepto, fkGerente, dataInicioGer)
			VALUES(110,'RH',3,'2018-11-10');
			
        
        
		-- 37. Exibir os funcionários e seus departamentos correspondentes, inclusive os que não
		-- estão alocados em nenhum departamento.
        
			SELECT * FROM Funcionario LEFT JOIN Departamento ON idDepto = fkDepto;
       
        
            
		-- 38. Exibir os funcionários e seus departamentos correspondentes, inclusive os
		-- departamentos que não tem funcionários alocados.
        
         SELECT * FROM Funcionario RIGHT JOIN Departamento ON idDepto = fkDepto;
        
		-- Depois, desenhe o modelo lógico no MySQL Workbench correspondente a esta
		-- implementação.
            
            






