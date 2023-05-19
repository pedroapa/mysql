/*exer9: "Quantas gafanhotos mulheres têm mais de 1.90m de altura?"*/

use cadastro;

select * from gafanhotos
where sexo = 'F'
order by altura desc;

select count(*) from gafanhotos
where sexo = 'F' AND altura > '1.90';