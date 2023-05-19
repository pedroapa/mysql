use cadastro;

insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmo', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para inciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'Mysql', 'Bancos de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítimicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018') ,
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');  

update cursos
set nome = 'HTML5'
where idcurso = '1';

/*Na teoria para modificar mais de um registro na mesma linha 
update cursos
set nome = 'PHP'
set ano = '2015'
where idcurso = '4'; */

/*Comandando certo */
update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

/*Corrigir linha 5 do curso de java com limiador*/
update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;

/*Update para exemplificar como update pode ser perigoso */
update cursos
set ano = '2050', carga = '800'
where ano = '2018';

/*safe update ESTA DESATIVADO! 
tirar a proteção de errar com update
edit > preference > SQL Editor > (em baixo tem um check) safe Updates (atualizaçoes seguras) */

/*atualizando com update perigoso, mas usando limit para se proteger */
update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit 1;

/*Deletando um registro */
delete from cursos
where idcurso = '8';

/* agora apagar os dois ultimos registros que sobraram de uma só vez*/
delete from cursos
where ano = '2050'
limit 2;

select * from cursos;     