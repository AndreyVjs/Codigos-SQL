create database alunos;
use alunos;

CREATE TABLE alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT
);


INSERT INTO alunos (id, nome, idade)
VALUES (1, 'Ana Silva', 18);

INSERT INTO alunos (id, nome, idade)
VALUES (2, 'Carlos Souza', 20);

INSERT INTO alunos (id, nome, idade)
VALUES (3, 'Mariana Oliveira', 19);

alter table alunos add column email varchar(150);
alter table alunos add column data_nacimento date;
alter table alunos modify column idade tinyint;
alter table alunos change nome nome_completo varchar(150);
alter table alunos drop column idade;

alter table alunos modify nome_completo varchar(150) not null;
alter table alunos add constraint unique_email unique (email);

alter table alunos rename to estudantes;
alter table estudantes modify email varchar(150) after nome_completo;

alter table estudantes drop index unique_email;