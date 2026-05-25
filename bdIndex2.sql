create database bdIndex2;
use bdIndex2;

CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    departamento VARCHAR(100),
    cargo VARCHAR(100),
    salario DECIMAL(10,2)
);

CREATE INDEX idx_nome
ON funcionarios(nome);

CREATE INDEX idx_departamento
ON funcionarios(departamento);

CREATE INDEX idx_departamento_cargo
ON funcionarios(departamento, cargo);

CREATE UNIQUE INDEX idx_email_unique
ON funcionarios(email);

SHOW INDEX FROM funcionarios;

DROP INDEX idx_nome ON funcionarios;

DROP INDEX idx_email_unique ON funcionarios;

EXPLAIN
SELECT *
FROM funcionarios
WHERE departamento = 'TI';

SELECT *
FROM funcionarios
WHERE departamento = 'TI';

EXPLAIN
SELECT *
FROM funcionarios
WHERE departamento = 'TI'
AND cargo = 'Desenvolvedor';

SELECT *
FROM funcionarios
WHERE departamento = 'TI'
AND cargo = 'Desenvolvedor';