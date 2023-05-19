use cadastro;

/*media das alturas*/
select avg(altura) from gafanhotos;

describe gafanhotos;

/*"Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100Kg e 
que estão acima da média de altura de todos os cadastrados"*/

select nome, peso, altura from gafanhotos
where peso > '100' 
group by altura
having altura > (select avg(altura) from gafanhotos);