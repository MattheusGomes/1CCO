CREATE DATABASE kash;

USE kash;

CREATE TABLE Registros(
idRegistro INT PRIMARY KEY AUTO_iNCREMENT
,dataHorario DATETIME
,consumoCPU DECIMAL(5,2)
,consumoDisco DECIMAL(5,2)
,consumoRAM DECIMAL(5,2)
);

select * from Registros;

