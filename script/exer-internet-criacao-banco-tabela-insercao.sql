create database exercicioInt
default character set UTF8
default collate utf8_general_ci;

use exercicioInt;

create table professor (
prof_numero int not null auto_increment,
prof_nome varchar(30),
prof_rua varchar(30),
prof_cidade varchar(30),
primary key(prof_numero)
)default charset = utf8;

create table aluno (
aluno_numero int not null auto_increment,
aluno_nome varchar(30),
aluno_rua varchar(30),
aluno_cidade varchar(30),
primary key(aluno_numero)
)default charset = utf8;

insert into professor
(prof_numero, prof_nome, prof_rua, prof_cidade)
values
(default, 'João Jose', '103', 'Palmas');

select * from aluno;

insert into professor
(prof_numero, prof_nome, prof_rua, prof_cidade)
values
(default, 'Maria José', '201', 'Palmas');

/* Inserir direto*/
insert into professor values
(default, 'José Ricardo', '1106', 'Porto Nacional'),
(default, 'Manuela', '120', 'Araguaína'),
(default, 'Bruno', '1003', 'Porto Nacional'),
(default, 'Luciana', '100', 'Miracema'),
(default, 'Paulo', '150', 'Palmas'),
(default, 'Lual', '1006', 'Paraíso'),
(default, 'Antonio Marcos', '170', 'Araguaína');

insert into aluno values
(default, 'Tiago Matheus Junior', '210', 'Palmas'),
(default, 'Luciana Gomes', '202', 'Palmas'),
(default, 'João Mateus', '2300', 'Gurupi'),
(default, 'José Silva', '1024', 'Paraíso'),
(default, 'Juraci', '106', 'Miranorte'),
(default, 'Paulo', '101', 'Goianorte'),
(default, 'Adriana Calcanhoto', 'rua Alvorada', 'Paraíso'),
(default, 'Rosane', 'rua das flores', 'Guarai'),
(default, 'Mara', 'rua das águas', 'Porto Nacional'),
(default, 'Julia', 'rua de madeira', 'Paraíso'),
(default, 'Julia', 'rua de madeira', 'Palmas');
