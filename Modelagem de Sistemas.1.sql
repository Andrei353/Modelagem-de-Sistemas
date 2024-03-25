create table alunos(
id int not null primary key,
nome varchar(250),
sobrenome varchar(250),
idade int,
email varchar(50)
);

create table pessoa(
id int primary key  not null auto_increment,
nome varchar(250),
telefone varchar(11)
);

insert into alunos(id,nome,sobrenome,idade,email) values(1,'ANDREI','VIEIRA',19,'RUSHAAAA@BABABA.COM');
insert into alunos(id,nome,sobrenome,idade,email) values(2,'RENATO','BARRETO',11,'NOVINHO@DELAS.COM');
insert into pessoa(nome,telefone) values('CAMILE','7777-7777');


select*from alunos;
select*from pessoa;
update alunos 
set nome='Olavo'
where id = 2;

delete from alunos
where id = 2;

CREATE TABLE Cliente (
  idCliente INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Nome VARCHAR(255)  NOT NULL  ,
  Endereco VARCHAR(255)  NOT NULL    ,
PRIMARY KEY(idCliente));

CREATE TABLE Apolice (
  idApolice INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Cliente_idCliente INTEGER UNSIGNED  NOT NULL  ,
  Valor FLOAT  NOT NULL    ,
PRIMARY KEY(idApolice)  ,
INDEX Apolice_FKIndex1(Cliente_idCliente));

CREATE TABLE Carro (
  idCarro INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Apolice_idApolice INTEGER UNSIGNED  NOT NULL  ,
  Registro VARCHAR(50)  NOT NULL  ,
  Marca VARCHAR(50)  NOT NULL    ,
PRIMARY KEY(idCarro)  ,
INDEX Carro_FKIndex1(Apolice_idApolice));

CREATE TABLE Acidente (
  idAcidente INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Carro_idCarro INTEGER UNSIGNED  NOT NULL  ,
  Data_hora DATETIME  NULL  ,
  Local_2 VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idAcidente)  ,
INDEX Acidente_FKIndex1(Carro_idCarro));