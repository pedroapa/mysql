use gt;

show tables;

describe ponto_tur;
describe pais;

/*Inserção de dados, atualização e exclusão de linha(registro) */

INSERT INTO pais 
(nome, continente, codigo)
VALUES
('Brasil', 'América', 'BRA'),
('Índia', 'Ásia', 'IDN'),
('China', 'Ásia', 'CHI'),
('Japão', 'Ásia', 'JPN');

SELECT * FROM pais;

INSERT INTO estado
(nome, sigla)
VALUES
('Maranhão', 'MA'),
('São Paulo', 'SP'),
('Santa Catarina', 'SC'),
('Rio de Janeiro', 'RJ');

SELECT * FROM estado;

INSERT INTO cidade
(nome, populacao)
values
('Sorocaba', 700000),
('Déli', 26000000),
('Xangai', 22000000),
('Tóquio', 38000000);

SELECT * FROM cidade;

INSERT INTO ponto_tur
(nome, tipo)
VALUES
('Quinzinho de Barros', 'Instituição'),
('Parque Estadual do Jalapão', 'Atrativo'),
('Torre Eiffel', 'Atrativo'),
('Fogo de Chão', 'Restaurante');

/*Aqui gerou um erro porque no banco no enum não tem a opção de 'Restaurante',
ele pediu algo que não estava na estrutura. */
SELECT * FROM ponto_tur;

		/*ETAPA 2 Manipulação*/
/*Após isso, você deve testar algumas alterações, como colocar
como “Atrativo” o primeiro ponto turístico da lista e alterar o segundo
país (Índia) para ter o código “IND”. */

UPDATE ponto_tur
SET tipo = 'Atrativo'
WHERE id = 1;

SELECT * FROM ponto_tur;

UPDATE pais
SET codigo = 'IND'
WHERE id = 2;

SELECT * FROM pais;

/*Por ultimo a instrução DELETE, que vai dar exclusão a primeira cidade da lista*/
DELETE FROM cidade
WHERE id = 1
LIMIT 1; 

SELECT * FROM cidade;

/*OBS: Acabei esquecendo de limitar as mudanças, porque no livro não a fez. Quais que tem foi eu que coloquei  */

/*Agora vamos deletar mais uma linha especifica da tabela ponto_tur */
DELETE FROM ponto_tur
WHERE id = 4
LIMIT 1;

SELECT * FROM ponto_tur;

/*		FINALIZADO
agora salvar um drump de backup para continuar modificando no futuro*/
drop database gt;
