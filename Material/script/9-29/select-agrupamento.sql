use cadastro;

select * from cursos;

/*Usar este comando, tem a saida similar a se fosse usado distinct*/
select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

/*Selecionando a carga, quantos cursos tem na tabela cursos, onde o totaulas seja igual a 30 e agrupando
o resultado por carga*/
select carga, count(nome) from cursos
where totaulas = '30'
group by carga;

/*Não quero que apareça qualquer cursos que passaram pela aquelas etapas, quero apenas os que TEM o contador maior
que 3*/
select carga, count(nome) from cursos
where totaulas = '30'
group by carga
having count(nome) > 3;

/*Agrupar por ano, contabilizando a quantidade de cursos por ano e ordenando pelo contador(da para ordernar por uma coluna)*/
select ano, count(*) from cursos
group by ano
order by count(*);

/*Se eu querer agrupar apenas quem tiver o contador miaor ou igual a cinco?*/
select ano, count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*) desc;


/*No que foi agrupado, so vai ser exibido os registros que tem o ano maior que 2013*/
select ano, count(*) from cursos
where totaulas > '30'
group by ano
having ano > '2013'
order by count(*) desc;

/*Selecionando os anos da tabela de cursos, onde o totaulas seja maior que trinta, agrupando essa seleção por 
ano e dentro só será exibido quem tem ano acima de 2013, ordenando do maior contador para o menor*/

/*Juntando dois selects*/

select avg(carga) from cursos;

/*Ex mal otimizado*/
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > 36.3;

/*Otimizado*/
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);

/* "Selecionando a carga e a quantidade de cursos da tabela cursos, onde o ano seja acima de 2015. Agrupando o resultado por
carga, sendo exibido apenas quais cursos tem a carga acima da média." */