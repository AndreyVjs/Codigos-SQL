CREATE DATABASE IF NOT EXISTS banco;
USE banco;

CREATE TABLE pessoa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT,
    email VARCHAR(100)
);

INSERT INTO pessoa (nome, idade, email) VALUES
('João Silva', 30, 'joao@email.com'),
('Maria Souza', 25, 'maria@email.com'),
('Carlos Lima', 40, 'carlos@email.com'),
('Ana Costa', 22, 'ana@email.com'),
('Pedro Rocha', 35, 'pedro@email.com');

alter table pessoa add column telefone varchar(20);
alter table pessoa modify idade SMALLINT; 
alter table pessoa change nome nome_completo varchar (150);
alter table pessoa drop column email; 

