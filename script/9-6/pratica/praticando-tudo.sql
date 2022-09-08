use exercicioint;
/*Deletei porque vou criar de novo */
drop table disciplina;

/*Criei outra tabela */
create table if not exists cliente(
codigo int not null,
nome varchar(20) not null, 
sobreNome varchar(30),
data date not null,
idade int,
cpf int,
sexo varchar(10),
primary key(codigo)
)default charset = utf8;


/*Agora vou por algumas colunas com not null */
alter table cliente
modify column idade int not null;

alter table cliente
modify column cpf int not null;

alter table cliente
modify column sexo varchar(10) not null;

/*Trocar um campo de nome */
alter table cliente
change column data data_nasc date not null;

/*Inserindo a coluna Salario */
alter table cliente
add column salario float not null;

/*Inserir alguns dados */
insert into cliente
(codigo, nome, sobreNome, data_nasc, idade, cpf, sexo, salario)
values
('01', 'Leo', 'Pires', '10/10/1980', '34', '123456789', 'M', '540,00'),
('02', 'Leoncio', 'Silva', '01/05/1982', '32', '987654321', 'M', '1.500,00'),
('03', 'Leandro', 'Souza', '30/12/1960', '54', '654987321', 'M', '2.000,00'),
('04', 'Ana', 'Felix', '25/11/1962', '52', '321456789', 'F', '2.300,00');

/*Acho por eu ter usado a virgula no salario deu erro. Vou excluir essa coluna/campo
e criar outro usando ponto */

alter table cliente
drop column salario;

/*Inserindo a coluna Salario */
alter table cliente
add column salario float not null;

describe cliente;

/*Tentando inserir em apenas uma coluna */
insert into cliente
(salario)
values
('540'),
('1500'),
('2000'),
('2300');

/*Não deu certo e no erro diz algo sobre chave primaria, por eu ja ter inserido alguns dados 
na chave primaria, ele não esta deixando eu colocar. Ele pode ter inserido tudo null e eu
teria que alterar o dado, algo que não aprendi ainda. Faz sentido porque só ta faltando 
a informação do salario */

insert into cliente
(codigo, nome, sobreNome, data_nasc, idade, cpf, sexo, salario)
values
('01', 'Leo', 'Pires', '10/10/1980', '34', '123456789', 'M', '540');
/*Tentei por esse comando corrigido e não deu certo. No meu nivel só da para excluir
as colunas e cria-las de novo e inserir de uma vez certo */

/* apagando as colunas*/
alter table cliente
drop codigo;

alter table cliente
drop nome;

alter table cliente
drop sobreNome;

alter table cliente
drop data_nasc;

alter table cliente
drop idade;

alter table cliente
drop cpf;

alter table cliente
drop sexo;

alter table cliente
drop salario;
/*Ele puxou a minha orelha, estranhou por eu ter apagado todas as colunas/campos
disse que eu podia ter apagado a tabela inteira que seria apenas 1 comando */

/*Criando as colunas/campos de novo */
alter table cliente
add column codigo int not null;

alter table cliente
add column nome varchar(20) not null;

alter table cliente
add column sobreNome varchar(30);

alter table cliente
add column data_nasc date not null default '1900-1-1';

alter table cliente
add column idade int;

alter table cliente
add column cpf int;

alter table cliente
add column sexo varchar(10);

alter table cliente
add column salario float not null;

/*Inserindo os dados corretamente e em todas as tabelas */
insert into cliente
(codigo, nome, sobreNome, data_nasc, idade, cpf, sexo, salario)
values
('01', 'Leo', 'Pires', '10/10/1980', '34', '123456789', 'M', '540'),
('02', 'Leoncio', 'Silva', '01/05/1982', '32', '987654321', 'M', '1500'),
('03', 'Leandro', 'Souza', '30/12/1960', '54', '654987321', 'M', '2000'),
('04', 'Ana', 'Felix', '25/11/1962', '52', '321456789', 'F', '2300');

/*Deu ruim, cadastro 4 registro com a data que coloquei default no data_nasc
agora vou excluir a coluna e vou criar de novo mas sem not null pra ver que resolve 
dessa vez vou excluir a tabela inteira */

drop table cliente;

/*Criando de novo */
create table if not exists cliente(
codigo int not null,
nome varchar(20) not null, 
sobreNome varchar(30),
data date not null,
idade int,
cpf int,
sexo varchar(10),
salario float,
primary key(codigo)
)default charset = utf8;

/*Preciso acrescentar nasc na coluna date */
alter table cliente
change column data data_nasc date not null;

/*Inserindo */
insert into cliente
(codigo, nome, sobreNome, data_nasc, idade, cpf, sexo, salario)
values
('01', 'Leo', 'Pires', '1980-10-10', '34', '123456789', 'M', '540'),
('02', 'Leoncio', 'Silva', '1982-05-01', '32', '987654321', 'M', '1500'),
('03', 'Leandro', 'Souza', '1960-12-30', '54', '654987321', 'M', '2000'),
('04', 'Ana', 'Felix', '1962-11-25', '52', '321456789', 'F', '2300');

/*Deu ruim dessa vez porque esqueci de mudar o nome da coluna. Vou tentar de novo */
create table if not exists cliente(
codigo int not null,
nome varchar(20) not null, 
sobreNome varchar(30),
/*data_nasc date not null default '1900-1-1',*/
idade int,
cpf int,
sexo varchar(10),
salario float,
primary key(codigo)
)default charset = utf8;

/*PROBLEMA: Não estava cadastrando a data de nascimento, quebrei a cabeça e entendi que deu
ruim porque os dados a serem cadastrados não estavam formatados de forma correta para entrar
no banco */

/*Deu certo e depois eu testei de deixar a data de nascimento obrigatorio e deu certo
o problema é quando colocamos essa coluna depois e vai completar tudo null sozinho. Vou
testar isso */

alter table cliente
add column data_nasc date not null default '1900-1-1' after sobreNome;

/*Teste  */
alter table cliente
add column data_nasc date not null  after sobreNome;


/*Conclusao 
Eu consegui criar a coluna/campo depois de ja ter colocado outras colunas e não apareceu erro
por ter usado not null*/

describe cliente;


select * from cliente;