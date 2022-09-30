/*exer8: "Qual é o menor peso entre as gafanhotos mulheres que nasceram fora do Brasil e entre 01/JAN/1990 e 31/DEZ/2000 "*/

use cadastro;

select * from gafanhotos
where sexo = 'F'
order by nascimento;

select min(peso) from gafanhotos
where sexo = 'F' AND nacionalidade != 'Brasil' AND nascimento between '1990-1-1' AND '2000-12-31';