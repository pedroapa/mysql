		/*Inserir um tabela nova e criar um relacionamento com chave primaria*/
/*um novo requisito, que é o de determinados países terem mais de um idioma, embora um seja determinado como o idioma oficial.*/
use gt;

show tables;


CREATE TABLE IF NOT EXISTS linguagemPais (
id INT(11) NOT NULL AUTO_INCREMENT,
codigoPais INT(11),
linguagem VARCHAR(30) NOT NULL DEFAULT '',
oficial ENUM('Sim', 'Não') NOT NULL DEFAULT 'Não',
PRIMARY KEY(id)
)default charset = utf8;

describe linguagemPais;
describe pais;

/*A coluna “codigoPais” será a referência para sua tabela pai, nomeada “pais”.*/

ALTER TABLE linguagemPais
ADD CONSTRAINT FK_linguagemPais
FOREIGN KEY(codigoPais) REFERENCES pais(id);

drop database gt;
