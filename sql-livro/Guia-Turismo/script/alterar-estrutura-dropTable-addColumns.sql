use gt;

show tables;

describe ponto_tur;

ALTER TABLE ponto_tur 
ADD coordenada GEOMETRY;

DROP TABLE IF EXISTS coordenada;

/*alterar a tabela “Países”, adicionando uma nota de 0 a 10 com o nível de interesse para o turista*/
alter table pais
add column nota int default 0;

alter table pais
modify column nota int(2) default '0';

select * from pais;
describe pais;

/*Como ja tem registro, não posso usar insert into para colocar nota*/

update pais
set nota = '8'
where id = '2'
limit 1;

/*tabela “Cidades”, incluindo uma lista com os três melhores restaurantes.*/
alter table cidade
add column mel_restaranteA varchar(30) null, add column mel_restauranteB varchar(30) null, add column mel_restauranteC varchar(30) null;

describe cidade;

drop database gt;