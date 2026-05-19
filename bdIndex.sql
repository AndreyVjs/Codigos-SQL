create database bdIndex;
use bdIndex;

CREATE TABLE alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    cidade VARCHAR(100),
    idade INT
);

-- 1. Criar índice na coluna nome
CREATE INDEX idx_nome
ON alunos(nome);

-- 2. Criar índice na coluna cidade
CREATE INDEX idx_cidade
ON alunos(cidade);

-- 3. Criar índice composto nas colunas (cidade, idade)
CREATE INDEX idx_cidade_idade
ON alunos(cidade, idade);

-- 4. Criar índice UNIQUE para a coluna email
CREATE UNIQUE INDEX idx_email_unique
ON alunos(email);

-- 5. Listar todos os índices da tabela alunos
SHOW INDEX FROM alunos;

-- 6. Remover o índice da coluna nome
DROP INDEX idx_nome
ON alunos;

-- 7. Remover o índice UNIQUE da coluna email
DROP INDEX idx_email_unique
ON alunos;

-- 8. Consulta utilizando o índice da coluna cidade
SELECT *
FROM alunos
WHERE cidade = 'São Paulo';

-- Verificar uso do índice com EXPLAIN
EXPLAIN
SELECT *
FROM alunos
WHERE cidade = 'São Paulo';

-- 9. Consulta utilizando o índice composto (cidade, idade)
SELECT *
FROM alunos
WHERE cidade = 'São Paulo'
AND idade = 20;

-- Verificar uso do índice composto com EXPLAIN
EXPLAIN
SELECT *
FROM alunos
WHERE cidade = 'São Paulo'
AND idade = 20;