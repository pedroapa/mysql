		/*Depois da criação do DER e modelo logico, vamos agora construir o BD fisicamente  */
        
/*Criação do banco de dados*/
CREATE DATABASE IF NOT EXISTS gt
DEFAULT CHARACTER SET = utf8
DEFAULT COLLATE = utf8_general_ci;

use gt;

/*Agora criação da tabela e sua estrutura*/
CREATE TABLE IF NOT EXISTS pais (
id INT(11) NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL DEFAULT '',
continente ENUM('Ásia', 'Europa', 'América', 'África', 'Oceania', 'Antártida') NOT NULL DEFAULT 'América',
codigo CHAR(3) NOT NULL DEFAULT '',
PRIMARY KEY(id)
)default charset = utf8;

CREATE TABLE IF NOT EXISTS estado (
id INT(11) NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL DEFAULT '',
sigla CHAR(2) NOT NULL DEFAULT '',
PRIMARY KEY(id)
)default charset = utf8;

CREATE TABLE IF NOT EXISTS cidade (
id INT(11) NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL DEFAULT '',
populacao INT(11) NOT NULL DEFAULT '0',
PRIMARY KEY(id)
)default charset = utf8;

CREATE TABLE IF NOT EXISTS ponto_tur (
id INT(11) NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL DEFAULT '',
populacao INT(11) NOT NULL DEFAULT '0',
tipo ENUM('Atrativo', 'Serviço', 'Equipamento', 'Infraestrutura', 'Instituição', 'Organização'),
publicado ENUM('Não', 'Sim') NOT NULL DEFAULT 'Não',
PRIMARY KEY(id)
)default charset = utf8;

CREATE TABLE IF NOT EXISTS coordenada (
latitude FLOAT(10,6),
longitude FLOAT(10,6)
)default charset = utf8;

show tables;