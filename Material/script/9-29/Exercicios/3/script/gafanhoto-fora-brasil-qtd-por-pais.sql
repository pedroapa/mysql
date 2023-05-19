use cadastro;

describe gafanhotos;

/*"Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o páis de origem e o total de pessoas nascidas lá.
 Só nos interessam os países que tiveram mais de 3 gafanhotos com essa nacionalidade"*/
 
select nome, nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) > 3;