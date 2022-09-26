/*exer6: "Qual é a maior altura entre gafanhotos homens que moram no Brasil?"*/

use cadastro;

select * from gafanhotos
where sexo = 'M'
order by altura desc;

select max(altura) from gafanhotos
where sexo = 'M' AND nacionalidade = 'Brasil';