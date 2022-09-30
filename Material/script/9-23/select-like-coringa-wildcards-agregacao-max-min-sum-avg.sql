use cadastro;

select * from cursos
where nome like 'PH%P_';

SELECT * FROM CURSOS
where nome like 'P__T%';

select * from gafanhotos
where nome like '%silva';


update cursos
set nome = 'PáOO'
where idcurso = '9'
limit 1;

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select count(*) from cursos;

select count(*) from cursos
where carga > 40;

/*Max(campo)*/
select * from cursos
order by carga;

select max(carga) from cursos;

/*Outro exemplos*/
select * from cursos
where ano = '2016';

select max(totaulas) from cursos
where ano = '2016';

select nome, min(totaulas) from cursos
where ano = '2016';

/*Somar*/
select sum(totaulas) from cursos
where ano = '2016';

/*Media*/
select avg(totaulas) from cursos
where ano = '2016';