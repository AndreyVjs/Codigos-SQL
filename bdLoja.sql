create database bdLoja;
use bdLoja;

create table cliente(

id int primary key auto_increment,
nome varchar(50),
email varchar(100),
idade int

);

insert into cliente(nome,email,idade) values 
('Ricardão','ricardao@gmail.com',34),
('Abraão','abraao@gmail.com',63),
('Moisés','moises@gmail.com',34);

select * from cliente;
update cliente set idade = 54 where id = 1;
update cliente set nome = 'Ramisés', email = 'ramises@gmail.com' where id = 3;
update cliente set idade = idade + 1;
update cliente set email = 'email@gmail.com' where idade <25;
select * from cliente;