use cadastro;

select ano, nome, carga  from cursos
order by ano, nome;

select * from cursos;

select * from cursos
where ano = '2016'
order by nome;

show tables;

describe cursos;

select  nome, descricao, ano  from cursos
where ano != '2016'
order by ano, nome;

select nome, ano from cursos
where ano between '2014' and '2019'
order by ano desc, nome;

select nome, descricao, ano from cursos
where ano in ('2014', '2016', '2019')
order by ano;

select nome, carga, totaulas from cursos
where carga > 35 AND totaulas < 30
order by nome;
