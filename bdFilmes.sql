Create database Filmes_bd;
Use Filmes_bd;

Create table Ator(
 id_ator int primary key auto_increment,
 nome varchar (20) not null
);

Create table Filme(
id_filme int primary key auto_increment,
titulo varchar(20) not null
);

Create table Participacao(
id_participacao int primary key auto_increment,
id_ator int,
id_filme int,
foreign key (id_ator) references Ator (id_ator),
foreign key (id_filme) references Filme (id_filme)
);