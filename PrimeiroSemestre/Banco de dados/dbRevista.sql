CREATE DATABASE Revista;

USE Revista;

CREATE TABLE Revista(
	idRevista INT PRIMARY KEY AUTO_INCREMENT
    ,nome VARCHAR(40)
    ,categoria VARCHAR(30)
);

INSERT INTO revista(nome)
VALUES ('Superinteressante')
	   ,('Veja')
       ,('National Geographic');
       
      
   --     
-- • Exibir todos os dados da tabela.
	SELECT * FROM revista;


-- • Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente.
	
    UPDATE revista SET categoria = 'Científica' WHERE idRevista = 1;
    UPDATE revista SET categoria = 'Lista' WHERE idRevista = 2;
    UPDATE revista SET categoria = 'Geografia' WHERE idRevista = 3;
    
     SELECT * FROM revista;
    
-- • Insira mais 3 registros completos.

	INSERT INTO revista (nome, categoria)
		VALUES ('Forbes', 'Economia')
			  ,('The Economist','Economia')
			  ,('Time','Notícias');
        
        

-- • Exibir novamente os dados da tabela.
  SELECT * FROM revista;
    
-- • Exibir a descrição da estrutura da tabela.

	DESC revista;

-- • Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.

	ALTER TABLE revista MODIFY categoria VARCHAR(40);
	

-- • Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria.
	DESC revista;


-- • Renomeie a coluna nome para nomeRevista.
	
    ALTER TABLE revista RENAME COLUMN nome TO nomeRevista;

-- • Exibir novamente os dados da tabela, para verificar se alterou o nome da coluna.

	SELECT * FROM revista;

-- • Acrescentar a coluna periodicidade à tabela, que é varchar(15). Periodicidade é a informação se a revista é semanal, mensal, quinzenal, etc.

	ALTER TABLE revista ADD periodicidade VARCHAR(15);

-- • Exibir os dados da tabela.
	SELECT * FROM revista;
    
-- • Atualize a tabela, preenchendo os valores da coluna periodicidade. Exiba novamente os dados da tabela.

	UPDATE revista SET periodicidade = 'Mensal' WHERE idRevista = 1;
	UPDATE revista SET periodicidade = 'semanal' WHERE idRevista = 2;
	UPDATE revista SET periodicidade = 'Mensal' WHERE idRevista = 3;
	UPDATE revista SET periodicidade = 'Quinzenal' WHERE idRevista = 4;
	UPDATE revista SET periodicidade = 'Semanal' WHERE idRevista = 5;
	UPDATE revista SET periodicidade = 'semanal' WHERE idRevista = 6;
    
    	SELECT * FROM revista;

-- • Insira os dados de uma nova revista, com todos os seus dados. Exiba novamente os  dados da tabela.

		INSERT INTO revista(nomeRevista, categoria, periodicidade)
		VALUES ('Istoé', 'notícias', 'semanal');
        
        SELECT * FROM revista;
	
-- • Excluir a coluna periodicidade da tabela. Exibir novamente os dados da tabela.

		ALTER TABLE revista DROP periodicidade;
        
        SELECT  * FROM revista;
        
        

-- Criar a tabela Editora, nesse mesmo banco de dados, com os campos: idEditora (int e chave primária), nomeEditora (varchar, tamanho 40), 
-- dataFund (tipo date – representa a data da fundação da editora – podem inventar). idEditora terá o valor inicial 1000 e será incrementado automaticamente pelo sistema)


	CREATE TABLE Editora (
		idEditora INT PRIMARY KEY AUTO_INCREMENT
        ,nomeEditora VARCHAR(40)
        ,dataFund DATE
    )AUTO_INCREMENT = 1000;



-- • Inserir dados na tabela Editora


	INSERT INTO Editora (nomeEditora, dataFund)
		 VALUES ('Editora Abril','1950-05-18' )
			  ,('Forbes publishing','1917-08-25')
			  ,('The Economist Group','1843-2-14')
			  ,('Time Inc','1922-11-28')
			  ,('Editora Três','1972-07-07');
          
          SELECT * FROM Editora;


-- Acrescentar a coluna fkEditora na tabela Revista, com o tipo int e de forma que essa
-- coluna seja uma chave estrangeira que referencia a tabela Editora

			ALTER TABLE revista ADD fkEditora int;
			ALTER TABLE revista ADD FOREIGN KEY(fkEditora) REFERENCES Editora(idEditora);
			
-- • Atualizar os dados da coluna fkEditora

	
	UPDATE revista SET fkEditora = 1000 WHERE idRevista = 1;
	UPDATE revista SET fkEditora = 1004 WHERE idRevista = 2;
	UPDATE revista SET fkEditora = 1000 WHERE idRevista = 3;
	UPDATE revista SET fkEditora = 1001 WHERE idRevista = 4;
	UPDATE revista SET fkEditora = 1004 WHERE idRevista = 5;
	UPDATE revista SET fkEditora = 1003 WHERE idRevista = 6;
        

-- • Exibir os dados da tabela Revista

		SELECT * FROM revista;

-- • Exibir os dados das revistas e das editoras correspondentes

select * from revista, editora where fkEditora = idEditora;

-- • Exibir os dados das revistas e das editoras, porém apenas de uma editora.
select * from revista, editora where fkEditora = idEditora AND idEditora = 1000;




















