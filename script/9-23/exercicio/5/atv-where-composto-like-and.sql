/*exer5: "Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 Kg"*/

use cadastro;

select * from gafanhotos
where sexo = 'M'
order by nome;

select nome, nacionalidade from gafanhotos
where sexo = 'M' AND nome like '%_Silva%' AND nacionalidade != 'Brasil' AND peso < '100';