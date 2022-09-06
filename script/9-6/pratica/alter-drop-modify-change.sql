use exercicioint;

/* Criei tabela com alguns defeitos*/
create table diciplina(
disc_nome varchar(30),
curo_nome varchar(30),
trabalho_ze char(30)
)default charset = utf8;

describe diciplina;
describe disciplina;

/* corrigi nome da tabela */
alter table diciplina
rename to disciplina;

/* coloquei uma coluna identificadora que estava faltando */
alter table disciplina
add column disc_codigo int first;

/*Fiz ela virar chave primaria */
alter table disciplina
modify column disc_codigo int not null first;

/* agora transforma-lo em chave primaria*/
alter table disciplina
add primary key(disc_codigo);

/* Mudar nome da coluna escrita errado, era curso e não curo*/
alter table disciplina
change column curo_nome curso_nome varchar(30); 

/*Excluir um coluna  */
alter table disciplina
drop column trabalho_ze;

/*Adiconar a coluna faltante */
alter table disciplina
add qtd_aulas integer;

/*Exercitando colocar coluna em um lugar especifico*/
/* apagando coluna do meio */
alter table disciplina
drop column curso_nome;

/*Adiconando a coluna atras do disc_nome*/
alter table disciplina
add column curso_nome varchar(30) after disc_nome;