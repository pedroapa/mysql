/*exer4: "Uma lista com os dados de todas mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J"*/

use cadastro;

select * from gafanhotos
order by nome;

select * from gafanhotos
where sexo = 'F' AND nacionalidade = 'Brasil' AND nome like 'J%';

