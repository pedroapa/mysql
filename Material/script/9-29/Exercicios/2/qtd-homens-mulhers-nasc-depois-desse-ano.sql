/*"Quantos gafanhotos homens e quantas mulheres nasceram após 01/jan/2005?"*/

use cadastro;

describe gafanhotos;

select * from gafanhotos;

select count(*) from gafanhotos
where nascimento > '2005-1-1'
group by sexo
having sexo = 'M';

select (select count(*) from gafanhotos group by sexo having sexo = 'M') from gafanhotos;


/* "Selecione contabilizando a quantidade de homens da tabela gafanhotos"*/
select count(*) from gafanhotos
where sexo = 'M';