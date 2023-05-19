/*"Quantos gafanhotos homens e quantas mulheres nasceram após 01/jan/2005?"*/

use cadastro;

describe gafanhotos;

select * from gafanhotos;

select count(*) from gafanhotos
where nascimento > '2005-1-1'
group by sexo
having sexo = 'M';

select distinct (select count(*) from gafanhotos group by sexo having sexo = 'M'),
 (select count(*) from gafanhotos group by sexo having sexo = 'F') from gafanhotos;

select 15 from gafanhotos;

/* "Selecione contabilizando a quantidade de homens da tabela gafanhotos"*/
select count(*) from gafanhotos
where sexo = 'M' && nascimento > '2005-1-1';

/*Outra interpretação
 Contar os dois juntos*/

select count(*) from gafanhotos
where nascimento > '2005-1-1'
group by sexo;