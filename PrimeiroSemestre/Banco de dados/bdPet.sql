CREATE DATABASE pet;

USE pet;


CREATE TABLE cliente(
	idCliente INT PRIMARY KEY AUTO_INCREMENT
    ,nomeCliente VARCHAR(100) NOT NULL
    ,telefoneFixo CHAR(8)
    ,telefoneC CHAR(9)
);

CREATE TABLE endereco(
	idEndereco INT PRIMARY KEY AUTO_INCREMENT
    ,logradouro VARCHAR(100)
	,bairro VARCHAR(100)
	,cidade VARCHAR(100)
	,estado VARCHAR(100)
    ,numero INT 
	,fkCliente INT, FOREIGN KEY(fkCliente) REFERENCES cliente(idCliente)
);


CREATE TABLE pet(
	idPet INT PRIMARY KEY AUTO_INCREMENT
	,tipoPEt VARCHAR(100)
    ,nomePet VARCHAR(100)
    ,racaPet VARCHAR(100)
    ,pesoPet DECIMAL(4,2) CHECK( pesoPet > 0)
	,fkCliente INT, FOREIGN KEY(fkCliente) REFERENCES cliente(idCliente)
)AUTO_INCREMENT = 101;



-- -Inserir dados nas tabelas, de forma que exista mais de um tipo de animal diferente, e que
-- exista algum cliente com mais de um pet cadastrado.


INSERT INTO cliente(nomeCliente, telefoneFixo, telefoneC)
		VALUES('Lirian Julia','23349190','834013254')
			,('Juan Almeida', '24345120', '974131542')
			,('Gabriela Martins', '45678912', '912345678');
            
INSERT INTO  endereco(logradouro, bairro,cidade, estado, numero, fkCliente)
		VALUES('Rua Gabriel Alberto', 'mooca', 'SP', 'SP',13,3)
			,('Rua joao augusto', 'liberdade', 'SP', 'SP',13,1)
			,('Rua dos pinheiros', 'penha', 'SP', 'SP',13,2);
            
            
INSERT INTO pet(tipoPet, nomePet, racaPet, pesoPet, fkCliente)
		VALUES('Gato','Mel','Azul russo', 54,3)
			,('Gato','Mera','Balinês', 40,1)
			,('Cachorro','chopper','Shih-tzu', 60,2)
			,('Cachorro','Tina','Dobermann', 80,2)
			,('Cachorro','Luna','Pastor-alemão', 70,1)
			,('gato','Ragnar','Ragdoll', 30,3);
            



-- - Exibir todos os dados de cada tabela criada, separadamente.

	SELECT * FROM endereco;
	SELECT * FROM cliente;
	SELECT * FROM pet;


-- - Altere o tamanho da coluna nome do cliente.

	ALTER TABLE cliente MODIFY nomeCliente VARCHAR(160);
    DESC cliente;

-- - Exibir os dados de todos os pets que são de um determinado tipo (por exemplo: cachorro).

	SELECT * FROM pet WHERE tipoPet LIKE 'gato';

-- - Exibir apenas os nomes e os pesos dos pets.

	SELECT nomePet, pesoPet FROM pet;

-- - Exibir os dados dos pets ordenados em ordem crescente pelo nome.

	SELECT * FROM pet ORDER BY nomePet;

-- - Exibir os dados dos clientes ordenados em ordem decrescente pelo bairro.

	SELECT * FROM cliente, endereco WHERE idCliente = fkCliente ORDER BY bairro DESC;

-- - Exibir os dados dos pets cujo nome comece com uma determinada letra.

	SELECT * FROM pet WHERE nomePet LIKE 'm%';

-- - Exibir os dados dos clientes que tenham um determinado sobrenome.

	SELECT * FROM cliente WHERE nomeCliente LIKE '%Martins';

-- - Alterar o telefone de um determinado cliente.

		UPDATE cliente SET telefoneFixo = '45536418' WHERE idCliente = 1;


-- - Exibir os dados dos clientes para verificar se alterou.

		SELECT * FROM cliente;


-- - Exibir os dados dos pets e dos seus respectivos donos.

	SELECT pet.*, cliente.nomeCliente, cliente.TelefoneFixo, cliente.TelefoneC, endereco.* FROM pet, cliente, endereco 
    WHERE cliente.idCliente = pet.fkCliente AND cliente.idCliente = endereco.fkCliente;

-- - Exibir os dados dos pets e dos seus respectivos donos, mas somente de um determinado cliente (informar o nome do cliente na consulta).
	SELECT pet.*, cliente.nomeCliente, cliente.TelefoneFixo, cliente.TelefoneC, endereco.* FROM pet, cliente, endereco 
    WHERE cliente.idCliente = pet.fkCliente AND cliente.idCliente = endereco.fkCliente AND nomeCliente LIKE 'Gabriela';



-- - Exibir os dados dos pets e dos seus respectivos donos, mas somente de um determinado cliente (informar um dos telefones do cliente na consulta).
	SELECT pet.*, cliente.nomeCliente, cliente.TelefoneFixo, cliente.TelefoneC, endereco.* FROM pet, cliente, endereco 
    WHERE cliente.idCliente = pet.fkCliente AND cliente.idCliente = endereco.fkCliente AND telefoneC LIKE '974131542';


-- - Excluir algum pet.

		DELETE FROM pet WHERE idPet  = 103; 



-- - Exibir os dados dos pets para verificar se excluiu.
	SELECT * FROM pet;
-- - Excluir as tabelas.

	DROP TABLE pet;
    DROP TABLE endereco;
    DROP TABLE cliente;
    




