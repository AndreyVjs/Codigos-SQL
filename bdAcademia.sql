Create database dbAcademia;
use dbAcademia;

CREATE TABLE Alunos 
( 
 nome_aluno VARCHAR (20),  
 cpf_aluno INT PRIMARY KEY NOT NULL UNIQUE,  
 enedereco_aluno VARCHAR (20) NOT NULL,  
 celular_aluno INT NOT NULL,  
 peso_aluno FLOAT,  
 altura_aluno FLOAT,  
 doenca_aluno BOOLEAN NOT NULL  
); 

CREATE TABLE Professores 
( 
 nome_professor VARCHAR (20) NOT NULL,  
 cpf_professor INT PRIMARY KEY,  
 endereco_professor VARCHAR (20) NOT NULL,  
 celular_professor INT NOT NULL,  
 horario_trabalho VARCHAR (20) NOT NULL,  
 atuacao_curso VARCHAR (20) NOT NULL
); 

CREATE TABLE Curso 
( 
 id_curso INT PRIMARY KEY NOT NULL AUTO_INCREMENT,  
 nome_curso VARCHAR (20) NOT NULL,  
 horario_curso VARCHAR (20) NOT NULL  
); 

CREATE TABLE Matricula 
( 
 professor INT NOT NULL,  
 aluno INT NOT NULL,  
 horario TIME NOT NULL,  
 custo FLOAT NOT NULL,  
 matricula INT PRIMARY KEY,  
 curso INT NOT NULL,
 FOREIGN KEY(aluno) REFERENCES Alunos (cpf_aluno),
 FOREIGN KEY(curso) REFERENCES Curso (id_curso)
); 